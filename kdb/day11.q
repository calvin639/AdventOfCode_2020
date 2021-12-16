input:read0 hsym `$"C:/Users/cwright/Desktop/Work/GIT/AdventOfCode_2020/questions/input11.txt";
flr:{[a;b]"."};
free:{[i;map]change:0=sum busy[map;]peach around+\:i;$[change;"#";"L"]};
occ:{[i;map]change:sum busy[map;]peach around+\:i;$[4<=change;"L";"#"]};
seatType:".#L"!(flr;occ;free);
around:((-1;-1);(-1;0);(-1;1);(0;-1);(0;1);(1;-1);(1;0);(1;1));
busy:{[map;i]"#"=map[i 0;i 1]};
change:{[i]change:sum busy peach around+\:i;$[4<=change;"#";"L"]};
check:{[map;i]seat:{y[x 0;x 1]}[i;map];f:seatType seat;f[i;map]};
checkRow:{[map;row]check[map;]each row};
allocate:{[map]inds:til[count map],/:\:til count first map;checkRow[map;]each inds};
day11.1:sum sum each "#"=/:allocate/[input];

//Part 2
shorten:{if[all 0<=x;if[93>x 1;if[98>x 0;:x]]]};
shortenRow:{[row]row:shorten each row;row where all each not null each row};
shortenAll:{[mtx]shortenRow each mtx};
busy2:{[map;ind]"#"=first(map[;]'[ind 0;ind 1])except"."};
free2:{[i;map]change:0=sum raze busy2[map;]peach shortenAll i+/:/:flip around2;$[change;"#";"L"]}
occ2:occ2:{[i;map]change:4<sum raze busy2[map;]peach shortenAll i+/:/:flip around2;$[change;"L";"#"]};
seatType:".#L"!(flr;occ2;free2);
