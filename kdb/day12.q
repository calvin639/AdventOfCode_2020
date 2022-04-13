input:read0 hsym `$"C:/Users/cwright/Desktop/Work/GIT/AdventOfCode_2020/questions/input12.txt";
dir:"ENWS";
curDir:first dir;
act:{[s]$[first[s]in dir,"F";move[s];turn[s]]};
loc:0 0;
dirLoc:"ENWS"!((0;1);(1;1);(0;-1);(1;-1));
move:{[s]d:first s;if["F"~d;d:curDir];t:dirLoc d;loc[first t]+:last[t]*"I"$1_s};
turn:{[s]sig:("RL"!-1 1)first s;dir::(`int$(sig*"I"$1_s)%90)rotate dir;curDir::first dir};

act each input;
day12.1:sum abs loc;
0N!"Part 1 answer is: ",string day12.1;

dir:"ENWS";
wayP:(10;1)
curDir:first dir;
dirLoc:"ENWS"!((1;0);(0;1);(-1;0);(0;-1));
act:{[s]
	if[first[s]in dir;wayP::moveW[s];:()];
	if[first[s]in "RL";wayP::turnW[s];:()];
	moveS[s]
	};

moveW:{[s]
	d:("I"$1_s)*dirLoc[first s];
	wayP+d
	};

turnW:{[s]
	turns:rot s;
	wayPLoc:("WE";"SN")'[0 1;0<signum each wayP];
	if[4=turns;:wayP];
	if[2=turns;:neg wayP;];
	if[1=turns;:1 -1*reverse wayP];
	if[3=turns;:-1 1*reverse wayP];
	};	

moveS:{[s]
	num:"I"$1_ s;
	num:num*wayP;
	loc::loc+num;
	}

rot:{[s]
	num:"I"$1_ s;
	num:num%90;
	if["L"=first s;:4-num];
	num
	};
	
loc:0 0;

act each input;
day12.2:sum abs loc;
0N!"Part 2 answer is: ",string day12.2;
