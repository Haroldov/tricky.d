import std.stdio;
import std.conv : ConvException;

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
	return (' ');
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
	writef("\t_________________________________________________\n");
	writef("\t|\t%c", board[0][0]);
	writef("\t|\t%c", board[0][1]);
	writef("\t|\t%c\t|\n", board[0][2]);
	writef("\t_________________________________________________\n");

	writef("\t|\t%c", board[1][0]);
	writef("\t|\t%c", board[1][1]);
	writef("\t|\t%c\t|\n", board[1][2]);
	writef("\t_________________________________________________\n");

	writef("\t|\t%c", board[2][0]);
	writef("\t|\t%c", board[2][1]);
	writef("\t|\t%c\t|\n", board[2][2]);
	writef("\t_________________________________________________\n");

}

/* Function: check_table */
/* Return 1 if full otherwise 0 */
/* --------------------- */
int check_table(char[3][3] board)
{
  int i, j;
  for (i = 0; i < 3; i++)
    for (j = 0; j < 3; j++)
    {
      if (board[i][j] == ' ')
	return 0;
    }
  return 1;
}

/* Function: tricky_main */
/* --------------------- */
void main()
{
	char plays = 1;
	char[3][3] board;
	char winner = ' ';
	int x, y, sw = 0;
	char player = 'X';

	writef("\n\t################################################\n");
	writef("\t##################            ##################\n");
	writef("\t################## GAME START ##################\n");
	writef("\t##################            ##################\n");
	writef("\t################################################\n");
	board[0][0] = ' ';
	board[0][1] = ' ';
	board[0][2] = ' ';

	board[1][0] = ' ';
	board[1][1] = ' ';
	board[1][2] = ' ';

	board[2][0] = ' ';
	board[2][1] = ' ';
	board[2][2] = ' ';

	tricky_show(board);

	while (winner == ' ')
	{
	        writef("\nTurn of player: %c", player);
	        writef("\nWrite the coordinates in the format (#row,#column): ");
		try
		  readf!"(%d,%d)\n"(x, y); 
		catch (ConvException e)
		{
		  sw = 1;
		  writef("Bad entry!\n");
		  break;
		}
		writef("\n");
		if (board[x][y] == ' ')
		  board[x][y] = player;
		else
		  {
		    writef("That coordinate is already marked\n");
		    continue;
		  }
		  if (player == 'X')
		    player = 'O';
		  else
		    player = 'X';

		tricky_show(board);
		winner = tricky_check(board);
		if (check_table(board) == 1)
		  break;
	}
	if (sw == 1)
	  return;
	if (check_table(board) != 1)
	  writef("WINNER %c\n", winner);
	else
	  writef("DRAW\n");
}
