input:read0 hsym `$"C:/Users/cwright/Desktop/Work/GIT/AdventOfCode_2020/questions/input11.txt";
flr:{[a;b]"."};
free:{[i;map]change:0=sum busy[map;]peach around+\:i;$[change;"#";"L"]};
occ:{[i;map]change:sum busy[map;]peach around+\:i;$[4<=change;"L";"#"]};
seatType:".#L"!(flr;occ;free);
busy:{[map;i]"#"=map[i 0;i 1]};
change:{[i]change:sum busy peach around+\:i;$[4<=change;"#";"L"]};
check:{[map;i]seat:{y[x 0;x 1]}[i;map];f:seatType seat;f[i;map]};
checkRow:{[map;row]check[map;]each row};
allocate:{[map]inds:til[count map],/:\:til count first map;checkRow[map;]each inds};
day11.1:allocate/[input];

//Part 2
