input
getRow:{[rows;letter] rows:("j"$count[rows]%2)cut rows;l:first letter;rows:$[l="F";first rows;last rows];$[1<count rows;.z.s[rows;1_ letter];:rows]};
getIsle:{[isles;letter]isles("j"$count[isles]%2)cut isles;l:first letter:letter except"BF";isles:$[l="L";first isles;last isles];$[1<count isles;.z.s[isles;1_ letter];:isles]};
getSeat:{[ticket]row:getRow[rows;ticket];isle:getIsle[isles;ticket];(row*8)+isle};
day5.1:max get seat each input;

l:raze asc getSeat each input;
day5.2:1+l where -2= l-next l;

