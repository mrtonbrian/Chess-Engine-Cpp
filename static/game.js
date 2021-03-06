var board,
    boardEl = $('#board'),
    game = new Chess(),
    squareToHighlight;

var evals = [];

var count = 1;
var moves = 0;

var playerSide;

var removeGreySquares = function () {
    $('#board .square-55d63').css('background', '');
};

var greySquare = function (square) {
    var squareEl = $('#board .square-' + square);

    var background = '#a9a9a9';
    if (squareEl.hasClass('black-3c85d') === true) {
        background = '#696969';
    }

    squareEl.css('background', background);
};

var removeHighlights = function (color) {
    boardEl.find('.square-55d63')
        .removeClass('highlight-' + color);
};

// do not pick up pieces if the game is over
// only pick up pieces for White
var onDragStart = function (source, piece, position, orientation) {
    if (game.in_checkmate() === true || game.in_draw() === true) {
        return false;
    }
};

var onMouseoverSquare = function (square, piece) {
    // get list of possible moves for this square
    var moves = game.moves({
        square: square,
        verbose: true
    });

    // exit if there are no moves available for this square
    if (moves.length === 0) return;

    // highlight the square they moused over
    greySquare(square);

    // highlight the possible squares for this piece
    for (var i = 0; i < moves.length; i++) {
        greySquare(moves[i].to);
    }
};

var onMouseoutSquare = function (square, piece) {
    removeGreySquares();
};

var onDrop = function (source, target) {
    if (document.getElementById('seconds').value === "") {
        alert("Time To Think Field is Empty");
        return;
    }

    // see if the move is legal
    var move = game.move({
        from: source,
        to: target,
        promotion: 'q' // NOTE: always promote to a queen for example simplicity
    });

    // illegal move
    if (move === null) return 'snapback';
    moves++;
    // highlight white's move
    boardEl.find('.square-' + source).addClass('highlight-white');
    boardEl.find('.square-' + target).addClass('highlight-white');
    // Call To POST Request
    var t = JSON.stringify({
        'time': parseFloat(document.getElementById('seconds').value),
        'pgn': game.pgn()
    });
    document.getElementById("bm").disabled = true;
    document.getElementById("tb").disabled = true;
    cfg.draggable = false;
    $.post("/move", t, function (data, status) {
        game.move(data['move'], {
            sloppy: true
        });
        // console.log('EVAL: ' + data['eval']);
        evals.push(data['eval']);
        // highlight comp's move
        removeHighlights('white');
        removeHighlights('black');
        boardEl.find('.square-' + data['from']).addClass('highlight-black');
        boardEl.find('.square-' + data['to']).addClass('highlight-black'); // update the board to the new position
        board.position(game.fen());
        moves++;
        // Set Eval P Tag
        document.getElementById("eval").innerHTML = data['eval'];
        cfg.draggable = true;
        document.getElementById("bm").disabled = false;
        document.getElementById("tb").disabled = false;
    });
};

var resetBoard = function () {
    document.getElementById("reset").innerHTML = '';
    game.reset();
    board.position(game.fen());
    chooseSide();
}

var onMoveEnd = function () {
    // console.log("MOVEEND");
    boardEl.find('.square-' + squareToHighlight).addClass('highlight-black');
    removeGreySquares();
    if (game.in_checkmate()) {
        if (game.turn() == playerSide) {
            alert("You have lost :(");
        } else {
            alert("You have won :)")
        }

    } else if (game.in_draw()) {
        alert("There is a draw :|");
    }

    if (game.game_over()) {
        var resetButt = document.createElement("input");
        resetButt.type = "button";
        resetButt.value = "Reset!"
        resetButt.onclick = resetBoard;

        document.getElementById("reset").appendChild(resetButt);
        document.getElementById("bm").disabled = false;
    }
};

// update the board position after the piece snap
// for castling, en passant, pawn promotion
var onSnapEnd = function () {
    board.position(game.fen());
};

