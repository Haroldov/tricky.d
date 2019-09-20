import std.stdio;


/* Function: tricky_main */
/* --------------------- */
void tricky_main(char jugada)
{
	char[3][3] tablero;

	tablero[0][0] = '1';
	tablero[0][1] = '2';
	tablero[0][2] = '3';

	tablero[1][0] = '4';
	tablero[1][1] = '5';
	tablero[1][2] = '6';

	tablero[2][0] = '7';
	tablero[2][1] = '8';
	tablero[2][2] = '9';

	writefln("Hello, World!\n");
	writefln("mark = %c\n", tablero[2][2]);
	writefln("positions = %s\n", tablero);

/* WINNING CONDITIONS */

	if (tablero[2][2] == 2) {
		writefln("Player 2 is the winner!!!");
	}
	else {
		writefln("Player 1 is the winner!!!");
	}
}

/* Function: tricky_main */
/* --------------------- */
void main()
{
	char jugada = 1;
	char position = 3;

	tricky_main(jugada);
}
