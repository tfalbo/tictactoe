-- TicTacToe em Lua

-- Cria vetor tabuleiro
function createBoard()
	board = {}
	for i=1,9 do
		board[i] = 0
	end
	return board
end

-- Desenha tabuleiro
function drawBoard(board)
	for i in board do
		print board(i)
	end
end

-- Turno do jogador
function play(piece)
end

-- Checa se alguem ganhou
function checkWin()
end

-- Principal
io.write("Começa o Jogo da Velha!\n\n")
board = createBoard()
drawBoard(board)

