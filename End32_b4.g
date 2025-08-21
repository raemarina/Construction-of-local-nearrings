Print("\n","l=",l," ");
Print("","Binomial(t,l)=",Binomial(t,l),"\n");
r:=Minimum(List(Co,Size));
Print("\n","r=",r,"\n");
Read("Combin.g");
Y:=[];
D:=[];
for i in [1..r-1] do
Y[i]:=[];
od;
VV:=[];
VV[1]:=Filtered(V1,x->Size(x)=1);;
VV[2]:=Filtered(V1,x->Size(x)=2);;
VV[3]:=Filtered(V1,x->Size(x)=4);;
VV[4]:=Filtered(V1,x->Size(x)=8);;
t1:=Size(VV[1]);
t2:=Size(VV[2]);
t4:=Size(VV[3]);
t8:=Size(VV[4]);
for j in [r..l] do
Read("End32_comb_j.g");
od;
Read("End32_b5fin.g");