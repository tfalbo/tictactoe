-- TicTacToe em Lua

-- Variáveis Globais

board = {}


-- Preenche vetor tabuleiro
function createBoard()
	for i=1,9 do
		board[i] = ' '
	end
end

-- Desenha tabuleiro
function drawBoard()
	print(board[1] .. " | " .. board[2] .. " | " .. board[3])
        print(board[4] .. " | " .. board[5] .. " | " .. board[6])
        print(board[7] .. " | " .. board[8] .. " | " .. board[9])
end


-- Coloca a peca
function placePiece(coordinate, piece)
	if board[coordinate] == ' ' then
		board[coordinate] = piece
		return true
	else
		return false
	end
end


-- Turno do jogador
function play(piece)
	io.write(piece.. ", aqui está o tabuleiro:\n")
	drawBoard()
	local placed = false
	while placed == false do
		io.write("\nEscolha um lugar de 1 a 9 para colocar a peca\n")
		local coordinate = tonumber(io.read())
		placed = placePiece(coordinate, piece)
		if placed == false then
			io.write("Local já ocupado. Tente outro")
		end
	end
	drawBoard()
	io.write("\n")
end

-- Checa se alguem ganhou
function checkWin()
end

-- Principal
io.write("Começa o Jogo da Velha!\n\n")
createBoard()
drawBoard()

while true do
	
	play('x') 
	play('o')

end
	
