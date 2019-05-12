(* ::Package:: *)

(* ::Input::Initialization:: *)
(*    FOR MORE COMMENTS, SEE THE SLOW CODE   *)




(* ::Input::Initialization:: *)
\[Alpha]0=0.;
year=3.1536*10^7;     
f0=1.0 10^-2; 
c=(2.998*10^8)    ;
G=6.673*10^-11    ;
rAU=1.495 10^11     ;


SubsList={    Csc[\[Theta]Sb] ->   1/S\[Theta]Sb     ,  Cos[\[Theta]Sb]->C\[Theta]Sb,  Sin[\[Theta]Sb]->S\[Theta]Sb,Cos[\[Phi]Sb]->C\[Phi]Sb,   Sin[\[Phi]Sb]->S\[Phi]Sb,    Cos[\[Theta]Lb]->C\[Theta]Lb,  Sin[\[Theta]Lb]->S\[Theta]Lb,Cos[\[Phi]Lb]->C\[Phi]Lb,   Sin[\[Phi]Lb]->S\[Phi]Lb ,  Cos[2 \[Beta]]-> c2\[Beta] ,  Cos[\[Beta]]-> c\[Beta],  Sin[2 \[Beta]]-> s2\[Beta] ,  Sin[\[Beta]]-> s\[Beta]};


SubsList2={
 1/f^(7/6)->1/StorMatK[[21,k1]], 1/f^(2/3)->(1/StorMatK[[3,k1]]),  1/ (f^(4/3))->(1/StorMatK[[4,k1]]), 1/f^(8/3)->(1/StorMatK[[5,k1]]), 1/f^(19/9)->(1/StorMatK[[6,k1]]), 1/f^(25/9)->(1/StorMatK[[7,k1]]),1/f^(28/9)->(1/StorMatK[[8,k1]]), 1/f^(31/9)->(1/StorMatK[[9,k1]]), 1/ (f^(38/9))->(1/StorMatK[[10,k1]]), 1/f^(44/9)->(1/StorMatK[[11,k1]]) ,   1/ (f^(47/9))->(1/StorMatK[[12,k1]]),   1/f^(50/9)->(1/StorMatK[[13,k1]]),  1/f^(65/9)->(1/StorMatK[[14,k1]])    , 1/f^(19/6)->(1/StorMatK[[16,k1]]) ,1/f^(19/18)->(1/StorMatK[[15,k1]]),     f^(19/9)->StorMatK[[6,k1]]  ,f^(2/3)->StorMatK[[3,k1]] ,f^(4/3)->StorMatK[[4,k1]],f^(25/9)->StorMatK[[7,k1]] ,f^(31/9)->StorMatK[[9,k1]]  , f^(50/9)->StorMatK[[13,k1]], f^(28/9)->StorMatK[[8,k1]]  , f^(5/3)->StorMatK[[17,k1]], 1/f^2->1/StorMatK[[18,k1]],1/ (f^(34/9))->(StorMatK[[9,k1]]StorMatK[[2,k1]])^-1,1/ (f^(53/9))->(StorMatK[[13,k1]]StorMatK[[2,k1]])^-1,1/ (f^(19/3))->(StorMatK[[16,k1]]StorMatK[[16,k1]])^-1,1/ (f^(43/9))->(StorMatK[[11,k1]]/StorMatK[[1,k1]])^-1,1/ (f^(62/9))->(StorMatK[[14,k1]]/StorMatK[[2,k1]])^-1,1/ (f^(40/9))->(StorMatK[[12,k1]]/(StorMatK[[1,k1]]StorMatK[[3,k1]]))^-1 ,1/ (f^(46/9))->(StorMatK[[12,k1]]/StorMatK[[1,k1]])^-1,1/ (f^(59/9))->(StorMatK[[13,k1]]/StorMatK[[1,k1]]),1/ (f^(26/9))->(StorMatK[[7,k1]]StorMatK[[1,k1]])^-1,1/ (f^(28/9))->(StorMatK[[8,k1]])^-1,  f^(38/9)->(StorMatK[[10,k1]]), f^(44/9)->(StorMatK[[11,k1]]), f^(47/9)->(StorMatK[[12,k1]]), 1/ (f^(28/3))->(StorMatK[[22,k1]] StorMatK[[17,k1]])^-1
,1/ (f^(23/3))->(StorMatK[[22,k1]])^-1,1/ (f^(26/3))->(StorMatK[[22,k1]] f)^-1, l^(4/3)-> StorMatL[[k2,1]], l^(5/3)-> StorMatL[[k2,2]],  l^(19/9)-> StorMatL[[k2,4]],l^(38/9)-> StorMatL[[k2,5]],l^(25/9)-> StorMatL[[k2,6]],l^(31/9)-> StorMatL[[k2,7]],l^(38/9)-> StorMatL[[k2,8]],l^(44/9)-> StorMatL[[k2,9]],l^(28/9)-> StorMatL[[k2,10]],l^(47/9)-> StorMatL[[k2,11]],l^(19/6)-> StorMatL[[k2,12]],l^(50/9)-> StorMatL[[k2,13]],l^2-> StorMatL[[k2,14]],l^(19/18)-> StorMatL[[k2,15]] ,l^(2/3)-> StorMatL[[k2,16]]  , 1/ l^(4/3)-> (1/StorMatL[[k2,1]]), 1/l^(5/3)-> (1/StorMatL[[k2,2]]),1/l^(8/3)-> (1/StorMatL[[k2,3]]),1/l^(19/9)-> (1/StorMatL[[k2,4]]), 1/l^(38/9)-> (1/StorMatL[[k2,5]]),1/l^(25/9)->(1/StorMatL[[k2,6]]),1/l^(31/9)-> (1/StorMatL[[k2,7]]),1/l^(38/9)-> (1/StorMatL[[k2,8]]),1/l^(44/9)-> (1/StorMatL[[k2,9]]),1/l^(28/9)-> (1/StorMatL[[k2,10]]),1/l^(47/9)-> (1/StorMatL[[k2,11]]),1/l^(19/6)-> (1/StorMatL[[k2,12]]),1/l^(50/9)-> (1/StorMatL[[k2,13]]),1/l^2-> (1/StorMatL[[k2,14]]),1/l^(19/18)-> (1/StorMatL[[k2,15]]) , 1/l^(2/3)-> (1/StorMatL[[k2,16]]), l^(29/3)-> StorMatL[[k2,17]],  l^(31/3)-> StorMatL[[k2,18]],  l^(68/9)-> StorMatL[[k2,19]],l^(55/9)-> StorMatL[[k2,20]],  l^(49/9)-> StorMatL[[k2,21]] , l^(29/3)-> StorMatL[[k2,22]] ,    l^(62/9)-> StorMatL[[k2,24]],l^(19/3)-> StorMatL[[k2,25]],  l^(22/3)-> StorMatL[[k2,26]],  l^(23/3)-> StorMatL[[k2,27]],  l^(52/9)-> StorMatL[[k2,28]],l^(71/9)-> StorMatL[[k2,29]],l^(74/9)-> StorMatL[[k2,30]],
1/ (f^(22/3))->(StorMatK[[22,k1]]/StorMatK[[2,k1]])^-1,1/f^(5/3)->1/StorMatK[[17,k1]] ,l^(8/3)-> StorMatL[[k2,3]],l^(43/9)-> StorMatL[[k2,23]]
, f^(23/3)->(StorMatK[[22,k1]]),f^(1/3)->(StorMatK[[2,k1]]),f^(-31/3)->(StorMatK[[9,k1]]StorMatK[[9,k1]]StorMatK[[9,k1]])^-1,f^(8/3)->(StorMatK[[17,k1]]f),l^(1/3)->StorMatL[[k2,31]],l^(14/9)->StorMatL[[k2,32]],l^(-14/9)->(StorMatL[[k2,32]])^-1,l^(23/3)->StorMatL[[k2,33]],l^(-1/3)->(StorMatL[[k2,31]])^-1,l^(-23/3)->(StorMatL[[k2,33]])^-1,l^(5/9)->(StorMatL[[l,32]]/l)

};

SubsList5={
1/mcz^(5/3)->Rmcz5u3 ,   1/mcz^(8/3)->Rmcz8u3   , mcz^(8/3)->mcz8u3,mcz^(2/3)->mcz2u3, mcz^(4/3)->mcz4u3  ,  mcz^(5/6)->mcz5u6  ,\[Eta]^2->\[Eta]2,   \[Eta]^(8/5)->\[Eta]8u5 ,  \[Eta]^(6/5)->\[Eta]6u5 ,   1/\[Eta]^(8/5)->R\[Eta]8u5  , \[Eta]^(2/5)->\[Eta]2u5 , \[Eta]^(4/5)->\[Eta]4u5 ,  1/\[Eta]^(2/5)->R\[Eta]2u5 ,1/\[Eta]^(4/5)->R\[Eta]4u5 ,   1/\[Eta]^(3/5)->R\[Eta]3u5 ,   \[Eta]^(1/5)->\[Eta]1u5 , mcz^(1/3)->mcz1u3,  mcz^(5/3)->mcz5u3,        mcz^(7/3)->mcz7u3,  \[Eta]^(-1/5)->R\[Eta]1u5,  \[Eta]^(3/5)->\[Eta]3u5 ,  \[Eta]^(-6/5)->R\[Eta]6u5 ,  \[Eta]^(-7/5)->R\[Eta]7u5 ,e0^2->e02 ,e0^4->e04, e0^6->e06,e0^3->e03 ,e0^5->e05, e0^7->e07
}  ;


t=PowerExpand[   tc+1/x^4 (-((5 G m)/(256 c^3 \[Eta]))+0e0^4 (-((5222765 G m)/(14475264 c^3 \[Eta] \[Chi]^(38/9)))+(2608555 G m)/(10039296 c^3 \[Eta] \[Chi]^(19/9)))+0e0^6 ((75356125 G m)/(35487744 c^3 \[Eta] \[Chi]^(19/3))-(17355248095 G m)/(6600720384 c^3 \[Eta] \[Chi]^(38/9))+(1326481225 G m)/(2288959488 c^3 \[Eta] \[Chi]^(19/9)))+0 (785 e0^2 G m)/(11008 c^3 \[Eta] \[Chi]^(19/9)))/.x->(G m 2 \[Pi] F/c^3)^(2/3)/.F->f/l/.\[Chi]->f/f0 (2/l)/.m->mcz/\[Eta]^(3/5)  ]              /.SubsList2      ; 
t2=PowerExpand[ 
tc+(-((55 G m)/(768 c^3))-(3715 G m)/(64512 c^3 \[Eta]))/x^3-(5 G m)/(256 c^3 x^4 \[Eta])+(G m \[Pi])/(8 c^3 x^(5/2) \[Eta])+(-((27145 G m)/(129024 c^3))-(15293365 G m)/(130056192 c^3 \[Eta])-(3085 G m \[Eta])/(18432 c^3))/x^2
/.x->(G m 2 \[Pi] F/c^3)^(2/3)/.F->f/l/.\[Chi]->f/f0 (2/l)/.m->mcz/\[Eta]^(3/5)   ]          /.SubsList2    ;


(* ::Input::Initialization:: *)



(* ::Input::Initialization:: *)
e=PowerExpand [0e0^3 (-(3323/(1824 \[Chi]^(19/6)))+3323/(1824 \[Chi]^(19/18)))+0e0^5 (50259743/(6653952 \[Chi]^(95/18))-11042329/(1108992 \[Chi]^(19/6))+15994231/(6653952 \[Chi]^(19/18)))+e0/\[Chi]^(19/18)/.x->(G m 2 \[Pi] F/c^3)^(2/3)/.F->f/l/.\[Chi]->f/f0 (2/l)/.m->mcz/\[Eta]^(3/5)  ]                   /.SubsList2          ;

\[Phi]b=(2 \[Pi] t)/year;
\[Phi]b2=(2 \[Pi] t2)/year;
ipLN=Cos[\[Theta]Lb] Cos[\[Theta]Sb]+Sin[\[Theta]Lb]Sin[\[Theta]Sb] (Cos[\[Phi]Lb] Cos[\[Phi]Sb]+Sin[\[Phi]Lb] Sin[\[Phi]Sb]);  
c\[Theta]S=1/2 Cos[\[Theta]Sb]-Sqrt[3]/2 Sin[\[Theta]Sb]      (Cos[\[Phi]b] Cos[\[Phi]Sb]+Sin[\[Phi]b] Sin[\[Phi]Sb]) ;      
ipzN=c\[Theta]S;
ipLz=1/2 Cos[\[Theta]Lb]-Sqrt[3]/2 Sin[\[Theta]Lb]     (Cos[\[Phi]b] Cos[\[Phi]Lb]+Sin[\[Phi]b] Sin[\[Phi]Lb])      ;
ipNLz=1/2 Sin[\[Theta]Lb]Sin[\[Theta]Sb] (Cos[\[Phi]Sb] Sin[\[Phi]Lb]-Cos[\[Phi]Lb] Sin[\[Phi]Sb])-Sqrt[3]/2 Cos[\[Phi]b](Cos[\[Theta]Lb] Sin[\[Theta]Sb] Sin[\[Phi]Sb]-Cos[\[Theta]Sb] Sin[\[Theta]Lb] Sin[\[Phi]Lb])-Sqrt[3]/2 Sin[\[Phi]b](Cos[\[Theta]Sb] Sin[\[Theta]Lb] Cos[\[Phi]Lb]-Cos[\[Theta]Lb]Sin[\[Theta]Sb] Cos[\[Phi]Sb]) ;
\[Psi]S=ArcTan[(ipLz-ipLN*ipzN)/ipNLz];
\[Phi]S=\[Alpha]0+\[Pi]/12+ArcTan[(Sqrt[3]Cos[\[Theta]Sb]+Sin[\[Theta]Sb] (Cos[\[Phi]b] Cos[\[Phi]Sb]+Sin[\[Phi]b] Sin[\[Phi]Sb]))/(2Sin[\[Theta]Sb] (Cos[\[Phi]Sb] Sin[\[Phi]b]-Cos[\[Phi]b] Sin[\[Phi]Sb]))];
\[Phi]S2= \[Phi]S-\[Pi]/4;



C2\[Phi]S =Cos[2\[Phi]S];
C2\[Psi]S= Cos[2\[Psi]S];
S2\[Phi]S= Sin[2\[Phi]S];
S2\[Psi]S=Sin[2\[Psi]S];
C2\[Phi]S2 =Cos[2\[Phi]S2];
S2\[Phi]S2=Sin[2\[Phi]S2]; 


