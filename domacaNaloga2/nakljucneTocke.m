(* ::Package:: *)

tocke[n_]:= Module[{znotrajKroga={}, zunajKroga={}},
For[i=1,i<=n, i++;
x=Random[]*2-1;
y=Random[]*2-1;
If[Sqrt[x^2+y^2]<1,AppendTo[znotrajKroga, {x,y}],AppendTo[zunajKroga, {x,y}]]];
{znotrajKroga, zunajKroga}]
