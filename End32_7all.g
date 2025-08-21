Nrg:=[];
Read("Combin.g");
for i1 in [1.. k] do
Nrg2:=[];
Read("End32_a.g");
Nrg2:=Flat(Nrg2);;
Add(Nrg,Nrg2);
Print("\n","Size(Nrg2)=",Size(Nrg2)," ","Size(Nrg)=",Size(Nrg),"\n");
#Read("FormLib32_7.txt");
Print("\n");
Print("The CASE i1=", i1," ","is completed","\n");
od;
