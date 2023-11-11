(* ::Package:: *)

(* ::Input:: *)
(*(*APROKSIMACIJA \[CapitalSHacek]TEVILA \[Pi]*)*)


(* ::Input:: *)
(*Get["C:\\Users\\An\[ZHacek]e\\Documents\\Faks\\3. letnik\\Napredna ra\[CHacek]unalni\[SHacek]ka orodja\\Funkcija za izracun pi.m"]*)
(**)


(* ::Input:: *)
(*izracunPi[j_]:= Module[{pie, napaka}, (*Funkcija za iza\[CHacek]un pribli\[ZHacek]ka \[SHacek]tevila \[Pi] in absolutne napake*)*)
(*{znotrajKroga,zunajKroga}=tocke[j];*)
(*pie=N[4 *Length[znotrajKroga]/j];*)
(*napaka=Abs[pie-Pi];*)
(*{pie, napaka}]*)


(* ::Input:: *)
(**)
(**)


(* ::Input:: *)
(*n=10000; (*Izberemo maksimalno \[SHacek]tevilo naklju\[CHacek]nih to\[CHacek]k pri katerem izra\[CHacek]unamo pribli\[ZHacek]ek \[SHacek]tevila \[Pi]*)*)
(*For[j=10,j<=n,j*=10, (*Izra\[CHacek]unamo pribli\[ZHacek]ek \[SHacek]tevila \[Pi] od n=10 po korakih za *10 do podanega maksimalnega n*)*)
(*{pi, odstopek}=izracunPi[j];*)
(*Print["Aproksimacija \[Pi] pri n=",j,": ",pi,"| Abolutna napaka: ", odstopek];*)
(*]*)


(* ::Input:: *)
(*tockeGraf=ListPlot[{znotrajKroga,zunajKroga},PlotLegends->{"To\[CHacek]ke znptraj kroga","To\[CHacek]ke zunaj kroga"},PlotStyle->{{PointSize[Medium],Red},{PointSize[Medium],Green}}];*)
(*kroznica=ContourPlot[x^2+y^2==1,{x,-1,1},{y,-1,1}];*)
(*Show[tockeGraf,kroznica,AspectRatio->1,PlotLabel->Style["Grafi\[CHacek]ni prikaz naklju\[CHacek]nih to\[CHacek]k",FontSize->18]]*)


(* ::Input:: *)
(**)
(**)
(**)
(**)
(*(*RAZVOJ V VRSTO*)*)


(* ::Input:: *)
(*f[t_]=Sin[t]*t^2*E^-t;*)
(*Manipulate[Plot[{*)
(*Evaluate[Normal[Series[Sin[t]*t^2*E^-t,{t,2,k}]]],f[t]},{t,0,4}, PlotRange->{{0,4},{-1,1}},PlotLegends->{"Aproksimacija","Funckcija"}],*)
(*{{k,1,"\[CapitalSHacek]tevilo \[CHacek]lenov razvoja"},1,10,1}]*)
