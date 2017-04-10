--------------------------------------------------
-- Thaissa Falbo
-- 1421110
-- TicTacToe em Lua
--------------------------------------------------


-- Variáveis Globais
board = {}


function createBoard()
--------------------------------------------------
-- Preenche vetor tabuleiro com espaços em branco
--------------------------------------------------
	for i=1,9 do
		board[i] = ' '
	end
end

function drawBoard()
--------------------------------------------------
-- Desenha tabuleiro
--------------------------------------------------
	print(board[1] .. " | " .. board[2] .. " | " .. board[3])
        print(board[4] .. " | " .. board[5] .. " | " .. board[6])
        print(board[7] .. " | " .. board[8] .. " | " .. board[9])
end


function placePiece(coordinate, piece)
--------------------------------------------------
-- Coloca a peca no tabuleiro
-- Parâmetros: coordenada, peça correspondente 
-- ao jogador
-- Return:
--	true: se a peça for colocada com sucesso
--	false: se a coordenada já estiver ocupada
--------------------------------------------------
	if board[coordinate] == ' ' then
		board[coordinate] = piece
		return true
	else
		return false
	end
end


function play(piece)
--------------------------------------------------
-- Turno do jogador
-- Parâmetro: peça correspondente ao jogador
--------------------------------------------------
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

function checkTie()
--------------------------------------------------
-- Checa se deu empate(velha)
-- Return: 
--	true: caso haja empate
--	false: caso contrário
--------------------------------------------------
	local flag = true
	for i=1,9 do
		if board[i] == " " then
			flag = false
		end
	end
	return flag
end

function checkWin()
--------------------------------------------------
-- Checa se alguem ganhou
-- Return: 
--	caracter correspondente ao ganhador, caso haja
--	0, caso não haja ganhador	
--------------------------------------------------
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
--------------------------------------------------
-- Checa se o jogo acabou
-- Return: 
-- 	true se alguém ganhou ou se o jogo empatou
--	false, caso contrário
--------------------------------------------------
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
--------------------------------------------------
-- Parte principal do jogo
-- Controla o turno entre os jogadores e a condição
-- de fim de jogo
--------------------------------------------------
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
	