var cfg = {
    draggable: true,
    position: 'start',
    onDragStart: onDragStart,
    onDrop: onDrop,
    onMoveEnd: onMoveEnd,
    onSnapEnd: onSnapEnd,
    onMouseoutSquare: onMouseoutSquare,
    onMouseoverSquare: onMouseoverSquare
};

var getPlayerTurn = function () {
    if (count - 1 % 2 === 1) {
        return 'w';
    } else {
        return 'b';
    }
}

var undo = function () {
    if (count > 0) {
        removeHighlights();
        if (game.turn() === getPlayerTurn()) {
            game.undo();
            game.undo();
            evals.pop();
            //evals.pop();
        } else {
            game.undo();
            //evals.pop()
        }
        board.position(game.fen());
        var d = evals.pop()
        if (d != undefined) {
            document.getElementById("eval").innerHTML = d;
        } else {
            document.getElementById("eval").innerHTML = '0';
        }
        moves--;
    }
}

var bestMove = function () {
    document.getElementById("bm").disabled = true;
    document.getElementById("tb").disabled = true;
    if (!game.game_over()) {
        if (document.getElementById('seconds').value === "") {
            alert("Time To Think Field is Empty");
            document.getElementById("bm").disabled = false;
            document.getElementById("tb").disabled = false;

            return;
        }
        var t = JSON.stringify({
            'time': parseFloat(document.getElementById('seconds').value),
            'pgn': game.pgn()
        });
        cfg.draggable = false;
        $.post("/move", t, function (data, status) {
            game.move(data['move'], {
                sloppy: true
            });
            // console.log('EVAL: ' + data['eval']);
            document.getElementById("eval").innerHTML = data['eval'];
            removeHighlights('white');
            removeHighlights('black');
            boardEl.find('.square-' + data['from']).addClass('highlight-white');
            boardEl.find('.square-' + data['to']).addClass('highlight-white'); // update the board to the new position
            board.position(game.fen());

            // Get Around Async
            if (!game.game_over()) {
                // Call To POST Request
                var t = JSON.stringify({
                    'time': parseFloat(document.getElementById('seconds').value),
                    'pgn': game.pgn()
                });

                $.post("/move", t, function (data, status) {
                    game.move(data['move'], {
                        sloppy: true
                    });
                    // console.log('EVAL: ' + data['eval']);
                    document.getElementById("eval").innerHTML = data['eval'];
                    // highlight comp's move
                    removeHighlights('white');
                    removeHighlights('black');
                    boardEl.find('.square-' + data['from']).addClass('highlight-black');
                    boardEl.find('.square-' + data['to']).addClass('highlight-black'); // update the board to the new position
                    board.position(game.fen());
                    cfg.draggable = true;
                    document.getElementById("tb").disabled = false;
                    document.getElementById("bm").disabled = false;
                });
            }
        });
    }
}

function setVal() {
    document.getElementById('seconds').value = "0.5";
    document.getElementById('tb').onclick = undo;
    document.getElementById('bm').onclick = bestMove;
}

window.onload = setVal();

board = ChessBoard('board', cfg);

var chooseSide = function () {
    document.getElementById("eval").innerHTML = "";
    if (count % 2 === 1) {
        board.orientation('white');
        playerSide = "w";
    } else {
        board.orientation('black');
        playerSide = "b";
        var t = JSON.stringify({
            'time': parseFloat(document.getElementById('seconds').value),
            'pgn': game.pgn()
        });
        cfg.draggable = false;
        $.post("/move", t, function (data, status) {
            game.move(data['move'], {
                sloppy: true
            });
            // console.log('EVAL: ' + data['eval']);
            document.getElementById("eval").innerHTML = data['eval'];
            // highlight comp's move
            removeHighlights('white');
            removeHighlights('black');
            boardEl.find('.square-' + data['from']).addClass('highlight-black');
            boardEl.find('.square-' + data['to']).addClass('highlight-black'); // update the board to the new position
            board.position(game.fen());
            cfg.draggable = true;
        });
    }
    count++;
}


chooseSide();
