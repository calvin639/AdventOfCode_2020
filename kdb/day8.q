input:read0 hsym `$"C:/Users/cwright/Desktop/Work/GIT/AdventOfCode_2020/questions/input8.txt";
tbl:flip `op`input!flip " " vs/:input;
acc:{[i;v]tot+:"J"$v;i+1};
nop:{[i;v]i+1};
jmp:{[i;v]i+"J"$x};
boot:{[ind]if[ind in inds;ans::tot;:0];@[`.;`op`val;:;value tbl ind];inds,:ind;:get[op][ind;val]};
runBoot:{ind::tot::0;inds::();boot/[ind];ans};
day8.1:runBoot[];

//Part 2
boot2:{[ind]0N!`start;dict:("jmp";"nop")!("nop";"jmp");if[0=count tbl[ind;`op];ans::tot;:0];@[`.;`op`val;:;value tbl ind];newInd:get[op][ind;val];if[newInd in inds;newOp:dict[op];tbl[ind;`op]:newOp;0N!"changed row ",string ind;.z.s ind];inds,:ind;0N! "New Index is ",string newInd ;:newInd}
boot2:{[ind]dict:("jmp";"nop")!("nop";"jmp");if[0=count tbl[ind;`op];ans::tot;:0];@[`.;`op`val;:;value tbl ind];inds,:ind;newInd:get[op]val;if[newInd in inds;newOp:dict[op];tbl[ind;`op]:newOp;0N!"changed row ",string ind;:ind];:newInd};
finBoot:{ind::tot::0;inds::();boot2/[ind];ans};
day8.2:finBoot[];