dc\[Theta]Sdmcz=N[Simplify[PowerExpand[D[c\[Theta]S,mcz]/.SubsList  ]]]/.SubsList5   ;
dc\[Theta]Sd\[Eta]=N[Simplify[PowerExpand[D[c\[Theta]S,\[Eta]]/.SubsList  ]]]/.SubsList5   ;
dc\[Theta]Sdtc=N[Simplify[PowerExpand[D[c\[Theta]S,tc]/.SubsList  ]]]/.SubsList5   ;
dc\[Theta]Sd\[Phi]c=N[Simplify[PowerExpand[D[c\[Theta]S,\[Phi]c]/.SubsList  ]]]/.SubsList5   ;
dc\[Theta]SdDl=N[Simplify[PowerExpand[D[c\[Theta]S,Dl]/.SubsList  ]]]/.SubsList5   ;
dc\[Theta]Sde0=N[Simplify[PowerExpand[D[c\[Theta]S,e0]/.SubsList  ]]]/.SubsList5   ;
dc\[Theta]Sd\[Theta]Sb=N[Simplify[PowerExpand[D[c\[Theta]S,\[Theta]Sb]/.SubsList  ]]]/.SubsList5   ;
dc\[Theta]Sd\[Phi]Sb=N[Simplify[PowerExpand[D[c\[Theta]S,\[Phi]Sb]/.SubsList  ]]]/.SubsList5   ;
dc\[Theta]Sd\[Theta]Lb=N[Simplify[PowerExpand[D[c\[Theta]S,\[Theta]Lb]/.SubsList  ]]]/.SubsList5   ;
dc\[Theta]Sd\[Phi]Lb=N[Simplify[PowerExpand[D[c\[Theta]S,\[Phi]Lb]/.SubsList  ]]]/.SubsList5   ;

dC2\[Phi]Sdmcz=N[Simplify[PowerExpand[D[C2\[Phi]S,mcz]/.SubsList  ]]]/.SubsList5   ;
dC2\[Phi]Sd\[Eta]=N[Simplify[PowerExpand[D[C2\[Phi]S,\[Eta]]/.SubsList  ]]]/.SubsList5   ;
dC2\[Phi]Sdtc=N[Simplify[PowerExpand[D[C2\[Phi]S,tc]/.SubsList  ]]]/.SubsList5   ;
dC2\[Phi]Sd\[Phi]c=N[Simplify[PowerExpand[D[C2\[Phi]S,\[Phi]c]/.SubsList  ]]]/.SubsList5   ;
dC2\[Phi]SdDl=N[Simplify[PowerExpand[D[C2\[Phi]S,Dl]/.SubsList  ]]]/.SubsList5   ;
dC2\[Phi]Sde0=N[Simplify[PowerExpand[D[C2\[Phi]S,e0]/.SubsList  ]]]/.SubsList5   ;
dC2\[Phi]Sd\[Theta]Sb=N[Simplify[PowerExpand[D[C2\[Phi]S,\[Theta]Sb]/.SubsList  ]]]/.SubsList5   ;
dC2\[Phi]Sd\[Phi]Sb=N[Simplify[PowerExpand[D[C2\[Phi]S,\[Phi]Sb]/.SubsList  ]]]/.SubsList5   ;
dC2\[Phi]Sd\[Theta]Lb=N[Simplify[PowerExpand[D[C2\[Phi]S,\[Theta]Lb]/.SubsList  ]]]/.SubsList5   ;
dC2\[Phi]Sd\[Phi]Lb=N[Simplify[PowerExpand[D[C2\[Phi]S,\[Phi]Lb]/.SubsList  ]]]/.SubsList5   ;

dC2\[Psi]Sdmcz=N[Simplify[PowerExpand[D[C2\[Psi]S,mcz]/.SubsList  ]]]/.SubsList5   ;
dC2\[Psi]Sd\[Eta]=N[Simplify[PowerExpand[D[C2\[Psi]S,\[Eta]]/.SubsList  ]]]/.SubsList5   ;
dC2\[Psi]Sdtc=N[Simplify[PowerExpand[D[C2\[Psi]S,tc]/.SubsList  ]]]/.SubsList5   ;
dC2\[Psi]Sd\[Phi]c=N[Simplify[PowerExpand[D[C2\[Psi]S,\[Phi]c]/.SubsList  ]]]/.SubsList5   ;
dC2\[Psi]SdDl=N[Simplify[PowerExpand[D[C2\[Psi]S,Dl]/.SubsList  ]]]/.SubsList5   ;
dC2\[Psi]Sde0=N[Simplify[PowerExpand[D[C2\[Psi]S,e0]/.SubsList  ]]]/.SubsList5   ;
dC2\[Psi]Sd\[Theta]Sb=N[Simplify[PowerExpand[D[C2\[Psi]S,\[Theta]Sb]/.SubsList  ]]]/.SubsList5   ;
dC2\[Psi]Sd\[Phi]Sb=N[Simplify[PowerExpand[D[C2\[Psi]S,\[Phi]Sb]/.SubsList  ]]]/.SubsList5   ;
dC2\[Psi]Sd\[Theta]Lb=N[Simplify[PowerExpand[D[C2\[Psi]S,\[Theta]Lb]/.SubsList  ]]]/.SubsList5   ;
dC2\[Psi]Sd\[Phi]Lb=N[Simplify[PowerExpand[D[C2\[Psi]S,\[Phi]Lb]/.SubsList  ]]]/.SubsList5   ;

dS2\[Phi]Sdmcz=N[Simplify[PowerExpand[D[S2\[Phi]S,mcz]/.SubsList  ]]]/.SubsList5   ;
dS2\[Phi]Sd\[Eta]=N[Simplify[PowerExpand[D[S2\[Phi]S,\[Eta]]/.SubsList  ]]]/.SubsList5   ;
dS2\[Phi]Sdtc=N[Simplify[PowerExpand[D[S2\[Phi]S,tc]/.SubsList  ]]]/.SubsList5   ;
dS2\[Phi]Sd\[Phi]c=N[Simplify[PowerExpand[D[S2\[Phi]S,\[Phi]c]/.SubsList  ]]]/.SubsList5   ;
dS2\[Phi]SdDl=N[Simplify[PowerExpand[D[S2\[Phi]S,Dl]/.SubsList  ]]]/.SubsList5   ;
dS2\[Phi]Sde0=N[Simplify[PowerExpand[D[S2\[Phi]S,e0]/.SubsList  ]]]/.SubsList5   ;
dS2\[Phi]Sd\[Theta]Sb=N[Simplify[PowerExpand[D[S2\[Phi]S,\[Theta]Sb]/.SubsList  ]]]/.SubsList5   ;
dS2\[Phi]Sd\[Phi]Sb=N[Simplify[PowerExpand[D[S2\[Phi]S,\[Phi]Sb]/.SubsList  ]]]/.SubsList5   ;
dS2\[Phi]Sd\[Theta]Lb=N[Simplify[PowerExpand[D[S2\[Phi]S,\[Theta]Lb]/.SubsList  ]]]/.SubsList5   ;
dS2\[Phi]Sd\[Phi]Lb=N[Simplify[PowerExpand[D[S2\[Phi]S,\[Phi]Lb]/.SubsList  ]]]/.SubsList5   ;

dS2\[Psi]Sdmcz=N[Simplify[PowerExpand[D[S2\[Psi]S,mcz]/.SubsList  ]]]/.SubsList5   ;
dS2\[Psi]Sd\[Eta]=N[Simplify[PowerExpand[D[S2\[Psi]S,\[Eta]]/.SubsList  ]]]/.SubsList5   ;
dS2\[Psi]Sdtc=N[Simplify[PowerExpand[D[S2\[Psi]S,tc]/.SubsList  ]]]/.SubsList5   ;
dS2\[Psi]Sd\[Phi]c=N[Simplify[PowerExpand[D[S2\[Psi]S,\[Phi]c]/.SubsList  ]]]/.SubsList5   ;
dS2\[Psi]SdDl=N[Simplify[PowerExpand[D[S2\[Psi]S,Dl]/.SubsList  ]]]/.SubsList5   ;
dS2\[Psi]Sde0=N[Simplify[PowerExpand[D[S2\[Psi]S,e0]/.SubsList  ]]]/.SubsList5   ;
dS2\[Psi]Sd\[Theta]Sb=N[Simplify[PowerExpand[D[S2\[Psi]S,\[Theta]Sb]/.SubsList  ]]]/.SubsList5   ;
dS2\[Psi]Sd\[Phi]Sb=N[Simplify[PowerExpand[D[S2\[Psi]S,\[Phi]Sb]/.SubsList  ]]]/.SubsList5   ;
dS2\[Psi]Sd\[Theta]Lb=N[Simplify[PowerExpand[D[S2\[Psi]S,\[Theta]Lb]/.SubsList  ]]]/.SubsList5   ;
dS2\[Psi]Sd\[Phi]Lb=N[Simplify[PowerExpand[D[S2\[Psi]S,\[Phi]Lb]/.SubsList  ]]]/.SubsList5   ;

dC2\[Phi]S2dmcz=N[Simplify[PowerExpand[D[C2\[Phi]S2,mcz]/.SubsList  ]]]/.SubsList5   ;
dC2\[Phi]S2d\[Eta]=N[Simplify[PowerExpand[D[C2\[Phi]S2,\[Eta]]/.SubsList  ]]]/.SubsList5   ;
dC2\[Phi]S2dtc=N[Simplify[PowerExpand[D[C2\[Phi]S2,tc]/.SubsList  ]]]/.SubsList5   ;
dC2\[Phi]S2d\[Phi]c=N[Simplify[PowerExpand[D[C2\[Phi]S2,\[Phi]c]/.SubsList  ]]]/.SubsList5   ;
dC2\[Phi]S2dDl=N[Simplify[PowerExpand[D[C2\[Phi]S2,Dl]/.SubsList  ]]]/.SubsList5   ;
dC2\[Phi]S2de0=N[Simplify[PowerExpand[D[C2\[Phi]S2,e0]/.SubsList  ]]]/.SubsList5   ;
dC2\[Phi]S2d\[Theta]Sb=N[Simplify[PowerExpand[D[C2\[Phi]S2,\[Theta]Sb]/.SubsList  ]]]/.SubsList5   ;
dC2\[Phi]S2d\[Phi]Sb=N[Simplify[PowerExpand[D[C2\[Phi]S2,\[Phi]Sb]/.SubsList  ]]]/.SubsList5   ;
dC2\[Phi]S2d\[Theta]Lb=N[Simplify[PowerExpand[D[C2\[Phi]S2,\[Theta]Lb]/.SubsList  ]]]/.SubsList5   ;
dC2\[Phi]S2d\[Phi]Lb=N[Simplify[PowerExpand[D[C2\[Phi]S2,\[Phi]Lb]/.SubsList  ]]]/.SubsList5   ;

dS2\[Phi]S2dmcz=N[Simplify[PowerExpand[D[S2\[Phi]S2,mcz]/.SubsList  ]]]/.SubsList5   ;
dS2\[Phi]S2d\[Eta]=N[Simplify[PowerExpand[D[S2\[Phi]S2,\[Eta]]/.SubsList ]]]/.SubsList5   ;
dS2\[Phi]S2dtc=N[Simplify[PowerExpand[D[S2\[Phi]S2,tc]/.SubsList  ]]]/.SubsList5   ;
dS2\[Phi]S2d\[Phi]c=N[Simplify[PowerExpand[D[S2\[Phi]S2,\[Phi]c]/.SubsList  ]]]/.SubsList5   ;
dS2\[Phi]S2dDl=N[Simplify[PowerExpand[D[S2\[Phi]S2,Dl]/.SubsList  ]]]/.SubsList5   ;
dS2\[Phi]S2de0=N[Simplify[PowerExpand[D[S2\[Phi]S2,e0]/.SubsList  ]]]/.SubsList5   ;
dS2\[Phi]S2d\[Theta]Sb=N[Simplify[PowerExpand[D[S2\[Phi]S2,\[Theta]Sb]/.SubsList  ]]]/.SubsList5   ;
dS2\[Phi]S2d\[Phi]Sb=N[Simplify[PowerExpand[D[S2\[Phi]S2,\[Phi]Sb]/.SubsList  ]]]/.SubsList5   ;
dS2\[Phi]S2d\[Theta]Lb=N[Simplify[PowerExpand[D[S2\[Phi]S2,\[Theta]Lb]/.SubsList  ]]]/.SubsList5   ;
dS2\[Phi]S2d\[Phi]Lb=N[Simplify[PowerExpand[D[S2\[Phi]S2,\[Phi]Lb]/.SubsList  ]]]/.SubsList5   ;

FpA=N[1/2 (1+c\[Theta]S^2)C2\[Phi]S C2\[Psi]S-c\[Theta]S S2\[Phi]S S2\[Psi]S];
FcA=N[1/2  (1+c\[Theta]S^2)C2\[Phi]S S2\[Psi]S+c\[Theta]S S2\[Phi]S C2\[Psi]S];
FpB=N[1/2 (1+c\[Theta]S^2)C2\[Phi]S2 C2\[Psi]S-c\[Theta]S S2\[Phi]S2 S2\[Psi]S];
FcB=N[1/2  (1+c\[Theta]S^2)C2\[Phi]S2 S2\[Psi]S+c\[Theta]S S2\[Phi]S2 C2\[Psi]S];




Cp[1]=e (1-ipLN^2- 3/2 Cos[2\[Beta]] -3/2 ipLN^2   Cos[2\[Beta]]);
Sp[1]= -(3/2) e (Sin[2\[Beta]] + ipLN^2  Sin[2\[Beta]]);
Cc[1]=3 e ipLN  Sin[2\[Beta]]  ;
Sc[1]=-3 e ipLN   Cos[2\[Beta]] ;
Cp[2]=  2 (   Cos[2\[Beta]]  +ipLN^2 Cos[2\[Beta]])  ;
Sp[2]= 2 (   Sin[2\[Beta]]   +ipLN^2    Sin[2\[Beta]]);
Cc[2]=  -4 ipLN Sin[2\[Beta]]   ;
Sc[2]=   4 ipLN Cos[2\[Beta]]  ;                                                                     
Cp[3]=  9/2 e (    Cos[2\[Beta]]  +ipLN^2    Cos[2\[Beta]]  )  ;
Sp[3]=   9/2 e (    Sin[2\[Beta]]   +ipLN^2   Sin[2\[Beta]]   )  ;
Cc[3]= -9 e ipLN   Sin[2\[Beta]]   ;
Sc[3]=  9 e ipLN   Cos[2\[Beta]] ;



