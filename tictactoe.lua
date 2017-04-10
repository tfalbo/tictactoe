-- TicTacToe em Lua

-- Variáveis Globais

board = {}


-- Preenche vetor tabuleiro
function createBoard()
	for i=1,9 do
		board[i] = 0
	end
end

-- Desenha tabuleiro
function drawBoard(board)
	for i,v in ipairs(board) do
		print(v)
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
createBoard()
drawBoard(board)

