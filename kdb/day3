input:read0 hsym `$"C:/Users/cwright/Desktop/Work/GIT/AdventOfCode_2020/questions/input3.txt";
h:count input; //This is amount of moves you will have to take
w:3*h; //Number of steps to the right (width)
input:w#/:input; //Expend map correct amount
cords:flipn (til h)*/:1 3;
day3.1:sum"#"={input[x 0;x 1]}each cords;

//This solution is more dynamic and doesn't require re-sizing the map
direct:((1;1);(3;1);(5;1);(7;1);(1;2))
tree:{[cordX;cordY]"#"=last cordY#input cordX-1}
sumTrees:{[dir]cords:getCords dir;sum {tree[x 0;x 1]}each cords}
getCords:{[dir]steps:(count input)%dir 1;(dir 1;dir 0)*/:til `int$steps};
day3.2:*/[`long$sumTrees each direct];