\[Psi]=PowerExpand[Simplify[
\[Pi]/4-2 f \[Pi] tc+(3 l^(8/3) (-1+16 \[Pi] x^(3/2)+x (-(3715/756)-(55 \[Eta])/9)+x^2 (-(15293365/508032)-(27145 \[Eta])/504-(3085 \[Eta]^2)/72)))/(512 2^(2/3) ((f G m)/c^3)^(5/3) \[Pi]^(5/3) \[Eta])+l \[Phi]c
] /.x->(G m 2 \[Pi] F/c^3)^(2/3)/.F->f/l/.\[Chi]->f/f0 (2/l)/.m->mcz/\[Eta]^(3/5)   ]  /.SubsList2;


\[CapitalTau]A[l_]= FpA Cp[l] + FcA Cc[l];
\[CapitalSigma]A[l_]=FpA Sp[l] + FcA Sc[l] ;
\[CapitalTau]B[l_]= FpB Cp[l] + FcB Cc[l];
\[CapitalSigma]B[l_]=FpB Sp[l] + FcB Sc[l] ;

\[CapitalTau]A2[l_]= FpA2[mcz,\[Eta],tc,\[Phi]c,Dl, e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb ]    Cp[l] + FcA2[mcz,\[Eta],tc,\[Phi]c,Dl, e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb ]  Cc[l];
\[CapitalSigma]A2[l_]=FpA2[mcz,\[Eta],tc,\[Phi]c,Dl, e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb ] Sp[l] + FcA2[mcz,\[Eta],tc,\[Phi]c,Dl, e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb ] Sc[l] ;
\[CapitalTau]B2[l_]= FpB2[mcz,\[Eta],tc,\[Phi]c,Dl, e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb ] Cp[l] + FcB2[mcz,\[Eta],tc,\[Phi]c,Dl, e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb ] Cc[l];
\[CapitalSigma]B2[l_]=FpB2[mcz,\[Eta],tc,\[Phi]c,Dl, e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb ] Sp[l] + FcB2[mcz,\[Eta],tc,\[Phi]c,Dl, e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb ] Sc[l] ;


\[Xi]=(1-e^2)^(7/4)/(1+73/24 e^2+37/96 e^4)^(1/2);

AmpA=N[ (\[Sqrt]3)/2 (5/384 \[Eta] \[Pi])^(1/2) (G^2 m^2/(c^5 Dl))(G m \[Pi] f/c^3)^(-7/6)      \[Xi]  (\[CapitalTau]A2[l]+I \[CapitalSigma]A2[l])(l/2)^(2/3)      /.m->mcz/\[Eta]^(3/5) ];
AmpB=N[(\[Sqrt]3)/2 (5/384 \[Eta] \[Pi])^(1/2) (G^2 m^2/(c^5 Dl))(G m \[Pi] f/c^3)^(-7/6)     \[Xi]  (\[CapitalTau]B2[l]+I \[CapitalSigma]B2[l])(l/2)^(2/3)      /.m->mcz/\[Eta]^(3/5)];
AAmpA=N[  (\[Sqrt]3)/2 (5/384 \[Eta] \[Pi])^(1/2) (G^2 m^2/(c^5 Dl))(G m \[Pi] f/c^3)^(-7/6)   \[Xi] (\[CapitalTau]A[l]+I \[CapitalSigma]A[l])(l/2)^(2/3)      /.m->mcz/\[Eta]^(3/5) ];
AAmpB=N[(\[Sqrt]3)/2 (5/384 \[Eta] \[Pi])^(1/2) (G^2 m^2/(c^5 Dl))(G m \[Pi] f/c^3)^(-7/6)      \[Xi]  (\[CapitalTau]B[l]+I \[CapitalSigma]B[l])(l/2)^(2/3)      /.m->mcz/\[Eta]^(3/5)];


varA1=AmpA/.l->1;
varA2=AmpA/.l->2;
varA3=AmpA/.l->3;
varB1=AmpB/.l->1;
varB2=AmpB/.l->2;
varB3=AmpB/.l->3;

AmpA1=varA1   /.SubsList;
AmpA2=varA2  /.SubsList;
AmpA3=varA3  /.SubsList;

AmpB1=varB1  /.SubsList;
AmpB2=varB2  /.SubsList;
AmpB3=varB3  /.SubsList;


AAmpA1=AAmpA/.l->1/.SubsList;
AAmpA2=AAmpA/.l->2/.SubsList;
AAmpA3=AAmpA/.l->3/.SubsList;

AAmpB1=AAmpB/.l->1/.SubsList;
AAmpB2=AAmpB/.l->2/.SubsList;
AAmpB3=AAmpB/.l->3/.SubsList;

