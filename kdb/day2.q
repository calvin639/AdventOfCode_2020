input:("***";csv)0:  hsym  `$"C:/Users/cwright/Desktop/Work/GIT/AdventOfCode_2020/questions/input2.csv";
tbl:flip `rule`val`pw!input;
update val:first each val from `tbl;
update accept:(within'[({sum x = y}'[val;pw]);string2Long each rule])from `tbl;
day2.1:sum tbl`accept;
update accept2:1=/:sum each val=@'[pw;-1+string2Long each rule] from `tbl;
day2.2:sum tbl`accept2;
