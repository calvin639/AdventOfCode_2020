input:"J"$read0  hsym  `$"C:/Users/cwright/Desktop/Work/GIT/AdventOfCode_2020/questions/input1.csv";
combo:{[n;r]indN:ind:til count n;do[r-1;indN:indN cross ind];indN:indN where r={count distinct x}each indN:distinct asc each indN;n indN};

day1.1:{[l]v:v where 2020=sum each v:combo[l;2];*/[first v]};
day1.2:{[l]v:v where 2020=sum each v:combo[l;3];*/[first v]};
