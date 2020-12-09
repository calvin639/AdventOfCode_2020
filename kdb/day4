input:read0 hsym `$"C:/Users/cwright/Desktop/Work/GIT/AdventOfCode_2020/questions/input4.txt";
c:where ~/:["";input];
mand:("byr";"iyr";"eyr";"hgt";"hcl";"ecl";"pid");
allMand:{[pp] (count mand)=sum raze not null each ss[pp;]each mand};
day4.1:sum allMand each raze each (0,c) cut input;

mandT:([]field:d:("byr";"iyr"; "eyr";"hgt";"hcl";"ecl";"pid");rule:({("J"$x)within(1920;2002)};{("J"$x)within(2010;2020)};{("J"$x)within(2020;2030)};{unit:x[-2 -1+count x];$["cm"~unit;("J"$x except unit)within(150;193);("J"$x except unit)within(59;76)]};{("#"=first x)and(all string[1 _x]in .Q.a,string til 10)};{any x~/:("amb";"blu";"brn";"gry";"grn";"hzl";"oth")};{999999999>="J"$x}));
checkValid:{[pp]pp:pp where 0<count each pp:raze" "vs/:pp;all exec @'[rule;val] from mandT lj 1!flip`field`val!flip":"vs/:pp};
day4.2:sum checkValid each ((0,c)cut input);
~
~
~
~
day4[+] [unix] (21:23 09/12/2020)                                      8,0-1 All
Type  :qa!  and press <Enter> to abandon all changes and exit Vim

~
~
~
~
~
~
~
~
~
day4[+] [unix] (21:23 09/12/2020)                                      8,0-1 All
Type  :qa!  and press <Enter> to abandon all changes and exit Vim

