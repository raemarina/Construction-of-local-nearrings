A:=U1[i2];
Or1:=OrbitsDomain(A,G)[pos(A)];;
L:=Difference(G,Or1);;
L:=Subgroup(G,L);
Print("\n","Size(L)=",Size(L),"\n");
a:=Or1[1];;
L1:=Difference(L,[One(L)]);;
N:=[];
for x in Nil do
d:=Image(x);
c:=Image(x,Or1);
if IsSubset(L,d) then if IsSubset(L1,c) then Add(N,x);fi;fi;
od;
m:=Size(N);
Print(" ","Size(N)=",m,"\n");
g:=const(a);
map:=MappingByFunction(En,G,g);
W1:=[];
repeat
d:=ConjugacyClass(A,N[1]);
if Size(d)<16 then Add(W1,d);fi;
N:=Difference(N,d);
until Size(N)=0;W:=[];
for x in W1 do
d:=AsSet(ListX(x,A,f));
if Size(d)<16 then Add(W,d);fi;
od;
V2:=AsSet(W);;
Print("Size(V2)=",Size(V2)," ");
V3:=[];
for x in V2 do
d:=SubsemigroupNC(En,x);
if Size(ImagesSet(map,d))=Size(d) then Add(V3,x);fi;
od;
Print("Size(V3)=",Size(V3)," ");
V1:=Filtered(V3, x->Size(ImagesSet(map,x))=Size(x));;
Print("Size(V1)=",Size(V1),"\n");
t:=Minimum(15,Size(V1));
S1:=List(V1,Size);
Print("List(V1,Size)=",S1,"\n");
Co:=[];
for i in [1..t] do
d:=Combinations(S1,i);
for x in d do
c:=Sum(x);
if c=15 then Add(Co,x);fi;
od;
od;
if Size(Co)>0 then l:=Maximum(List(Co,Size));
Read("End32_b4.g");
else Print("\n","In the Case i2=",i2," ","no local nearring exists!","\n");fi;