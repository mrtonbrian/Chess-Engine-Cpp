#include "Globals.h"
#include "defs.h"
#include "init.h"
#include "board.h"
#include "move.h"
#include "validate.h"
#include "io.h"
#include "perft.h"
#include "makemove.h"
#include "pvtable.h"
#include "misc.h"
#include "movegen.h"
#include "search.h"
#include "hashkey.h"
#include "evaluate.h"
#include "bitboards.h"
#include "attack.h"
#include <cstdio>
#include <cstring>
#include <string>
#include <iostream>

using namespace std;

string STARTFEN = "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1";

void parsePos(const string line, BOARD *pos, Globals &g) {
    int index = 0;
    index += 9;
    if (line.compare(index, 8, "startpos") == 0) {
        parseFEN(STARTFEN.c_str(), pos, g);
    } else {
        if (line.find("fen") != string::npos) {
            index += 4;
            parseFEN(line.substr(index).c_str(), pos, g);
        } else {
            parseFEN(STARTFEN.c_str(), pos, g);
        }
    }

    index = line.find("moves");
    if (index != string::npos) {
        index += 6;
        while (index < line.length()) {
            int move = parseMove(line.substr(index), pos, g);
            if (move == 0) {
                break;
            }
            pos->ply = 0;
            makeMove(pos, move, g);
            while (index != line.length() && line.at(index) != ' ') {
                index++;
            }
            index++;
        }
    }
    //printBoard(pos);
}

//position startpos moves d2d4 d7d5 g1f3 b8c6 c1f4 c8f5 e2e3 e7e6 f1b5 f8d6 f4d6 c7d6 b1c3 a8c8 e1g1 g8f6 f3g5 f6g4 b5c6
void parseGo(const string line, SEARCHINFO *info, BOARD *pos, Globals &g) {
    int depth = -1;
    int movesToGo = 30;
    int movetime = -1;
    int time = -1;
    int increment = 0;
    info->timeset = false;

    int index = 0;
    if (!line.find("infinite")) { ;
    }
    index = line.find("binc");
    if ((index != string::npos) && pos->sideToMove == BLACK) {
        increment = atoi(line.substr(index + 5).c_str());
    }
    index = line.find("winc");
    if ((index != string::npos) && pos->sideToMove == WHITE) {
        increment = atoi(line.substr(index + 5).c_str());
    }

    index = line.find("btime");
    if ((index != string::npos) && pos->sideToMove == BLACK) {
        time = atoi(line.substr(index + 6).c_str());
    }
    index = line.find("wtime");
    if ((index != string::npos) && pos->sideToMove == WHITE) {
        time = atoi(line.substr(index + 6).c_str());
    }

    index = line.find("movestogo");
    if (index != string::npos) {
        movesToGo = atoi(line.substr(index + 10).c_str());
    }

    index = line.find("movetime");
    if (index != string::npos) {
        movetime = atoi(line.substr(index + 9).c_str());
    }

    index = line.find("depth");
    if (index != string::npos) {
        depth = atoi(line.substr(index + 6).c_str());
    }

    if (movetime != -1) {
        time = movetime;
        movesToGo = 1;
    }

    info->starttime = GetTimeMs();
    info->depth = depth;

    if (time != -1) {
        info->timeset = true;
        time /= movesToGo;
        // MAke Sure We Don't Go Over
        time -= 30;
        info->stoptime = info->starttime + time + increment;
    }

    if (depth == -1) {
        info->depth = MAXDEPTH;
    }

    //printf("time:%d start:%d stop:%d depth:%d timeset%d\n", time, info->starttime, info->stoptime, depth, info->timeset);
    searchPosition(pos, info, g);
}

void uciLoop() {
    string line;

    Globals g;
    init(g);

    BOARD pos[1];
    SEARCHINFO info[1];
    initPvTable(pos->pvTable, 64);

    //parsePos("position startpos\n", pos, g);
    //parseGo("go depth 7", info, pos, g);
    //return;

    while (true) {
        cout.flush();
        getline(cin, line);
        if (cin.fail()) {
            cin.clear();
            continue;
        }

        if (line.at(0) == '\n') {
            continue;
        }

        if (!line.compare(0, 7, "isready")) {
            cout << "readyok" << endl;
        } else if (!line.compare(0, 8, "position")) {
            parsePos(line, pos, g);
        } else if (!line.compare(0, 10, "ucinewgame")) {
            parsePos("position startpos\n", pos, g);
        } else if (!line.compare(0, 2, "go")) {
            parseGo(line, info, pos, g);
        } else if (!line.compare(0, 4, "quit")) {
            info->quit = true;
            break;
        } else if (!line.compare(0, 3, "uci")) {
            cout << "id name BRITON" << endl;
            cout << "id author Brian_Ton" << endl;
            cout << "uciok" << endl;
            // Note: Not Real UCI Command, Just For Debug
        } else if (!line.compare(0, 6, "MIRROR")) {
            MirrorTest("mirrorTest.txt", pos, g);
            // Simply Exit
            return;
        }
        if (info->quit) {
            break;
        }
    }
}
