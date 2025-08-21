N1:=Union(Y);;
n1:=Size(N1);
Print("\n","Size(N1)=",n1,"\n");
Nor:=Normalizer(Aut,A);
St:=Stabilizer(Nor,a);
Print("\n","Size(St)=",Size(St),"\n");
if n1>0 then 
N2:=[];
repeat
M:=[];
for x in St do
d:=OnSets(N1[1],x);
Add(M,d);
M:=Unique(M);
od;
N1:=Difference(N1,M);
Add(N2,M[1]);
until Size(N1)=0;
n2:=Size(N2);
Print("\n","Size(N2)=",n2,"\n");
constructor:=function(ma) return function(x,y) return 
a^f(PreImage(ma,y),PreImage(ma,x));end;end;
LoadPackage("sonata");
no:=1+QuoInt(n2,20);
if n2>0 then 
repeat
d:=MagmaWithOne(Union(A,N2[1]));
ma:=MappingByFunction(d,G,g);
mul:=constructor(ma);
Nr:=ExplicitMultiplicationNearRingNC( G, mul);
Add(Nrg1,Nr);
Remove(N2,1);
if no in DivisorsInt(1+Size(N2)) then Print("\n","Size(N2)=",Size(N2),"\n");fi;
until Size(N2)=0;
else 
Nrg1:=[];fi;fi;