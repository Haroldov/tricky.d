import std.stdio;


/* Function: tricky_check */
/* WINNING CONDITIONS */
/* --------------------- */
char tricky_check(char[3][3] new_board)
{
	int i = 0;

	for (i = 0; i < 3; i++)
	{
		if (new_board[i][0] == new_board[i][1] && new_board[i][1] == new_board[i][2] &&
				 new_board[i][0] == new_board[i][2])
		{
			return (new_board[i][0]);
		}
		if (new_board[0][i] == new_board[0][i] && new_board[1][i] == new_board[2][i] &&
				new_board[i][0] == new_board[2][i])
		{
			return (new_board[0][i]);
		}
	}
	if (new_board[0][0] == new_board[1][1] && new_board[0][0] == new_board[2][2] &&
			new_board[1][1] == new_board[2][2])
	{
		return (new_board[0][0]);
	}
	if (new_board[2][0] == new_board[1][1] && new_board[2][0] == new_board[0][2] &&
			new_board[1][1] == new_board[0][2])
	{
		return (new_board[2][0]);
	}
	return ('0');
}

/* Function: tricky_fill */
/* FILL BOARD WITH PLAYS */
/* --------------------- */
void tricky_fill(char plays, char** new_board)
{
}

/* Function: tricky_show */
/* SHOWS ALL BOARD */
/* --------------------- */
void tricky_show(char[3][3] board)
{
	writef("\t____________________\n");
	writef("\t|%c", board[0][0]);
	writef("\t|%c", board[0][1]);
	writef("\t|%c\n", board[0][2]);

	writef("\t|%c", board[1][0]);
	writef("\t|%c", board[1][1]);
	writef("\t|%c\n", board[1][2]);

	writef("\t|%c", board[2][0]);
	writef("\t|%c", board[2][1]);
	writef("\t|%c\n", board[2][2]);

	writef("Hello, World!\n");
	writef("mark = %c\n", board[2][2]);
	writef("positions = %s\n", board);

}

/* Function: tricky_main */
/* --------------------- */
void main()
{
	char plays = 1;
	char[3][3] board;
	int winner = 0;

	board[0][0] = '0';
	board[0][1] = '0';
	board[0][2] = '0';

	board[1][0] = '0';
	board[1][1] = 'x';
	board[1][2] = 'x';

	board[2][0] = '0';
	board[2][1] = '0';
	board[2][2] = '0';
	winner = tricky_check(board);

	writef("The winner is %d\n", winner - '0');
	tricky_show(board);

	board[0][0] = '1';
	board[0][1] = '0';
	board[0][2] = '2';

	board[1][0] = '0';
	board[1][1] = '2';
	board[1][2] = '0';

	board[2][0] = '2';
	board[2][1] = '0';
	board[2][2] = '0';
	winner = tricky_check(board);
	
	writef("The winner is %d\n", winner - '0');

	board[0][0] = '1';
	board[0][1] = '1';
	board[0][2] = '1';

	board[1][0] = '0';
	board[1][1] = '0';
	board[1][2] = '0';

	board[2][0] = '0';
	board[2][1] = '2';
	board[2][2] = '2';
	winner = tricky_check(board);
	
	writef("The winner is %d\n", winner - '0');
}
