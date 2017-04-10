# EVTX

## Pré-condições
* Deve haver dois jogadores
* O jogo deve receber, a cada turno uma posição válida do jogador

## Pós-condições
* Um dos jogadores ganha, ou seja, ele completa uma carreira de 3 peças
* O jogo empata ("dá velha"), ou seja, termina com todas as casas ocupadas sem que nenhum dos jogadores complete uma carreira de 3 peças.


### Pré-condições

A parte principal do jogo trata da primeira pré-condição. Ela controla os turnos dos jogadores


A função placePiece(coordinate, piece) controla a segunta pré-condição.
	* Ela checa se a coordenada está vazia, caso afirmativo, a peça é colocada ali e a função retorna true.
	* Caso a coordenada já esteja ocupada, a peça não é colocada ali e a função retorna falso.

### Pós-condições

A função checkWin() trata a primeira pós-condição. Ela confere todas as possíveis carreiras de 3 no tabuleiro do jogo.


A função checkTie() trata a segunda pós-condição. Ela confere se todas as casas estão ocupadas para poder afirmar se houve um empate.
