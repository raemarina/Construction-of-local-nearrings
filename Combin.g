#LogTo("Combin.txt");
Com1:=[0..15];
Com2:=[0..7];
Com3:=[0..3];
Com4:=[0..1];
Com:=[];
for i in [1..15] do
Com[i]:=[];
for x in Com1 do
for y in Com2 do
for z in Com3 do
for w in Com4 do
if x+2*y+4*z+8*w=15 and x+y+z+w=i then Add(Com[i],[x,y,z,w]);fi;
od;od;od;od;od;
li:=List(Com,Size);
Print("\n","List(Com,Size)=",li,"\n");
