Print("\n","Comb ",j,"\n");
Y[j]:=[];
Ncom:=[];
for i in [1..li[j]] do
Bi:=[Binomial(t1,Com[j][i][1]),Binomial(t2,Com[j][i][2]),Binomial(t4,Com[j][i][3]),Binomial(t8,Com[j][i][4])];
for i3 in [1..4] do
if Bi[i3]=0 then Bi[i3]:=1;fi;
od;
Add(Ncom,Product(Bi));
od;
Print("\n","NumComb=",Sum(Ncom),"\n");
for i in [1..li[j]] do
Bin:=[Binomial(t1,Com[j][i][1]),Binomial(t2,Com[j][i][2]),Binomial(t4,Com[j][i][3]),Binomial(t8,Com[j][i][4])];
dd:=[];
for k in [1..4] do
d:=Combinations(VV[k],Com[j][i][k]);
Add(dd,d);
od;
for x in dd[1] do
for y in dd[2] do
for z in dd[3] do
for w in dd[4] do
c:=Union(Union(x),Union(y),Union(z),Union(w));
if Size(c)=15 then if Size(ImagesSet(map,c))=15 then if Size(SubsemigroupNC(En,c))=16 then Add(Y[j],c);fi;fi;fi;
od;od;od;od;od;
Print("\n","List(Y,Size)=",List(Y,Size),"\n");