input:asc "J"$/:read0 hsym `$"C:/Users/cwright/Desktop/Work/GIT/AdventOfCode_2020/questions/input10.txt";
day10.1:*/[value count each group deltas input,last[input]+3];

//Part 2
getPos:{[l;i]if[i=last l;:()]res:l i+1+til 3;res:res where not null res;res where 3>=res-l i};
getRes:{if[not count y;:enlist x]x,/:y};
f:{[cur]lCur:$[1=count cur;last last cur;last each cur];pos:getPos[l;]each l?lCur;if[0<type pos;pos:enlist pos];raze getRes'[cur;pos]}