SubsList3={  FcA2[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]->StorMatA[[2,k1,k2]] ,    FpA2[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]->StorMatA[[3,k1,k2]] ,  
 FcB2[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]->StorMatB[[2,k1,k2]] ,    FpB2[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]->StorMatB[[3,k1,k2]] ,   

\!\(\*SuperscriptBox[\(FpA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[4,k1,k2]],
\!\(\*SuperscriptBox[\(FpA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[5,k1,k2]],
\!\(\*SuperscriptBox[\(FpA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[6,k1,k2]],
\!\(\*SuperscriptBox[\(FpA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[7,k1,k2]],
\!\(\*SuperscriptBox[\(FpA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[8,k1,k2]],
\!\(\*SuperscriptBox[\(FpA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[9,k1,k2]],
\!\(\*SuperscriptBox[\(FpA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[10,k1,k2]],
\!\(\*SuperscriptBox[\(FpA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[11,k1,k2]],
\!\(\*SuperscriptBox[\(FpA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[12,k1,k2]],
\!\(\*SuperscriptBox[\(FpA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[13,k1,k2]],

\!\(\*SuperscriptBox[\(FcA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[14,k1,k2]],
\!\(\*SuperscriptBox[\(FcA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[15,k1,k2]],
\!\(\*SuperscriptBox[\(FcA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[16,k1,k2]],
\!\(\*SuperscriptBox[\(FcA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[17,k1,k2]],
\!\(\*SuperscriptBox[\(FcA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[18,k1,k2]],
\!\(\*SuperscriptBox[\(FcA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[19,k1,k2]],
\!\(\*SuperscriptBox[\(FcA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[20,k1,k2]],
\!\(\*SuperscriptBox[\(FcA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[21,k1,k2]],
\!\(\*SuperscriptBox[\(FcA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[22,k1,k2]],
\!\(\*SuperscriptBox[\(FcA2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatA[[23,k1,k2]],

\!\(\*SuperscriptBox[\(FpB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[4,k1,k2]],
\!\(\*SuperscriptBox[\(FpB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[5,k1,k2]],
\!\(\*SuperscriptBox[\(FpB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[6,k1,k2]],
\!\(\*SuperscriptBox[\(FpB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[7,k1,k2]],
\!\(\*SuperscriptBox[\(FpB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[8,k1,k2]],
\!\(\*SuperscriptBox[\(FpB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[9,k1,k2]],
\!\(\*SuperscriptBox[\(FpB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[10,k1,k2]],
\!\(\*SuperscriptBox[\(FpB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[11,k1,k2]],
\!\(\*SuperscriptBox[\(FpB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[12,k1,k2]],
\!\(\*SuperscriptBox[\(FpB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[13,k1,k2]],

\!\(\*SuperscriptBox[\(FcB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[14,k1,k2]],
\!\(\*SuperscriptBox[\(FcB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[15,k1,k2]],
\!\(\*SuperscriptBox[\(FcB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[16,k1,k2]],
\!\(\*SuperscriptBox[\(FcB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[17,k1,k2]],
\!\(\*SuperscriptBox[\(FcB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[18,k1,k2]],
\!\(\*SuperscriptBox[\(FcB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[19,k1,k2]],
\!\(\*SuperscriptBox[\(FcB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[20,k1,k2]],
\!\(\*SuperscriptBox[\(FcB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[21,k1,k2]],
\!\(\*SuperscriptBox[\(FcB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[22,k1,k2]],
\!\(\*SuperscriptBox[\(FcB2\), 
TagBox[
RowBox[{"(", 
RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1"}], ")"}],
Derivative],
MultilineFunction->None]\)[mcz,\[Eta],tc,\[Phi]c,Dl,e0,\[Theta]Sb,\[Phi]Sb,\[Theta]Lb,\[Phi]Lb]-> StorMatB[[23,k1,k2]]

 };


dAmpA1dmcz = D[AmpA1,mcz] /.SubsList /.SubsList3  ;
dAmpA1d\[Eta] = D[AmpA1,\[Eta]] /.SubsList /.SubsList3  ;
dAmpA1dtc = D[AmpA1,tc] /.SubsList /.SubsList3  ;
dAmpA1d\[Phi]c = D[AmpA1,\[Phi]c] /.SubsList /.SubsList3  ;
dAmpA1dDl = D[AmpA1,Dl] /.SubsList /.SubsList3  ;
dAmpA1de0 = D[AmpA1,e0] /.SubsList /.SubsList3  ;
dAmpA1d\[Theta]Sb = D[varA1,\[Theta]Sb]/.SubsList/.SubsList3  ;
dAmpA1d\[Phi]Sb = D[varA1,\[Phi]Sb]/.SubsList/.SubsList3  ;
dAmpA1d\[Theta]Lb = D[varA1,\[Theta]Lb]/.SubsList/.SubsList3  ;
dAmpA1d\[Phi]Lb = D[varA1,\[Phi]Lb]/.SubsList/.SubsList3  ;
dAmpA1d\[Beta] = D[varA1,\[Beta]]/.SubsList/.SubsList3  ;

dAmpA2dmcz = D[AmpA2,mcz] /.SubsList /.SubsList3  ;
dAmpA2d\[Eta] = D[AmpA2,\[Eta]] /.SubsList /.SubsList3  ;
dAmpA2dtc = D[AmpA2,tc] /.SubsList /.SubsList3  ;
dAmpA2d\[Phi]c = D[AmpA2,\[Phi]c] /.SubsList /.SubsList3  ;
dAmpA2dDl = D[AmpA2,Dl] /.SubsList /.SubsList3  ;
dAmpA2de0 = D[AmpA2,e0] /.SubsList /.SubsList3  ;
dAmpA2d\[Theta]Sb = D[varA2,\[Theta]Sb]/.SubsList/.SubsList3  ;
dAmpA2d\[Phi]Sb = D[varA2,\[Phi]Sb]/.SubsList/.SubsList3  ;
dAmpA2d\[Theta]Lb = D[varA2,\[Theta]Lb]/.SubsList/.SubsList3  ;
dAmpA2d\[Phi]Lb = D[varA2,\[Phi]Lb]/.SubsList/.SubsList3  ;
dAmpA2d\[Beta] = D[varA2,\[Beta]]/.SubsList/.SubsList3  ;

dAmpA3dmcz = D[AmpA3,mcz] /.SubsList /.SubsList3  ;
dAmpA3d\[Eta] = D[AmpA3,\[Eta]] /.SubsList /.SubsList3  ;
dAmpA3dtc = D[AmpA3,tc] /.SubsList /.SubsList3  ;
dAmpA3d\[Phi]c = D[AmpA3,\[Phi]c] /.SubsList /.SubsList3  ;
dAmpA3dDl = D[AmpA3,Dl] /.SubsList /.SubsList3  ;
dAmpA3de0 = D[AmpA3,e0] /.SubsList /.SubsList3  ;
dAmpA3d\[Theta]Sb = D[varA3,\[Theta]Sb]/.SubsList/.SubsList3  ;
dAmpA3d\[Phi]Sb = D[varA3,\[Phi]Sb]/.SubsList/.SubsList3  ;
dAmpA3d\[Theta]Lb = D[varA3,\[Theta]Lb]/.SubsList/.SubsList3  ;
dAmpA3d\[Phi]Lb = D[varA3,\[Phi]Lb]/.SubsList/.SubsList3  ;
dAmpA3d\[Beta] = D[varA3,\[Beta]]/.SubsList/.SubsList3  ;


dAmpB1dmcz = D[AmpB1,mcz] /.SubsList /.SubsList3  ;
dAmpB1d\[Eta] = D[AmpB1,\[Eta]] /.SubsList /.SubsList3  ;
dAmpB1dtc = D[AmpB1,tc] /.SubsList /.SubsList3  ;
dAmpB1d\[Phi]c = D[AmpB1,\[Phi]c] /.SubsList /.SubsList3  ;
dAmpB1dDl = D[AmpB1,Dl] /.SubsList /.SubsList3  ;
dAmpB1de0 = D[AmpB1,e0] /.SubsList /.SubsList3  ;
dAmpB1d\[Theta]Sb = D[varB1,\[Theta]Sb]/.SubsList/.SubsList3  ;
dAmpB1d\[Phi]Sb = D[varB1,\[Phi]Sb]/.SubsList/.SubsList3  ;
dAmpB1d\[Theta]Lb = D[varB1,\[Theta]Lb]/.SubsList/.SubsList3  ;
dAmpB1d\[Phi]Lb = D[varB1,\[Phi]Lb]/.SubsList/.SubsList3  ;
dAmpB1d\[Beta] = D[varB1,\[Beta]]/.SubsList/.SubsList3  ;

dAmpB2dmcz = D[AmpB2,mcz] /.SubsList /.SubsList3  ;
dAmpB2d\[Eta] = D[AmpB2,\[Eta]] /.SubsList /.SubsList3  ;
dAmpB2dtc = D[AmpB2,tc] /.SubsList /.SubsList3  ;
dAmpB2d\[Phi]c = D[AmpB2,\[Phi]c] /.SubsList /.SubsList3  ;
dAmpB2dDl = D[AmpB2,Dl] /.SubsList /.SubsList3  ;
dAmpB2de0 = D[AmpB2,e0] /.SubsList /.SubsList3  ;
dAmpB2d\[Theta]Sb = D[varB2,\[Theta]Sb]/.SubsList/.SubsList3  ;
dAmpB2d\[Phi]Sb = D[varB2,\[Phi]Sb]/.SubsList/.SubsList3  ;
dAmpB2d\[Theta]Lb = D[varB2,\[Theta]Lb]/.SubsList/.SubsList3  ;
dAmpB2d\[Phi]Lb = D[varB2,\[Phi]Lb]/.SubsList/.SubsList3  ;
dAmpB2d\[Beta] = D[varB2,\[Beta]]/.SubsList/.SubsList3  ;

dAmpB3dmcz = D[AmpB3,mcz] /.SubsList /.SubsList3  ;
dAmpB3d\[Eta] = D[AmpB3,\[Eta]] /.SubsList /.SubsList3  ;
dAmpB3dtc = D[AmpB3,tc] /.SubsList /.SubsList3  ;
dAmpB3d\[Phi]c = D[AmpB3,\[Phi]c] /.SubsList /.SubsList3  ;
dAmpB3dDl = D[AmpB3,Dl] /.SubsList /.SubsList3  ;
dAmpB3de0 = D[AmpB3,e0] /.SubsList /.SubsList3  ;
dAmpB3d\[Theta]Sb = D[varB3,\[Theta]Sb]/.SubsList/.SubsList3  ;
dAmpB3d\[Phi]Sb = D[varB3,\[Phi]Sb]/.SubsList/.SubsList3  ;
dAmpB3d\[Theta]Lb = D[varB3,\[Theta]Lb]/.SubsList/.SubsList3  ;
dAmpB3d\[Phi]Lb = D[varB3,\[Phi]Lb]/.SubsList/.SubsList3  ;
dAmpB3d\[Beta] = D[varB3,\[Beta]]/.SubsList/.SubsList3  ;



\[Phi]D=2\[Pi] (2f)/l rAU/c*Sin[\[Theta]Sb] (Cos[\[Phi]b2] Cos[\[Phi]Sb]+Sin[\[Phi]b2] Sin[\[Phi]Sb]);
Ph1=E^(-I (\[Psi]-\[Phi]D))/.l->1;
Ph2=E^(-I (\[Psi]-\[Phi]D))/.l->2;
Ph3=E^(-I (\[Psi]-\[Phi]D))/.l->3;

hA1=N[AmpA1 Ph1];
hB1=N[AmpB1 Ph1];
hA2=N[AmpA2 Ph2];
hB2=N[AmpB2 Ph2];
hA3=N[AmpA3 Ph3];
hB3=N[AmpB3 Ph3];


Phase=\[Psi]-\[Phi]D;
Phase2=N[Simplify[PowerExpand[Phase/.SubsList  ]]/.SubsList5 ]     ;


dPhdmcz= N[Simplify[PowerExpand[D[Phase,mcz]     /.SubsList  ]]/.SubsList5 ]  ;
dPhd\[Eta]=      N[Simplify[PowerExpand[   D[Phase,\[Eta]]     /.SubsList  ]]/.SubsList5 ]  ;      
dPhdtc= N[Simplify[PowerExpand[   D[Phase,tc]     /.SubsList  ]]/.SubsList5 ]  ;      
dPhd\[Phi]c= N[Simplify[PowerExpand[   D[Phase, \[Phi]c]     /.SubsList  ]]/.SubsList5 ]     ;
dPhdDl= N[Simplify[PowerExpand[   D[Phase,Dl]     /.SubsList  ]]/.SubsList5 ]  ;      
dPhde0= N[Simplify[PowerExpand[   D[Phase,e0]     /.SubsList  ]]/.SubsList5 ]  ;      
dPhd\[Theta]Sb= N[Simplify[PowerExpand[   D[Phase,\[Theta]Sb]     /.SubsList  ]]/.SubsList5 ]  ;    
dPhd\[Phi]Sb= N[Simplify[PowerExpand[   D[Phase,\[Phi]Sb]     /.SubsList  ]]/.SubsList5 ]  ;  
dPhd\[Theta]Lb= N[Simplify[PowerExpand[   D[Phase,\[Theta]Lb]     /.SubsList  ]]/.SubsList5 ]  ;    
dPhd\[Phi]Lb= N[Simplify[PowerExpand[   D[Phase,\[Phi]Lb]     /.SubsList  ]]/.SubsList5 ] ;   

FpA3=1/2 (1+c\[Theta]S[x]^2)C2\[Phi]S[x] C2\[Psi]S[x]-c\[Theta]S[x] S2\[Phi]S[x] S2\[Psi]S[x];
FcA3=1/2  (1+c\[Theta]S[x]^2)C2\[Phi]S[x] S2\[Psi]S[x]+c\[Theta]S[x] S2\[Phi]S[x] C2\[Psi]S[x];
FpB3=1/2 (1+c\[Theta]S[x]^2)C2\[Phi]S2[x] C2\[Psi]S[x]-c\[Theta]S[x] S2\[Phi]S2[x] S2\[Psi]S[x];
FcB3=1/2  (1+c\[Theta]S[x]^2)C2\[Phi]S2[x] S2\[Psi]S[x]+c\[Theta]S[x] S2\[Phi]S2[x] C2\[Psi]S[x];

SubsList4={c\[Theta]S[x]->c\[Theta]S,C2\[Phi]S[x]->C2\[Phi]S,C2\[Psi]S[x]->C2\[Psi]S,S2\[Phi]S[x]->S2\[Phi]S, S2\[Psi]S[x]->S2\[Psi]S, C2\[Phi]S2[x]->C2\[Phi]S2,S2\[Phi]S2[x] ->S2\[Phi]S2    ,c\[Theta]S'[x]->StorMatD[[kk3,k1,k2]] ,C2\[Phi]S'[x]->StorMatE[[kk3,k1,k2]],C2\[Psi]S'[x]->StorMatF[[kk3,k1,k2]], S2\[Phi]S'[x]->StorMatG[[kk3,k1,k2]]   , S2\[Psi]S'[x]->StorMatH[[kk3,k1,k2]] , C2\[Phi]S2'[x]->StorMatI[[kk3,k1,k2]] , S2\[Phi]S2'[x]->StorMatJ[[kk3,k1,k2]]     };



(* ::Input::Initialization:: *)



(* ::Input::Initialization:: *)



(* ::Input::Initialization:: *)
(*Derivative of FpA,FcA,FpB, FcB*)

Avar1= Simplify[PowerExpand[   N[D[FpA3,x]/.SubsList4]/.SubsList  ]]/.SubsList5 ;
Avar2=Simplify[PowerExpand[   N[D[FcA3,x]/.SubsList4]/.SubsList  ]]/.SubsList5 ;
Avar3=Simplify[PowerExpand[   N[D[FpB3,x]/.SubsList4]/.SubsList  ]]/.SubsList5 ;
Avar4=Simplify[PowerExpand[   N[D[FcB3,x]/.SubsList4]/.SubsList  ]]/.SubsList5 ;
FpA= Simplify[PowerExpand[   N[FpA]/.SubsList4]/.SubsList ] /.SubsList5 ;
FcA=Simplify[PowerExpand[   N[FcA]/.SubsList4]/.SubsList ] /.SubsList5 ;
FpB=Simplify[ PowerExpand[   N[FpB]/.SubsList4]/.SubsList ] /.SubsList5 ;
FcB=Simplify[PowerExpand[   N[FcB]/.SubsList4]/.SubsList]  /.SubsList5 ;


(*Activate 'Simplify' below only if catalog size > 1000 *)
AAmpA1=N[(*Simplify[*)PowerExpand[ AAmpA1/.SubsList4/.SubsList](*]*)  /.SubsList5     ] ;
AAmpA2=N[(*Simplify[*)PowerExpand[ AAmpA2/.SubsList4/.SubsList](*]*)  /.SubsList5     ];
AAmpA3=N[(*Simplify[*)PowerExpand[ AAmpA3/.SubsList4/.SubsList](*]*)  /.SubsList5     ];
AAmpB1=N[(*Simplify[*)PowerExpand[ AAmpB1/.SubsList4/.SubsList](*]*)  /.SubsList5     ];
AAmpB2=N[(*Simplify[*)PowerExpand[ AAmpB2/.SubsList4/.SubsList](*]*)  /.SubsList5     ];
AAmpB3=N[(*Simplify[*)PowerExpand[ AAmpB3/.SubsList4/.SubsList](*]*)  /.SubsList5     ];


POMS=(1.5 10^-11)^2 (1+   (2 0.001/f)^4     );
PACC=(3 10^-15)^2 (1+  (0.4 0.001/f)^2  )(1+    (f/(8 0.001))^4   );
\[Alpha]zz = 0.165;
\[Beta]zz=299.;
\[Gamma]zz=1340.;
kzz=611.;
fkzz=0.00173;
Azz=9. 10^-45;
LL=2.5 10^9;
fstar = 19.09 10^-3;
SC=   Azz f^(-7/3) E^(-f \[Alpha]zz + \[Beta]zz f Sin[kzz f]) (1+ Tanh[\[Gamma]zz(fkzz-f)]          );
Sf = N[  1./( LL^2)  (POMS+4 PACC/(2. \[Pi] f)^4)(1.+6./10. (f/fstar)^2) + SC   ];

dhAd1l1[Gli_]:=mcz StorMatC[[1,Gli,1]] (-I  StorMatA[[1,Gli,1]]  StorMatC[[2,Gli,1]]+   StorMatM[[1,Gli,1]]    );
dhAd2l1[Gli_]:=\[Eta] StorMatC[[1,Gli,1]] (-I  StorMatA[[1,Gli,1]]  StorMatC[[3,Gli,1]]+  StorMatM[[2,Gli,1]]   );
dhAd3l1[Gli_]:= StorMatC[[1,Gli,1]] (-I  StorMatA[[1,Gli,1]]  StorMatC[[4,Gli,1]]+   StorMatM[[3,Gli,1]]   );
dhAd4l1[Gli_]:= StorMatC[[1,Gli,1]] (-I  StorMatA[[1,Gli,1]]  StorMatC[[5,Gli,1]]+   StorMatM[[4,Gli,1]]  ) ;
dhAd5l1[Gli_]:=Dl StorMatC[[1,Gli,1]] (-I  StorMatA[[1,Gli,1]]  StorMatC[[6,Gli,1]]+   StorMatM[[5,Gli,1]]  );
dhAd6l1[Gli_]:= StorMatC[[1,Gli,1]] (-I  StorMatA[[1,Gli,1]]  StorMatC[[7,Gli,1]]+   StorMatM[[6,Gli,1]]  );
dhAd7l1[Gli_]:= StorMatC[[1,Gli,1]] (-I  StorMatA[[1,Gli,1]]  StorMatC[[8,Gli,1]]+   StorMatM[[7,Gli,1]]);
dhAd8l1[Gli_]:=StorMatC[[1,Gli,1]] (-I  StorMatA[[1,Gli,1]]  StorMatC[[9,Gli,1]]+   StorMatM[[8,Gli,1]]);
dhAd9l1[Gli_]:=StorMatC[[1,Gli,1]] (-I  StorMatA[[1,Gli,1]]  StorMatC[[10,Gli,1]]+   StorMatM[[9,Gli,1]]);
dhAd10l1[Gli_]:=StorMatC[[1,Gli,1]] (-I  StorMatA[[1,Gli,1]]  StorMatC[[11,Gli,1]]+   StorMatM[[10,Gli,1]] );
dhAd11l1[Gli_]:=StorMatC[[1,Gli,1]] ( 0   +   StorMatM[[11,Gli,1]] );

dhAd1l2[Gli_]:=mcz StorMatC[[1,Gli,2]] (-I  StorMatA[[1,Gli,2]]  StorMatC[[2,Gli,2]]+   StorMatM[[1,Gli,2]]    );
dhAd2l2[Gli_]:=\[Eta] StorMatC[[1,Gli,2]] (-I  StorMatA[[1,Gli,2]]  StorMatC[[3,Gli,2]]+  StorMatM[[2,Gli,2]]   );
dhAd3l2[Gli_]:= StorMatC[[1,Gli,2]] (-I  StorMatA[[1,Gli,2]]  StorMatC[[4,Gli,2]]+   StorMatM[[3,Gli,2]]   );
dhAd4l2[Gli_]:= StorMatC[[1,Gli,2]] (-I  StorMatA[[1,Gli,2]]  StorMatC[[5,Gli,2]]+   StorMatM[[4,Gli,2]]  ) ;
dhAd5l2[Gli_]:=Dl StorMatC[[1,Gli,2]] (-I  StorMatA[[1,Gli,2]]  StorMatC[[6,Gli,2]]+   StorMatM[[5,Gli,2]]  );
dhAd6l2[Gli_]:= StorMatC[[1,Gli,2]] (-I  StorMatA[[1,Gli,2]]  StorMatC[[7,Gli,2]]+   StorMatM[[6,Gli,2]]  );
dhAd7l2[Gli_]:= StorMatC[[1,Gli,2]] (-I  StorMatA[[1,Gli,2]]  StorMatC[[8,Gli,2]]+   StorMatM[[7,Gli,2]]);
dhAd8l2[Gli_]:=StorMatC[[1,Gli,2]] (-I  StorMatA[[1,Gli,2]]  StorMatC[[9,Gli,2]]+   StorMatM[[8,Gli,2]]);
dhAd9l2[Gli_]:=StorMatC[[1,Gli,2]] (-I  StorMatA[[1,Gli,2]]  StorMatC[[10,Gli,2]]+   StorMatM[[9,Gli,2]]);
dhAd10l2[Gli_]:=StorMatC[[1,Gli,2]] (-I  StorMatA[[1,Gli,2]]  StorMatC[[11,Gli,2]]+   StorMatM[[10,Gli,2]] );
dhAd11l2[Gli_]:=StorMatC[[1,Gli,2]] ( 0   +   StorMatM[[11,Gli,2]] );

dhAd1l3[Gli_]:=mcz StorMatC[[1,Gli,3]] (-I  StorMatA[[1,Gli,3]]  StorMatC[[2,Gli,3]]+   StorMatM[[1,Gli,3]]    );
dhAd2l3[Gli_]:=\[Eta] StorMatC[[1,Gli,3]] (-I  StorMatA[[1,Gli,3]]  StorMatC[[3,Gli,3]]+  StorMatM[[2,Gli,3]]   );
dhAd3l3[Gli_]:= StorMatC[[1,Gli,3]] (-I  StorMatA[[1,Gli,3]]  StorMatC[[4,Gli,3]]+   StorMatM[[3,Gli,3]]   );
dhAd4l3[Gli_]:= StorMatC[[1,Gli,3]] (-I  StorMatA[[1,Gli,3]]  StorMatC[[5,Gli,3]]+   StorMatM[[4,Gli,3]]  ) ;
dhAd5l3[Gli_]:=Dl StorMatC[[1,Gli,3]] (-I  StorMatA[[1,Gli,3]]  StorMatC[[6,Gli,3]]+   StorMatM[[5,Gli,3]]  );
dhAd6l3[Gli_]:= StorMatC[[1,Gli,3]] (-I  StorMatA[[1,Gli,3]]  StorMatC[[7,Gli,3]]+   StorMatM[[6,Gli,3]]  );
dhAd7l3[Gli_]:= StorMatC[[1,Gli,3]] (-I  StorMatA[[1,Gli,3]]  StorMatC[[8,Gli,3]]+   StorMatM[[7,Gli,3]]);
dhAd8l3[Gli_]:=StorMatC[[1,Gli,3]] (-I  StorMatA[[1,Gli,3]]  StorMatC[[9,Gli,3]]+   StorMatM[[8,Gli,3]]);
dhAd9l3[Gli_]:=StorMatC[[1,Gli,3]] (-I  StorMatA[[1,Gli,3]]  StorMatC[[10,Gli,3]]+   StorMatM[[9,Gli,3]]);
dhAd10l3[Gli_]:=StorMatC[[1,Gli,3]] (-I  StorMatA[[1,Gli,3]]  StorMatC[[11,Gli,3]]+   StorMatM[[10,Gli,3]] );
dhAd11l3[Gli_]:=StorMatC[[1,Gli,3]] ( 0   +   StorMatM[[11,Gli,3]] );

dhBd1l1[Gli_]:=mcz StorMatC[[1,Gli,1]] (-I  StorMatB[[1,Gli,1]]  StorMatC[[2,Gli,1]]+   StorMatN[[1,Gli,1]]    );
dhBd2l1[Gli_]:=\[Eta] StorMatC[[1,Gli,1]] (-I  StorMatB[[1,Gli,1]]  StorMatC[[3,Gli,1]]+  StorMatN[[2,Gli,1]]   );
dhBd3l1[Gli_]:= StorMatC[[1,Gli,1]] (-I  StorMatB[[1,Gli,1]]  StorMatC[[4,Gli,1]]+   StorMatN[[3,Gli,1]]   );
dhBd4l1[Gli_]:= StorMatC[[1,Gli,1]] (-I  StorMatB[[1,Gli,1]]  StorMatC[[5,Gli,1]]+   StorMatN[[4,Gli,1]]  ) ;
dhBd5l1[Gli_]:=Dl StorMatC[[1,Gli,1]] (-I  StorMatB[[1,Gli,1]]  StorMatC[[6,Gli,1]]+   StorMatN[[5,Gli,1]]  );
dhBd6l1[Gli_]:= StorMatC[[1,Gli,1]] (-I  StorMatB[[1,Gli,1]]  StorMatC[[7,Gli,1]]+   StorMatN[[6,Gli,1]]  );
dhBd7l1[Gli_]:= StorMatC[[1,Gli,1]] (-I  StorMatB[[1,Gli,1]]  StorMatC[[8,Gli,1]]+   StorMatN[[7,Gli,1]]);
dhBd8l1[Gli_]:=StorMatC[[1,Gli,1]] (-I  StorMatB[[1,Gli,1]]  StorMatC[[9,Gli,1]]+   StorMatN[[8,Gli,1]]);
dhBd9l1[Gli_]:=StorMatC[[1,Gli,1]] (-I  StorMatB[[1,Gli,1]]  StorMatC[[10,Gli,1]]+   StorMatN[[9,Gli,1]]);
dhBd10l1[Gli_]:=StorMatC[[1,Gli,1]] (-I  StorMatB[[1,Gli,1]]  StorMatC[[11,Gli,1]]+   StorMatN[[10,Gli,1]] );
dhBd11l1[Gli_]:=StorMatC[[1,Gli,1]] ( 0   +   StorMatN[[11,Gli,1]] );

dhBd1l2[Gli_]:=mcz StorMatC[[1,Gli,2]] (-I  StorMatB[[1,Gli,2]]  StorMatC[[2,Gli,2]]+   StorMatN[[1,Gli,2]]    );
dhBd2l2[Gli_]:=\[Eta] StorMatC[[1,Gli,2]] (-I  StorMatB[[1,Gli,2]]  StorMatC[[3,Gli,2]]+  StorMatN[[2,Gli,2]]   );
dhBd3l2[Gli_]:= StorMatC[[1,Gli,2]] (-I  StorMatB[[1,Gli,2]]  StorMatC[[4,Gli,2]]+   StorMatN[[3,Gli,2]]   );
dhBd4l2[Gli_]:= StorMatC[[1,Gli,2]] (-I  StorMatB[[1,Gli,2]]  StorMatC[[5,Gli,2]]+   StorMatN[[4,Gli,2]]  ) ;
dhBd5l2[Gli_]:=Dl StorMatC[[1,Gli,2]] (-I  StorMatB[[1,Gli,2]]  StorMatC[[6,Gli,2]]+   StorMatN[[5,Gli,2]]  );
dhBd6l2[Gli_]:= StorMatC[[1,Gli,2]] (-I  StorMatB[[1,Gli,2]]  StorMatC[[7,Gli,2]]+   StorMatN[[6,Gli,2]]  );
dhBd7l2[Gli_]:= StorMatC[[1,Gli,2]] (-I  StorMatB[[1,Gli,2]]  StorMatC[[8,Gli,2]]+   StorMatN[[7,Gli,2]]);
dhBd8l2[Gli_]:=StorMatC[[1,Gli,2]] (-I  StorMatB[[1,Gli,2]]  StorMatC[[9,Gli,2]]+   StorMatN[[8,Gli,2]]);
dhBd9l2[Gli_]:=StorMatC[[1,Gli,2]] (-I  StorMatB[[1,Gli,2]]  StorMatC[[10,Gli,2]]+   StorMatN[[9,Gli,2]]);
dhBd10l2[Gli_]:=StorMatC[[1,Gli,2]] (-I  StorMatB[[1,Gli,2]]  StorMatC[[11,Gli,2]]+   StorMatN[[10,Gli,2]] );
dhBd11l2[Gli_]:=StorMatC[[1,Gli,2]] ( 0   +   StorMatN[[11,Gli,2]] );

dhBd1l3[Gli_]:=mcz StorMatC[[1,Gli,3]] (-I  StorMatB[[1,Gli,3]]  StorMatC[[2,Gli,3]]+   StorMatN[[1,Gli,3]]    );
dhBd2l3[Gli_]:=\[Eta] StorMatC[[1,Gli,3]] (-I  StorMatB[[1,Gli,3]]  StorMatC[[3,Gli,3]]+  StorMatN[[2,Gli,3]]   );
dhBd3l3[Gli_]:= StorMatC[[1,Gli,3]] (-I  StorMatB[[1,Gli,3]]  StorMatC[[4,Gli,3]]+   StorMatN[[3,Gli,3]]   );
dhBd4l3[Gli_]:= StorMatC[[1,Gli,3]] (-I  StorMatB[[1,Gli,3]]  StorMatC[[5,Gli,3]]+   StorMatN[[4,Gli,3]]  ) ;
dhBd5l3[Gli_]:=Dl StorMatC[[1,Gli,3]] (-I  StorMatB[[1,Gli,3]]  StorMatC[[6,Gli,3]]+   StorMatN[[5,Gli,3]]  );
dhBd6l3[Gli_]:= StorMatC[[1,Gli,3]] (-I  StorMatB[[1,Gli,3]]  StorMatC[[7,Gli,3]]+   StorMatN[[6,Gli,3]]  );
dhBd7l3[Gli_]:= StorMatC[[1,Gli,3]] (-I  StorMatB[[1,Gli,3]]  StorMatC[[8,Gli,3]]+   StorMatN[[7,Gli,3]]);
dhBd8l3[Gli_]:=StorMatC[[1,Gli,3]] (-I  StorMatB[[1,Gli,3]]  StorMatC[[9,Gli,3]]+   StorMatN[[8,Gli,3]]);
dhBd9l3[Gli_]:=StorMatC[[1,Gli,3]] (-I  StorMatB[[1,Gli,3]]  StorMatC[[10,Gli,3]]+   StorMatN[[9,Gli,3]]);
dhBd10l3[Gli_]:=StorMatC[[1,Gli,3]] (-I  StorMatB[[1,Gli,3]]  StorMatC[[11,Gli,3]]+   StorMatN[[10,Gli,3]] );
dhBd11l3[Gli_]:=StorMatC[[1,Gli,3]] ( 0   +   StorMatN[[11,Gli,3]] );



(* ::Input::Initialization:: *)
DistributeDefinitions[Sf];
DistributeDefinitions[Phase2];
DistributeDefinitions[dPhdmcz];
DistributeDefinitions[dPhd\[Eta]];
DistributeDefinitions[dPhdtc];
DistributeDefinitions[dPhd\[Phi]c];
DistributeDefinitions[dPhdDl];
DistributeDefinitions[dPhde0];
DistributeDefinitions[dPhd\[Theta]Sb];
DistributeDefinitions[dPhd\[Phi]Sb];
DistributeDefinitions[dPhd\[Theta]Lb];
DistributeDefinitions[dPhd\[Theta]Lb];

DistributeDefinitions[AAmpA1];
DistributeDefinitions[AAmpA2];
DistributeDefinitions[AAmpA3];
DistributeDefinitions[AAmpB1];
DistributeDefinitions[AAmpB2];
DistributeDefinitions[AAmpB3];

DistributeDefinitions[FpA];
DistributeDefinitions[FcA];
DistributeDefinitions[FpB];
DistributeDefinitions[FcB];

DistributeDefinitions[Avar1];
DistributeDefinitions[Avar2];
DistributeDefinitions[Avar3];
DistributeDefinitions[Avar4];

DistributeDefinitions[dc\[Theta]Sdmcz  ];
DistributeDefinitions[dc\[Theta]Sd\[Eta]  ];
DistributeDefinitions[dc\[Theta]Sdtc  ];
DistributeDefinitions[dc\[Theta]Sd\[Phi]c  ];
DistributeDefinitions[dc\[Theta]SdDl  ];
DistributeDefinitions[dc\[Theta]Sde0  ];
DistributeDefinitions[dc\[Theta]Sd\[Theta]Sb  ];
DistributeDefinitions[dc\[Theta]Sd\[Phi]Sb  ];
DistributeDefinitions[dc\[Theta]Sd\[Theta]Lb  ];
DistributeDefinitions[dc\[Theta]Sd\[Phi]Lb];
DistributeDefinitions[dC2\[Phi]Sdmcz  ];
DistributeDefinitions[dC2\[Phi]Sd\[Eta]  ];
DistributeDefinitions[dC2\[Phi]Sdtc  ];
DistributeDefinitions[dC2\[Phi]Sd\[Phi]c  ];
DistributeDefinitions[dC2\[Phi]SdDl  ];
DistributeDefinitions[dC2\[Phi]Sde0  ];
DistributeDefinitions[dC2\[Phi]Sd\[Theta]Sb  ];
DistributeDefinitions[dC2\[Phi]Sd\[Phi]Sb  ];
DistributeDefinitions[dC2\[Phi]Sd\[Theta]Lb  ];
DistributeDefinitions[dC2\[Phi]Sd\[Phi]Lb];
DistributeDefinitions[dC2\[Psi]Sdmcz  ];
DistributeDefinitions[dC2\[Psi]Sd\[Eta]  ];
DistributeDefinitions[dC2\[Psi]Sdtc  ];
DistributeDefinitions[dC2\[Psi]Sd\[Phi]c  ];
DistributeDefinitions[dC2\[Psi]SdDl  ];
DistributeDefinitions[dC2\[Psi]Sde0  ];
DistributeDefinitions[dC2\[Psi]Sd\[Theta]Sb  ];
DistributeDefinitions[dC2\[Psi]Sd\[Phi]Sb  ];
DistributeDefinitions[dC2\[Psi]Sd\[Theta]Lb  ];
DistributeDefinitions[dC2\[Psi]Sd\[Phi]Lb];
DistributeDefinitions[dS2\[Phi]Sdmcz  ];
DistributeDefinitions[dS2\[Phi]Sd\[Eta]  ];
DistributeDefinitions[dS2\[Phi]Sdtc  ];
DistributeDefinitions[dS2\[Phi]Sd\[Phi]c  ];
DistributeDefinitions[dS2\[Phi]SdDl  ];
DistributeDefinitions[dS2\[Phi]Sde0  ];
DistributeDefinitions[dS2\[Phi]Sd\[Theta]Sb  ];
DistributeDefinitions[dS2\[Phi]Sd\[Phi]Sb  ];
DistributeDefinitions[dS2\[Phi]Sd\[Theta]Lb  ];
DistributeDefinitions[dS2\[Phi]Sd\[Phi]Lb];
DistributeDefinitions[dS2\[Psi]Sdmcz  ];
DistributeDefinitions[dS2\[Psi]Sd\[Eta]  ];
DistributeDefinitions[dS2\[Psi]Sdtc  ];
DistributeDefinitions[dS2\[Psi]Sd\[Phi]c  ];
DistributeDefinitions[dS2\[Psi]SdDl  ];
DistributeDefinitions[dS2\[Psi]Sde0  ];
DistributeDefinitions[dS2\[Psi]Sd\[Theta]Sb  ];
DistributeDefinitions[dS2\[Psi]Sd\[Phi]Sb  ];
DistributeDefinitions[dS2\[Psi]Sd\[Theta]Lb  ];
DistributeDefinitions[dS2\[Psi]Sd\[Phi]Lb];
DistributeDefinitions[dC2\[Phi]S2dmcz  ];
DistributeDefinitions[dC2\[Phi]S2d\[Eta]  ];
DistributeDefinitions[dC2\[Phi]S2dtc  ];
DistributeDefinitions[dC2\[Phi]S2d\[Phi]c  ];
DistributeDefinitions[dC2\[Phi]S2dDl  ];
DistributeDefinitions[dC2\[Phi]S2de0  ];
DistributeDefinitions[dC2\[Phi]S2d\[Theta]Sb  ];
DistributeDefinitions[dC2\[Phi]S2d\[Phi]Sb  ];
DistributeDefinitions[dC2\[Phi]S2d\[Theta]Lb  ];
DistributeDefinitions[dC2\[Phi]S2d\[Phi]Lb];
DistributeDefinitions[dS2\[Phi]S2dmcz  ];
DistributeDefinitions[dS2\[Phi]S2d\[Eta]  ];
DistributeDefinitions[dS2\[Phi]S2dtc  ];
DistributeDefinitions[dS2\[Phi]S2d\[Phi]c  ];
DistributeDefinitions[dS2\[Phi]S2dDl  ];
DistributeDefinitions[dS2\[Phi]S2de0  ];
DistributeDefinitions[dS2\[Phi]S2d\[Theta]Sb  ];
DistributeDefinitions[dS2\[Phi]S2d\[Phi]Sb  ];
DistributeDefinitions[dS2\[Phi]S2d\[Theta]Lb  ];
DistributeDefinitions[dS2\[Phi]S2d\[Phi]Lb];

DistributeDefinitions[dAmpA1dmcz ];
DistributeDefinitions[dAmpA1d\[Eta] ];
DistributeDefinitions[dAmpA1dtc ];
DistributeDefinitions[dAmpA1d\[Phi]c ];
DistributeDefinitions[dAmpA1dDl];
DistributeDefinitions[dAmpA1de0];
DistributeDefinitions[dAmpA1d\[Theta]Sb ];
DistributeDefinitions[dAmpA1d\[Phi]Sb ];
DistributeDefinitions[dAmpA1d\[Theta]Lb ];
DistributeDefinitions[dAmpA1d\[Phi]Lb ];
DistributeDefinitions[dAmpA1d\[Beta] ];
DistributeDefinitions[dAmpA2dmcz ];
DistributeDefinitions[dAmpA2d\[Eta] ];
DistributeDefinitions[dAmpA2dtc ];
DistributeDefinitions[dAmpA2d\[Phi]c ];
DistributeDefinitions[dAmpA2dDl];
DistributeDefinitions[dAmpA2de0];
DistributeDefinitions[dAmpA2d\[Theta]Sb ];
DistributeDefinitions[dAmpA2d\[Phi]Sb ];
DistributeDefinitions[dAmpA2d\[Theta]Lb ];
DistributeDefinitions[dAmpA2d\[Phi]Lb ];
DistributeDefinitions[dAmpA2d\[Beta] ];
DistributeDefinitions[dAmpA3dmcz ];
DistributeDefinitions[dAmpA3d\[Eta] ];
DistributeDefinitions[dAmpA3dtc ];
DistributeDefinitions[dAmpA3d\[Phi]c ];
DistributeDefinitions[dAmpA3dDl];
DistributeDefinitions[dAmpA3de0];
DistributeDefinitions[dAmpA3d\[Theta]Sb ];
DistributeDefinitions[dAmpA3d\[Phi]Sb ];
DistributeDefinitions[dAmpA3d\[Theta]Lb ];
DistributeDefinitions[dAmpA3d\[Phi]Lb ];
DistributeDefinitions[dAmpA3d\[Beta] ];
DistributeDefinitions[dAmpB1dmcz ];
DistributeDefinitions[dAmpB1d\[Eta] ];
DistributeDefinitions[dAmpB1dtc ];
DistributeDefinitions[dAmpB1d\[Phi]c ];
DistributeDefinitions[dAmpB1dDl];
DistributeDefinitions[dAmpB1de0];
DistributeDefinitions[dAmpB1d\[Theta]Sb ];
DistributeDefinitions[dAmpB1d\[Phi]Sb ];
DistributeDefinitions[dAmpB1d\[Theta]Lb ];
DistributeDefinitions[dAmpB1d\[Phi]Lb ];
DistributeDefinitions[dAmpB1d\[Beta] ];
DistributeDefinitions[dAmpB2dmcz ];
DistributeDefinitions[dAmpB2d\[Eta] ];
DistributeDefinitions[dAmpB2dtc ];
DistributeDefinitions[dAmpB2d\[Phi]c ];
DistributeDefinitions[dAmpB2dDl];
DistributeDefinitions[dAmpB2de0];
DistributeDefinitions[dAmpB2d\[Theta]Sb ];
DistributeDefinitions[dAmpB2d\[Phi]Sb ];
DistributeDefinitions[dAmpB2d\[Theta]Lb ];
DistributeDefinitions[dAmpB2d\[Phi]Lb ];
DistributeDefinitions[dAmpB2d\[Beta] ];
DistributeDefinitions[dAmpB3dmcz ];
DistributeDefinitions[dAmpB3d\[Eta] ];
DistributeDefinitions[dAmpB3dtc ];
DistributeDefinitions[dAmpB3d\[Phi]c ];
DistributeDefinitions[dAmpB3dDl];
DistributeDefinitions[dAmpB3de0];
DistributeDefinitions[dAmpB3d\[Theta]Sb ];
DistributeDefinitions[dAmpB3d\[Phi]Sb ];
DistributeDefinitions[dAmpB3d\[Theta]Lb ];
DistributeDefinitions[dAmpB3d\[Phi]Lb ];
DistributeDefinitions[dAmpB3d\[Beta] ];

DistributeDefinitions[dhAd1l1[Gli_]];
DistributeDefinitions[dhAd2l1[Gli_]];
DistributeDefinitions[dhAd3l1[Gli_]];
DistributeDefinitions[dhAd4l1[Gli_]];
DistributeDefinitions[dhAd5l1[Gli_]];
DistributeDefinitions[dhAd6l1[Gli_]];
DistributeDefinitions[dhAd7l1[Gli_]];
DistributeDefinitions[dhAd8l1[Gli_]];
DistributeDefinitions[dhAd9l1[Gli_]];
DistributeDefinitions[dhAd10l1[Gli_]];
DistributeDefinitions[dhAd11l1[Gli_]];
DistributeDefinitions[dhAd1l2[Gli_]];
DistributeDefinitions[dhAd2l2[Gli_]];
DistributeDefinitions[dhAd3l2[Gli_]];
DistributeDefinitions[dhAd4l2[Gli_]];
DistributeDefinitions[dhAd5l2[Gli_]];
DistributeDefinitions[dhAd6l2[Gli_]];
DistributeDefinitions[dhAd7l2[Gli_]];
DistributeDefinitions[dhAd8l2[Gli_]];
DistributeDefinitions[dhAd9l2[Gli_]];
DistributeDefinitions[dhAd10l2[Gli_]];
DistributeDefinitions[dhAd11l2[Gli_]];
DistributeDefinitions[dhAd1l3[Gli_]];
DistributeDefinitions[dhAd2l3[Gli_]];
DistributeDefinitions[dhAd3l3[Gli_]];
DistributeDefinitions[dhAd4l3[Gli_]];
DistributeDefinitions[dhAd5l3[Gli_]];
DistributeDefinitions[dhAd6l3[Gli_]];
DistributeDefinitions[dhAd7l3[Gli_]];
DistributeDefinitions[dhAd8l3[Gli_]];
DistributeDefinitions[dhAd9l3[Gli_]];
DistributeDefinitions[dhAd10l3[Gli_]];
DistributeDefinitions[dhAd11l3[Gli_]];
DistributeDefinitions[dhBd1l1[Gli_]];
DistributeDefinitions[dhBd2l1[Gli_]];
DistributeDefinitions[dhBd3l1[Gli_]];
DistributeDefinitions[dhBd4l1[Gli_]];
DistributeDefinitions[dhBd5l1[Gli_]];
DistributeDefinitions[dhBd6l1[Gli_]];
DistributeDefinitions[dhBd7l1[Gli_]];
DistributeDefinitions[dhBd8l1[Gli_]];
DistributeDefinitions[dhBd9l1[Gli_]];
DistributeDefinitions[dhBd10l1[Gli_]];
DistributeDefinitions[dhBd11l1[Gli_]];
DistributeDefinitions[dhBd1l2[Gli_]];
DistributeDefinitions[dhBd2l2[Gli_]];
DistributeDefinitions[dhBd3l2[Gli_]];
DistributeDefinitions[dhBd4l2[Gli_]];
DistributeDefinitions[dhBd5l2[Gli_]];
DistributeDefinitions[dhBd6l2[Gli_]];
DistributeDefinitions[dhBd7l2[Gli_]];
DistributeDefinitions[dhBd8l2[Gli_]];
DistributeDefinitions[dhBd9l2[Gli_]];
DistributeDefinitions[dhBd10l2[Gli_]];
DistributeDefinitions[dhBd11l2[Gli_]];
DistributeDefinitions[dhBd1l3[Gli_]];
DistributeDefinitions[dhBd2l3[Gli_]];
DistributeDefinitions[dhBd3l3[Gli_]];
DistributeDefinitions[dhBd4l3[Gli_]];
DistributeDefinitions[dhBd5l3[Gli_]];
DistributeDefinitions[dhBd6l3[Gli_]];
DistributeDefinitions[dhBd7l3[Gli_]];
DistributeDefinitions[dhBd8l3[Gli_]];
DistributeDefinitions[dhBd9l3[Gli_]];
DistributeDefinitions[dhBd10l3[Gli_]];
DistributeDefinitions[dhBd11l3[Gli_]];


(* ::Input::Initialization:: *)



 

catalog=Import["non_astro_catalog.dat"];                      (*ATTENTION PLEASE*)  
nsource=Length[catalog];
Ncatalog=nsource;                                                                            (*ATTENTION PLEASE*)
histData= ConstantArray[0,{Ncatalog,51}];
SetSharedVariable[histData];

e0=0.001;                                                                                                    (*ATTENTION PLEASE*)  

Needs["NumericalDifferentialEquationAnalysis`"];


LaunchKernels[12];                                            (*ATTENTION PLEASE*)

ParallelDo[{

Needs["NumericalDifferentialEquationAnalysis`"];

Gln=100;                          (*ATTENTION PLEASE: depends on the catalog of binaries*)  

tc=0.;
\[Phi]c=0.;
Msun=  1.989*10^30;
megapc=  3.086*10^22;

Clear[f];

zs=catalog[[j,1]];
Dl=catalog[[j,2]] megapc;
m1=catalog[[j,3]] Msun;
m2=catalog[[j,4]] Msun;
mt=m1+m2;
\[Eta]=(m1*m2)/mt^2;
mc=N[mt*\[Eta]^(3/5)] ;
mcz=mc*(1+zs);
\[Theta]Sb=catalog[[j,8]];
\[Phi]Sb=catalog[[j,9]];
\[Theta]Lb=catalog[[j,10]]; 
\[Phi]Lb=catalog[[j,11]];

\[Beta]= catalog[[j,17]];
s2\[Beta] =Sin[2 \[Beta]];
c2\[Beta] =Cos[2 \[Beta]];
s\[Beta] =Sin[\[Beta]];
c\[Beta] =Cos[\[Beta]];

C\[Theta]Sb= Cos[\[Theta]Sb];
S\[Theta]Sb= Sin[\[Theta]Sb];
C\[Phi]Sb= Cos[\[Phi]Sb];
S\[Phi]Sb= Sin[\[Phi]Sb];
C\[Theta]Lb= Cos[\[Theta]Lb];
S\[Theta]Lb= Sin[\[Theta]Lb];
C\[Phi]Lb= Cos[\[Phi]Lb];
S\[Phi]Lb= Sin[\[Phi]Lb];


e02=e0^2;
e04=e0^4;
e06=e0^6;
e03=e0^3;
e05=e0^5;
e07=e0^7;

T1=2;                               
T2=T1 365 24 3600;   
mtz=mt (1+zs) ;  
\[Alpha]\[Alpha]=1.5 10^3;                          
fmax=Min[1. (6^(-3/2) c Msun)/(\[Pi] \[Alpha]\[Alpha] mt),1.];                       
If[e0<0.56,C1=1;,C1=0; ];
Bvar1=tc+1/x^4 (-((5 G m)/(256 c^3 \[Eta]))+C1 (785 e0^2 G m)/(11008 c^3 \[Eta] \[Chi]^(19/9))+C1 e0^4 (-((5222765 G m)/(14475264 c^3 \[Eta] \[Chi]^(38/9)))+(2608555 G m)/(10039296 c^3 \[Eta] \[Chi]^(19/9))))  /.x-> (G m (2 \[Pi] F)/c^3)^(2/3)/.\[Chi]->(2 F)/ f0 /.F->f/2  /.m->mtz; 
Bvar2=tc+1/x^4 (-((5 G m)/(256 c^3 \[Eta]))+C1 (785 e0^2 G m)/(11008 c^3 \[Eta] \[Chi]^(19/9))+C1 e0^4 (-((5222765 G m)/(14475264 c^3 \[Eta] \[Chi]^(38/9)))+(2608555 G m)/(10039296 c^3 \[Eta] \[Chi]^(19/9))))  /.x-> (G m (2 \[Pi] F)/c^3)^(2/3)/.\[Chi]->(2 F)/ f0/.F->fmax/2   /.m->mtz ;
Bvar3=Expand[PowerExpand[Bvar2-Bvar1]];

froot=FindRoot[Bvar3==T2,{f,0.01}];

fmin=f/.froot;  
fmin=1.fmin;

GlMat2=GaussianQuadratureWeights[Gln,Log[fmin],    Log[fmax]   ];    
GlMat=ConstantArray[0,{Gln,2}];

Do[
GlMat[[k1,1]]=Exp[1.0   GlMat2[[k1,1]]]
,{k1,1,Gln}];


Rmcz5u3 =N[ mcz^(-5/3)];
Rmcz8u3 =N[ mcz^(-8/3)];
mcz8u3 =N[ mcz^(8/3)];
mcz5u6=N[mcz^(5/6)];
mcz4u3=N[mcz^(4/3)];
mcz2u3=N[mcz^(2/3)];
\[Eta]8u5=N[\[Eta]^(8/5) ];
\[Eta]6u5=N[\[Eta]^(6/5) ];
R\[Eta]8u5=N[ 1/\[Eta]^(8/5)  ]; 
\[Eta]2u5=N[\[Eta]^(2/5) ];
\[Eta]4u5=N[\[Eta]^(4/5) ];  
R\[Eta]2u5=N[1/\[Eta]^(2/5) ]; 
R\[Eta]4u5=N[1/\[Eta]^(4/5) ];
R\[Eta]3u5=N[ 1/\[Eta]^(3/5)];
\[Eta]1u5=N[\[Eta]^(1/5) ];     
mcz1u3=N[ mcz^(1/3)]; 
mcz5u3=N[ mcz^(5/3)];

mcz7u3=N[mcz^(7/3)];  
R\[Eta]1u5=N[\[Eta]^(-1/5)];
\[Eta]3u5=N[  \[Eta]^(3/5) ];
R\[Eta]6u5=N[  \[Eta]^(-6/5) ];
R\[Eta]7u5=N[ \[Eta]^(-7/5)];
\[Eta]2=N[\[Eta]^2];


StorMatC=ConstantArray[0,{12,Gln,3}]; 
StorMatD=ConstantArray[0,{10,Gln,3}];                                    
StorMatE=ConstantArray[0,{10,Gln,3}];                                  
StorMatF=ConstantArray[0,{10,Gln,3}];                                      
StorMatG=ConstantArray[0,{10,Gln,3}];                            
StorMatH=ConstantArray[0,{10,Gln,3}];                                    
StorMatI=ConstantArray[0,{10,Gln,3}];                                          
StorMatJ=ConstantArray[0,{10,Gln,3}];                                             
StorMatM=ConstantArray[0,{11,Gln,3}];                                 
StorMatN=ConstantArray[0,{11,Gln,3}];                                


StorMatA=ConstantArray[0,{23,Gln,3}];              
StorMatB=ConstantArray[0,{23,Gln,3}];          
StorMatK=ConstantArray[0,{22,Gln}];                 
StorMatL=ConstantArray[0,{3,33}];                         





Do[  
ff=GlMat[[k1,1]]; 

StorMatK[[19,k1]] =N[  ff^(1/18)]   ;                                               (*f^(1/18)*)
StorMatK[[20,k1]] =  StorMatK[[19,k1]]StorMatK[[19,k1]]StorMatK[[19,k1]]  ;                         (*f^(1/6)*)
StorMatK[[21,k1]] =  (StorMatK[[20,k1]])^7;                           (*f^(7/6)*)


StorMatK[[1,k1]] =StorMatK[[19,k1]] StorMatK[[19,k1]] ;                             (*f^(1/9)*)
StorMatK[[2,k1]] =  StorMatK[[1,k1]] StorMatK[[1,k1]] StorMatK[[1,k1]]     ;   (*f^(3/9)*)
StorMatK[[3,k1]] = StorMatK[[2,k1]] StorMatK[[2,k1]];                                           (*f^(6/9)*)  
StorMatK[[4,k1]] = StorMatK[[3,k1]] StorMatK[[3,k1]];                        (*f^(12/9)*)  
StorMatK[[5,k1]] = StorMatK[[4,k1]]StorMatK[[4,k1]] ;                        (*f^(24/9)*)  
StorMatK[[6,k1]] = StorMatK[[3,k1]]StorMatK[[4,k1]]StorMatK[[1,k1]] ;            (*f^(19/9)*)
StorMatK[[7,k1]] = StorMatK[[6,k1]]StorMatK[[3,k1]] ;                        (*f^(25/9)*)    
StorMatK[[8,k1]] = StorMatK[[7,k1]]StorMatK[[2,k1]] ;                        (*f^(28/9)*) 
StorMatK[[9,k1]] = StorMatK[[8,k1]]StorMatK[[2,k1]] ;                        (*f^(31/9)*)     
StorMatK[[10,k1]] = StorMatK[[6,k1]]StorMatK[[6,k1]] ;                        (*f^(38/9)*)
StorMatK[[11,k1]] = StorMatK[[10,k1]]StorMatK[[3,k1]] ;                        (*f^(44/9)*)
StorMatK[[12,k1]] = StorMatK[[11,k1]]StorMatK[[2,k1]] ;                        (*f^(47/9)*)
StorMatK[[13,k1]] = StorMatK[[7,k1]]StorMatK[[7,k1]] ;                        (*f^(50/9)*)
StorMatK[[14,k1]] = StorMatK[[9,k1]]StorMatK[[9,k1]] StorMatK[[2,k1]] ;                        (*f^(65/9)*)

StorMatK[[15,k1]] = (StorMatK[[19,k1]] )^19;                                     (*f^(19/18)*)
StorMatK[[16,k1]] = StorMatK[[15,k1]]StorMatK[[15,k1]] StorMatK[[15,k1]];               (*f^(19/6)*)
StorMatK[[17,k1]] = StorMatK[[3,k1]]StorMatK[[3,k1]]StorMatK[[2,k1]];        (*f^(5/3)*)
StorMatK[[18,k1]] = 1.ff ff;

StorMatK[[22,k1]] =  (StorMatK[[5,k1]] )^3/StorMatK[[2,k1]]                   (*f^(23/3)*);


  ,{k1,Gln}];    
Clear[ff];


Do[  
StorMatL[[l,1]]=N[l^(4/3)];
StorMatL[[l,2]]=N[l^(5/3)];
StorMatL[[l,3]]=N[l^(8/3)];
StorMatL[[l,4]]=N[l^(19/9)];
StorMatL[[l,5]]=N[l^(38/9)];
StorMatL[[l,6]]=N[l^(25/9)];
StorMatL[[l,7]]=N[l^(31/9)];
StorMatL[[l,8]]=N[l^(38/9)];
StorMatL[[l,9]]=N[l^(44/9)];
StorMatL[[l,10]]=N[l^(28/9)];
StorMatL[[l,11]]=N[l^(47/9)];
StorMatL[[l,12]]=N[l^(19/6)];
StorMatL[[l,13]]=N[l^(50/9)];
StorMatL[[l,14]]=N[l l];
StorMatL[[l,15]]=N[l^(19/18) ];
StorMatL[[l,16]]=N[l^(2/3)];
StorMatL[[l,17]]=N[l^(29/3)];
StorMatL[[l,18]]=N[l^(31/3)];
StorMatL[[l,19]]=N[l^(68/9)];
StorMatL[[l,20]]=N[l^(55/9)];
StorMatL[[l,21]]=N[l^(49/9)];
StorMatL[[l,22]]=N[l^(29/3)];
StorMatL[[l,23]]=N[l^(43/9)];
StorMatL[[l,24]]=N[l^(62/9)];
StorMatL[[l,25]]=N[l^(19/3)];
StorMatL[[l,26]]=N[l^(22/3)];
StorMatL[[l,27]]=N[l^(23/3)];
StorMatL[[l,28]]=N[l^(52/9)];
StorMatL[[l,29]]=N[l^(71/9)];
StorMatL[[l,30]]=N[l^(74/9)];
StorMatL[[l,31]]=N[l^(1/3)];
StorMatL[[l,32]]=N[l^(14/9)];
StorMatL[[l,33]]=N[l^(23/3)];

  ,{l,1,3}];                    

Clear[f,l];


Do[

l=k2; 
Do[
f=GlMat[[k1,1]]; 
StorMatD[[1,k1,k2]]=dc\[Theta]Sdmcz  ;
StorMatD[[2,k1,k2]]=dc\[Theta]Sd\[Eta]  ;
StorMatD[[3,k1,k2]]=dc\[Theta]Sdtc  ;
StorMatD[[4,k1,k2]]=dc\[Theta]Sd\[Phi]c  ;
StorMatD[[5,k1,k2]]=dc\[Theta]SdDl  ;
StorMatD[[6,k1,k2]]=dc\[Theta]Sde0  ;
StorMatD[[7,k1,k2]]=dc\[Theta]Sd\[Theta]Sb  ;
StorMatD[[8,k1,k2]]=dc\[Theta]Sd\[Phi]Sb  ;
StorMatD[[9,k1,k2]]=dc\[Theta]Sd\[Theta]Lb  ;
StorMatD[[10,k1,k2]]=dc\[Theta]Sd\[Phi]Lb;
,{k1,1,Gln}];

Do[
f=GlMat[[k1,1]]; 
StorMatE[[1,k1,k2]]=dC2\[Phi]Sdmcz  ;
StorMatE[[2,k1,k2]]=dC2\[Phi]Sd\[Eta]  ;
StorMatE[[3,k1,k2]]=dC2\[Phi]Sdtc  ;
StorMatE[[4,k1,k2]]=dC2\[Phi]Sd\[Phi]c  ;
StorMatE[[5,k1,k2]]=dC2\[Phi]SdDl  ;
StorMatE[[6,k1,k2]]=dC2\[Phi]Sde0  ;
StorMatE[[7,k1,k2]]=dC2\[Phi]Sd\[Theta]Sb  ;
StorMatE[[8,k1,k2]]=dC2\[Phi]Sd\[Phi]Sb  ;
StorMatE[[9,k1,k2]]=dC2\[Phi]Sd\[Theta]Lb  ;
StorMatE[[10,k1,k2]]=dC2\[Phi]Sd\[Phi]Lb;
,{k1,1,Gln}];

Do[
f=GlMat[[k1,1]]; 
StorMatF[[1,k1,k2]]=dC2\[Psi]Sdmcz  ;
StorMatF[[2,k1,k2]]=dC2\[Psi]Sd\[Eta]  ;
StorMatF[[3,k1,k2]]=dC2\[Psi]Sdtc  ;
StorMatF[[4,k1,k2]]=dC2\[Psi]Sd\[Phi]c  ;
StorMatF[[5,k1,k2]]=dC2\[Psi]SdDl  ;
StorMatF[[6,k1,k2]]=dC2\[Psi]Sde0  ;
StorMatF[[7,k1,k2]]=dC2\[Psi]Sd\[Theta]Sb  ;
StorMatF[[8,k1,k2]]=dC2\[Psi]Sd\[Phi]Sb  ;
StorMatF[[9,k1,k2]]=dC2\[Psi]Sd\[Theta]Lb  ;
StorMatF[[10,k1,k2]]=dC2\[Psi]Sd\[Phi]Lb;
,{k1,1,Gln}];


Do[
f=GlMat[[k1,1]]; 
StorMatG[[1,k1,k2]]=dS2\[Phi]Sdmcz  ;
StorMatG[[2,k1,k2]]=dS2\[Phi]Sd\[Eta]  ;
StorMatG[[3,k1,k2]]=dS2\[Phi]Sdtc  ;
StorMatG[[4,k1,k2]]=dS2\[Phi]Sd\[Phi]c  ;
StorMatG[[5,k1,k2]]=dS2\[Phi]SdDl  ;
StorMatG[[6,k1,k2]]=dS2\[Phi]Sde0  ;
StorMatG[[7,k1,k2]]=dS2\[Phi]Sd\[Theta]Sb  ;
StorMatG[[8,k1,k2]]=dS2\[Phi]Sd\[Phi]Sb  ;
StorMatG[[9,k1,k2]]=dS2\[Phi]Sd\[Theta]Lb  ;
StorMatG[[10,k1,k2]]=dS2\[Phi]Sd\[Phi]Lb;
,{k1,1,Gln}];


Do[
f=GlMat[[k1,1]]; 
StorMatH[[1,k1,k2]]=dS2\[Psi]Sdmcz  ;
StorMatH[[2,k1,k2]]=dS2\[Psi]Sd\[Eta]  ;
StorMatH[[3,k1,k2]]=dS2\[Psi]Sdtc  ;
StorMatH[[4,k1,k2]]=dS2\[Psi]Sd\[Phi]c  ;
StorMatH[[5,k1,k2]]=dS2\[Psi]SdDl  ;
StorMatH[[6,k1,k2]]=dS2\[Psi]Sde0  ;
StorMatH[[7,k1,k2]]=dS2\[Psi]Sd\[Theta]Sb  ;
StorMatH[[8,k1,k2]]=dS2\[Psi]Sd\[Phi]Sb  ;
StorMatH[[9,k1,k2]]=dS2\[Psi]Sd\[Theta]Lb  ;
StorMatH[[10,k1,k2]]=dS2\[Psi]Sd\[Phi]Lb;
,{k1,1,Gln}];

Do[
f=GlMat[[k1,1]]; 
StorMatI[[1,k1,k2]]=dC2\[Phi]S2dmcz  ;
StorMatI[[2,k1,k2]]=dC2\[Phi]S2d\[Eta]  ;
StorMatI[[3,k1,k2]]=dC2\[Phi]S2dtc  ;
StorMatI[[4,k1,k2]]=dC2\[Phi]S2d\[Phi]c  ;
StorMatI[[5,k1,k2]]=dC2\[Phi]S2dDl  ;
StorMatI[[6,k1,k2]]=dC2\[Phi]S2de0  ;
StorMatI[[7,k1,k2]]=dC2\[Phi]S2d\[Theta]Sb  ;
StorMatI[[8,k1,k2]]=dC2\[Phi]S2d\[Phi]Sb  ;
StorMatI[[9,k1,k2]]=dC2\[Phi]S2d\[Theta]Lb  ;
StorMatI[[10,k1,k2]]=dC2\[Phi]S2d\[Phi]Lb;
,{k1,1,Gln}];



Do[
f=GlMat[[k1,1]]; 
StorMatJ[[1,k1,k2]]=dS2\[Phi]S2dmcz  ;
StorMatJ[[2,k1,k2]]=dS2\[Phi]S2d\[Eta]  ;
StorMatJ[[3,k1,k2]]=dS2\[Phi]S2dtc  ;
StorMatJ[[4,k1,k2]]=dS2\[Phi]S2d\[Phi]c  ;
StorMatJ[[5,k1,k2]]=dS2\[Phi]S2dDl  ;
StorMatJ[[6,k1,k2]]=dS2\[Phi]S2de0  ;
StorMatJ[[7,k1,k2]]=dS2\[Phi]S2d\[Theta]Sb  ;
StorMatJ[[8,k1,k2]]=dS2\[Phi]S2d\[Phi]Sb  ;
StorMatJ[[9,k1,k2]]=dS2\[Phi]S2d\[Theta]Lb  ;
StorMatJ[[10,k1,k2]]=dS2\[Phi]S2d\[Phi]Lb;
,{k1,1,Gln}];

,{k2,1,3}];    



Do[
 f=GlMat[[k1,1]];
StorMatC[[12,k1,1]]=Sf                                     
,{k1,1,Gln}];


Do[
l=k2;
Do[
 f=GlMat[[k1,1]];
StorMatA[[1,k1,k2]]= ToExpression[StringJoin["AAmpA",ToString[k2]]] ;
StorMatA[[2,k1,k2]]=FcA     ;
StorMatA[[3,k1,k2]]=FpA     ;
,{k1,1,Gln}];    

Do[
 f=GlMat[[k1,1]];

Do[
kk3=k3-3;
StorMatA[[k3,k1,k2]]=Avar1   ;
,{k3,4,13}];  
Do[
kk3=k3-13;
StorMatA[[k3,k1,k2]]=Avar2   ;
,{k3,14,23}];  

,{k1,1,Gln}];  

Do[
f=GlMat[[k1,1]];
StorMatB[[1,k1,k2]]= ToExpression[StringJoin["AAmpB",ToString[k2]]];
StorMatB[[2,k1,k2]]=FcB     ;
StorMatB[[3,k1,k2]]=FpB     ;
,{k1,1,Gln}];    

Do[
 f=GlMat[[k1,1]];

Do[
kk3=k3-3;
StorMatB[[k3,k1,k2]]=Avar3  ;
,{k3,4,13}];  

Do[
kk3=k3-13;
StorMatB[[k3,k1,k2]]=Avar4 ;
,{k3,14,23}];  

,{k1,1,Gln}];  

,{k2,1,3}];                   



Do[
l=k2;              
Do[

 f=GlMat[[k1,1]];
StorMatC[[1,k1,k2]]=E^(-I Phase2)     ;
StorMatC[[2,k1,k2]]=dPhdmcz      ;
StorMatC[[3,k1,k2]]=dPhd\[Eta]           ;
StorMatC[[4,k1,k2]]=dPhdtc           ;
StorMatC[[5,k1,k2]]=dPhd\[Phi]c           ;
StorMatC[[6,k1,k2]]=dPhdDl          ;
StorMatC[[7,k1,k2]]=dPhde0           ;
StorMatC[[8,k1,k2]]=dPhd\[Theta]Sb           ;
StorMatC[[9,k1,k2]]=dPhd\[Phi]Sb           ;
StorMatC[[10,k1,k2]]=dPhd\[Theta]Lb            ;
StorMatC[[11,k1,k2]]=dPhd\[Phi]Lb          ;
,{k1,1,Gln}];  

,{k2,1,3}];                             

Clear[f];
Clear[l];


Do[
Do[
 f=GlMat[[kk1,1]];
k1=kk1;
k2=kk2;
l=kk2;                        

StorMatM[[1,kk1,kk2]]=   ToExpression[StringJoin["dAmpA",ToString[kk2] ,"dmcz"    ]]   ;
StorMatM[[2,kk1,kk2]]=    ToExpression[StringJoin["dAmpA",ToString[kk2] ,"d\[Eta]"    ]]     ;  
StorMatM[[3,kk1,kk2]]=ToExpression[StringJoin["dAmpA",ToString[kk2] ,"dtc"    ]]            ;
StorMatM[[4,kk1,kk2]]= ToExpression[StringJoin["dAmpA",ToString[kk2] ,"d\[Phi]c"    ]]      ;  
StorMatM[[5,kk1,kk2]]= ToExpression[StringJoin["dAmpA",ToString[kk2] ,"dDl"    ]]            ;
StorMatM[[6,kk1,kk2]]=ToExpression[StringJoin["dAmpA",ToString[kk2] ,"de0"    ]]           ;
StorMatM[[7,kk1,kk2]]=  ToExpression[StringJoin["dAmpA",ToString[kk2] ,"d\[Theta]Sb"    ]]      ;
StorMatM[[8,kk1,kk2]]=    ToExpression[StringJoin["dAmpA",ToString[kk2] ,"d\[Phi]Sb"    ]]          ;
StorMatM[[9,kk1,kk2]]=    ToExpression[StringJoin["dAmpA",ToString[kk2] ,"d\[Theta]Lb"    ]]         ;
StorMatM[[10,kk1,kk2]]=     ToExpression[StringJoin["dAmpA",ToString[kk2] ,"d\[Phi]Lb"    ]]         ;
StorMatM[[11,kk1,kk2]]=     ToExpression[StringJoin["dAmpA",ToString[kk2] ,"d\[Beta]"    ]]         ;

StorMatN[[1,kk1,kk2]]=   ToExpression[StringJoin["dAmpB",ToString[kk2] ,"dmcz"    ]]   ;
StorMatN[[2,kk1,kk2]]=    ToExpression[StringJoin["dAmpB",ToString[kk2] ,"d\[Eta]"    ]]     ;
StorMatN[[3,kk1,kk2]]=ToExpression[StringJoin["dAmpB",ToString[kk2] ,"dtc"    ]]            ;
StorMatN[[4,kk1,kk2]]= ToExpression[StringJoin["dAmpB",ToString[kk2] ,"d\[Phi]c"    ]]            ;  
StorMatN[[5,kk1,kk2]]= ToExpression[StringJoin["dAmpB",ToString[kk2] ,"dDl"    ]]            ;
StorMatN[[6,kk1,kk2]]=ToExpression[StringJoin["dAmpB",ToString[kk2] ,"de0"    ]]           ;
StorMatN[[7,kk1,kk2]]=  ToExpression[StringJoin["dAmpB",ToString[kk2] ,"d\[Theta]Sb"    ]]      ;
StorMatN[[8,kk1,kk2]]= ToExpression[StringJoin["dAmpB",ToString[kk2] ,"d\[Phi]Sb"    ]]          ;
StorMatN[[9,kk1,kk2]]= ToExpression[StringJoin["dAmpB",ToString[kk2] ,"d\[Theta]Lb"    ]]         ;
StorMatN[[10,kk1,kk2]]=ToExpression[StringJoin["dAmpB",ToString[kk2] ,"d\[Phi]Lb"    ]]         ;
StorMatN[[11,kk1,kk2]]=     ToExpression[StringJoin["dAmpB",ToString[kk2] ,"d\[Beta]"    ]]         ;

,{kk1,1,Gln}];       
,{kk2,1,3}];                             


Clear[k1,k2,f];


nf=11;
fisherM=ConstantArray[0,{nf,nf}];

Do[Do[
sum=0;
Do[
Gli=k3;
f=GlMat[[k3,1]] ;

var1[Gli_]:=Re[   
   ToExpression[StringJoin[ "Conjugate[dhAd",ToString[k1],"l1[",ToString[Gli],"]]","dhAd",ToString[k2],"l1[",ToString[Gli],"]"  ] ]+ ToExpression[StringJoin[ "Conjugate[dhAd",ToString[k1],"l2[",ToString[Gli],"]]","dhAd",ToString[k2],"l2[",ToString[Gli],"]"  ] ]+  
ToExpression[StringJoin[ "Conjugate[dhAd",ToString[k1],"l3[",ToString[Gli],"]]","dhAd",ToString[k2],"l3[",ToString[Gli],"]"  ] ]+  
ToExpression[StringJoin[ "Conjugate[dhBd",ToString[k1],"l1[",ToString[Gli],"]]","dhBd",ToString[k2],"l1[",ToString[Gli],"]"  ] ]+  
ToExpression[StringJoin[ "Conjugate[dhBd",ToString[k1],"l2[",ToString[Gli],"]]","dhBd",ToString[k2],"l2[",ToString[Gli],"]"  ] ]+  
ToExpression[StringJoin[ "Conjugate[dhBd",ToString[k1],"l3[",ToString[Gli],"]]","dhBd",ToString[k2],"l3[",ToString[Gli],"]"  ] ]       ] /Sf;

sum=sum+GlMat[[k3,1]]GlMat2[[k3,2]]   var1[Gli]          ;
,{k3,1,Gln}];    
sum=4 sum;    

fisherM[[k1,k2]]= sum   ;
fisherM[[k2,k1]]=fisherM[[k1,k2]];
,{k2,k1,nf}],{k1,1,nf}]    ;




var2A[Gli_]:=(Abs[StorMatA[[1,Gli,1]]]^2  +  Abs[StorMatA[[1,Gli,2]]]^2  +   Abs[StorMatA[[1,Gli,3]]]^2)/Sf;
sum=0;
Do[
Gli=k3;
f=GlMat[[k3,1]] ;

sum=sum+GlMat[[k3,1]]GlMat2[[k3,2]]   var2A[Gli]          ;
,{k3,1,Gln}];    
sum=4 sum;  
snrA = \[Sqrt](sum);

var2B[Gli_]:=(Abs[StorMatB[[1,Gli,1]]]^2  +  Abs[StorMatB[[1,Gli,2]]]^2  +   Abs[StorMatB[[1,Gli,3]]]^2)/Sf;
sum=0;
Do[
Gli=k3;
f=GlMat[[k3,1]] ;

sum=sum+GlMat[[k3,1]]GlMat2[[k3,2]]   var2B[Gli]          ;
,{k3,1,Gln}];    
sum=4 sum;  
snrB = \[Sqrt](sum);

snr=\[Sqrt](snrA snrA  + snrB snrB) ;







fisherM[[nf - 3, nf - 3]] = fisherM[[nf - 3, nf - 3]] + 1./\[Pi]^2;
  fisherM[[nf - 2, nf - 2]] = fisherM[[nf - 2, nf - 2]] + 1./(2 \[Pi])^2;
  fisherM[[nf - 1, nf - 1]] = fisherM[[nf - 1, nf - 1]] + 1./\[Pi]^2;
  fisherM[[nf, nf]] = fisherM[[nf, nf]] + 1./(2 \[Pi])^2;
  
  fisherM = Re[fisherM];
  det = Det[fisherM];
  fisherI = 
   Inverse[fisherM];   
  

  err1 = Sqrt[fisherI[[1, 1]]];
  err2 = Sqrt[fisherI[[2, 2]]];
  err3 = Sqrt[fisherI[[3, 3]]];
  err4 = Sqrt[fisherI[[4, 4]]];
  err5 = Sqrt[fisherI[[5, 5]]];
  err8 = Sqrt[fisherI[[6, 6]]];



  \[CapitalOmega]Ssign = 
   fisherI[[nf - 3, nf - 3]]*fisherI[[nf - 2, nf - 2]] - 
    fisherI[[nf - 3, nf - 2]]^2;
  If[\[CapitalOmega]Ssign >= 0,
   err\[CapitalOmega]S = 
    N[(180/\[Pi])^2*2 \[Pi]*Abs[Sin[\[Theta]Sb]]*
      Sqrt[\[CapitalOmega]Ssign]], 0];
  \[CapitalOmega]Lsign = 
   fisherI[[nf - 1, nf - 1]]*fisherI[[nf, nf]] - 
    fisherI[[nf - 1, nf]]^2;
  If[\[CapitalOmega]Lsign >= 0, 
   err\[CapitalOmega]L = 
    N[(180/\[Pi])^2*2 \[Pi]*Abs[Sin[\[Theta]Lb]]*
      Sqrt[\[CapitalOmega]Lsign]], 0];
  corr0102 = fisherI[[1, 2]]/Sqrt[fisherI[[1, 1]] fisherI[[2, 2]]];
  corr0105 = fisherI[[1, 5]]/Sqrt[fisherI[[1, 1]] fisherI[[5, 5]]];
  corr0108 = fisherI[[1, 6]]/Sqrt[fisherI[[1, 1]] fisherI[[6, 6]]];
  corr0110 = 
   fisherI[[1, nf - 3]]/
    Sqrt[fisherI[[1, 1]] fisherI[[nf - 3, nf - 3]]];
  corr0112 = 
   fisherI[[1, nf - 1]]/
    Sqrt[fisherI[[1, 1]] fisherI[[nf - 1, nf - 1]]];
  corr0205 = fisherI[[2, 5]]/Sqrt[fisherI[[2, 2]] fisherI[[5, 5]]];
  corr0208 = fisherI[[2, 6]]/Sqrt[fisherI[[2, 2]] fisherI[[6, 6]]];
  corr0210 = 
   fisherI[[2, nf - 3]]/
    Sqrt[fisherI[[2, 2]] fisherI[[nf - 3, nf - 3]]];
  corr0212 = 
   fisherI[[2, nf - 1]]/
    Sqrt[fisherI[[2, 2]] fisherI[[nf - 1, nf - 1]]];
  corr0508 = fisherI[[5, 6]]/Sqrt[fisherI[[5, 5]] fisherI[[6, 6]]];
  corr0510 = 
   fisherI[[5, nf - 3]]/
    Sqrt[fisherI[[5, 5]] fisherI[[nf - 3, nf - 3]]];
  corr0512 = 
   fisherI[[5, nf - 1]]/
    Sqrt[fisherI[[5, 5]] fisherI[[nf - 1, nf - 1]]];
  corr0810 = 
   fisherI[[6, nf - 3]]/
    Sqrt[fisherI[[6, 6]] fisherI[[nf - 3, nf - 3]]];
  corr0812 = 
   fisherI[[6, nf - 1]]/
    Sqrt[fisherI[[6, 6]] fisherI[[nf - 1, nf - 1]]];
  corr1012 = 
   fisherI[[nf - 3, nf - 1]]/
    Sqrt[fisherI[[nf - 3, nf - 3]] fisherI[[nf - 1, nf - 1]]];



  
histData[[j, 1]] = j; histData[[j, 2]] = zs; 
  histData[[j, 3]] = m1/Msun; histData[[j, 4]] = m2/Msun; 
  histData[[j, 5]] = snrA; histData[[j, 6]] = snrB;
  histData[[j, 7]] = snr;
  histData[[j, 8]] = N[\[Theta]Sb*180/\[Pi]];
  histData[[j, 9]] = N[\[Phi]Sb*180/\[Pi]];
  histData[[j, 10]] = N[\[Theta]Lb*180/\[Pi]];
  histData[[j, 11]] = N[\[Phi]Lb*180/\[Pi]]; histData[[j, 12]] = err1;
   histData[[j, 13]] = err2; histData[[j, 14]] = err3; 
  histData[[j, 15]] = err4; histData[[j, 16]] = err5;
  histData[[j, 17]] = 0;
  histData[[j, 18]] = 0;
  histData[[j, 19]] = err8;
  histData[[j, 20]] = err\[CapitalOmega]S;
  histData[[j, 21]] = err\[CapitalOmega]L; histData[[j, 22]] = det; 
  histData[[j, 23]] = corr0102; histData[[j, 24]] = corr0105; 
  histData[[j, 25]] = 0; histData[[j, 26]] = 0;
  histData[[j, 27]] = corr0108;
  histData[[j, 28]] = corr0110;
  histData[[j, 29]] = corr0112;
  histData[[j, 30]] = corr0205;
  histData[[j, 31]] = 0; histData[[j, 32]] = 0; 
  histData[[j, 33]] = corr0208; histData[[j, 34]] = corr0210; 
  histData[[j, 35]] = corr0212; histData[[j, 36]] = 0;
  histData[[j, 37]] = 0;
  histData[[j, 38]] = corr0508;
  histData[[j, 39]] = corr0510;
  histData[[j, 40]] = corr0512;
  histData[[j, 41]] = 0; histData[[j, 42]] = 0; histData[[j, 43]] = 0;
   histData[[j, 44]] = 0; histData[[j, 45]] = 0; histData[[j, 46]] = 0;
  histData[[j, 47]] = 0;
  histData[[j, 48]] = corr0810;
  histData[[j, 49]] = corr0812;
histData[[j, 50]] = corr1012;
histData[[j, 51]] =Sqrt[fisherI[[11, 11]]] 180./Pi;

Print[j];


 }, {j, 1,Ncatalog}];     //AbsoluteTiming                                      (*ATTENTION PLEASE*)


SNRthreshold =0;                                                                                                  (*ATTENTION PLEASE*)
histData2={};
Do[
If[   histData[[j, 7]]> SNRthreshold,                     
histData2=Append[     histData2, histData[[j]]    ]
]
,{j,1,Ncatalog}];                                                     (*ATTENTION PLEASE*)



filename="fisher_LO_in_e0_e0_"<> ToString[e0]<>".dat";                                                              (*ATTENTION PLEASE*)
Export[filename,histData2];
Speak["Job has been done"];



(* ::Input::Initialization:: *)

