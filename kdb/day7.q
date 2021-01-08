input;
getInd:{asc raze ss[x;"bag"],'0,raze 2+ss[x;]each enlist["no"],string til 10};
tbl:flip `bag`contains!flip getData each input;
getData:{[input]input:getInd[input]cut input;input:input[2*til count input];(first input;raze 1 _ input)};
hasMyBag:{any raze not null each ss[;myBag]each x};
tbl:update hasGold:hasMyBag each contains from tbl;


