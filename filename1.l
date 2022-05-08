%{
	#include "y.tab.h"
    //Exclude yylval
	extern yylval;
%}

%%
[0-9]+ {
			yylval = atoi(yytext);
			return NUMBER;
			}

[a-zA-Z]+ { return ID; }
[ \t]+		 ; /*Skip spaces in between*/

\n		 { return 0; }
.		 { return yytext[0]; }

%%