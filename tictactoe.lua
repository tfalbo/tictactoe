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

-- Checa se deu velha
function checkTie()
	local flag = true
	for i=1,9 do
		if board[i] == " " then
			flag = false
		end
	end
	return flag
end

-- Checa se alguem ganhou
function checkWin()
-- Confere Horizontais
	if     board[1] == board[2] and board[1] == board[3] then return board[1]
	elseif board[4] == board[5] and board[4] == board[6] then return board[4] 
	elseif board[7] == board[8] and board[7] == board[9] then return board[7] end

-- Confere Verticais
	if     board[1] == board[4] and board[1] == board[7] then return board[1] 
	elseif board[2] == board[5] and board[2] == board[8] then return board[2] 
	elseif board[3] == board[2] and board[6] == board[9] then return board[3] end

-- Confere Diagonais
	if board[1] == board[5] and board[1] == board[9] then return board[1]
	elseif board[3] == board[5] and board[3] == board[7] then return board[5] end

	return 0
end 


function gameOver()
	local winner = checkWin()
	if(winner ~= 0 and winner ~= " " ) then
		print("O ganhador e " .. winner .. "\n") 
		return true
	elseif checkTie() == true then
		print ("Deu velha!")
		return true
	end
end


-- Principal
io.write("Começa o Jogo da Velha!\n\n")
createBoard()
drawBoard()

while true do
	
	-- Checa se o jogo acabou (alguem ganhou ou deu velha)
	if gameOver() == true then break end	
	play('x') 
	
	-- Checa se o jogo acabou (alguem ganhou ou deu velha)
	if gameOver() == true then break end
	play('o')

end
	
