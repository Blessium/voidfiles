//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"",	"sb-cpu",	1,	1},
	{"",	"sb-memory",	1,	1},
	{"",	"sb-audio",	1,	1},
	{"",	"sb-clock",	60,	1},
	{"",	"sb-date",	1,	1},
};

//Sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char *delim = " | ";
