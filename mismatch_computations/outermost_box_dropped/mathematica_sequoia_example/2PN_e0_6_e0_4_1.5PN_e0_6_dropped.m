(* ::Package:: *)

(* ::Input::Initialization:: *)
(*   READ COMMENTS IN THE SLOW CODE*)


(* ::Input::Initialization:: *)



(* ::Input::Initialization:: *)
\[Alpha]0=0.;
year=3.1536*10^7;     
f0=1.0 10^-2; 
c=(2.998*10^8)    ;
G=6.673*10^-11    ;
rAU=1.495 10^11     ;

SubsList={   
Csc[\[Theta]Sb] ->   1/S\[Theta]Sb     ,  Cos[\[Theta]Sb]->C\[Theta]Sb,  Sin[\[Theta]Sb]->S\[Theta]Sb,Cos[\[Phi]Sb]->C\[Phi]Sb,   Sin[\[Phi]Sb]->S\[Phi]Sb,    Cos[\[Theta]Lb]->C\[Theta]Lb,  Sin[\[Theta]Lb]->S\[Theta]Lb,Cos[\[Phi]Lb]->C\[Phi]Lb,   Sin[\[Phi]Lb]->S\[Phi]Lb
};
SubsList2={
 1/f^(7/6)->1/StorMatK[[21,k1]], 1/f^(2/3)->(1/StorMatK[[3,k1]]),  1/ (f^(4/3))->(1/StorMatK[[4,k1]]), 1/f^(8/3)->(1/StorMatK[[5,k1]]), 1/f^(19/9)->(1/StorMatK[[6,k1]]), 1/f^(25/9)->(1/StorMatK[[7,k1]]),1/f^(28/9)->(1/StorMatK[[8,k1]]), 1/f^(31/9)->(1/StorMatK[[9,k1]]), 1/ (f^(38/9))->(1/StorMatK[[10,k1]]), 1/f^(44/9)->(1/StorMatK[[11,k1]]) ,   1/ (f^(47/9))->(1/StorMatK[[12,k1]]),   1/f^(50/9)->(1/StorMatK[[13,k1]]),  1/f^(65/9)->(1/StorMatK[[14,k1]])    , 1/f^(19/6)->(1/StorMatK[[16,k1]]) ,1/f^(19/18)->(1/StorMatK[[15,k1]]),     f^(19/9)->StorMatK[[6,k1]]  ,f^(2/3)->StorMatK[[3,k1]] ,f^(4/3)->StorMatK[[4,k1]],f^(25/9)->StorMatK[[7,k1]] ,f^(31/9)->StorMatK[[9,k1]]  , f^(50/9)->StorMatK[[13,k1]], f^(28/9)->StorMatK[[8,k1]]  , f^(5/3)->StorMatK[[17,k1]], 1/f^2->1/StorMatK[[18,k1]],1/ (f^(34/9))->(StorMatK[[9,k1]]StorMatK[[2,k1]])^-1,1/ (f^(53/9))->(StorMatK[[13,k1]]StorMatK[[2,k1]])^-1,1/ (f^(19/3))->(StorMatK[[16,k1]]StorMatK[[16,k1]])^-1,1/ (f^(43/9))->(StorMatK[[11,k1]]/StorMatK[[1,k1]])^-1,1/ (f^(62/9))->(StorMatK[[14,k1]]/StorMatK[[2,k1]])^-1,1/ (f^(40/9))->(StorMatK[[12,k1]]/(StorMatK[[1,k1]]StorMatK[[3,k1]]))^-1 ,1/ (f^(46/9))->(StorMatK[[12,k1]]/StorMatK[[1,k1]])^-1,1/ (f^(59/9))->(StorMatK[[13,k1]]/StorMatK[[1,k1]]),1/ (f^(26/9))->(StorMatK[[7,k1]]StorMatK[[1,k1]])^-1,1/ (f^(28/9))->(StorMatK[[8,k1]])^-1,  f^(38/9)->(StorMatK[[10,k1]]), f^(44/9)->(StorMatK[[11,k1]]), f^(47/9)->(StorMatK[[12,k1]]), 1/ (f^(28/3))->(StorMatK[[22,k1]] StorMatK[[17,k1]])^-1
,1/ (f^(23/3))->(StorMatK[[22,k1]])^-1,1/ (f^(26/3))->(StorMatK[[22,k1]] f)^-1, l^(4/3)-> StorMatL[[k2,1]], l^(5/3)-> StorMatL[[k2,2]],  l^(19/9)-> StorMatL[[k2,4]],l^(38/9)-> StorMatL[[k2,5]],l^(25/9)-> StorMatL[[k2,6]],l^(31/9)-> StorMatL[[k2,7]],l^(38/9)-> StorMatL[[k2,8]],l^(44/9)-> StorMatL[[k2,9]],l^(28/9)-> StorMatL[[k2,10]],l^(47/9)-> StorMatL[[k2,11]],l^(19/6)-> StorMatL[[k2,12]],l^(50/9)-> StorMatL[[k2,13]],l^2-> StorMatL[[k2,14]],l^(19/18)-> StorMatL[[k2,15]] ,l^(2/3)-> StorMatL[[k2,16]]  , 1/ l^(4/3)-> (1/StorMatL[[k2,1]]), 1/l^(5/3)-> (1/StorMatL[[k2,2]]),1/l^(8/3)-> (1/StorMatL[[k2,3]]),1/l^(19/9)-> (1/StorMatL[[k2,4]]), 1/l^(38/9)-> (1/StorMatL[[k2,5]]),1/l^(25/9)->(1/StorMatL[[k2,6]]),1/l^(31/9)-> (1/StorMatL[[k2,7]]),1/l^(38/9)-> (1/StorMatL[[k2,8]]),1/l^(44/9)-> (1/StorMatL[[k2,9]]),1/l^(28/9)-> (1/StorMatL[[k2,10]]),1/l^(47/9)-> (1/StorMatL[[k2,11]]),1/l^(19/6)-> (1/StorMatL[[k2,12]]),1/l^(50/9)-> (1/StorMatL[[k2,13]]),1/l^2-> (1/StorMatL[[k2,14]]),1/l^(19/18)-> (1/StorMatL[[k2,15]]) , 1/l^(2/3)-> (1/StorMatL[[k2,16]]), l^(29/3)-> StorMatL[[k2,17]],  l^(31/3)-> StorMatL[[k2,18]],  l^(68/9)-> StorMatL[[k2,19]],l^(55/9)-> StorMatL[[k2,20]],  l^(49/9)-> StorMatL[[k2,21]] , l^(29/3)-> StorMatL[[k2,22]] ,    l^(62/9)-> StorMatL[[k2,24]],l^(19/3)-> StorMatL[[k2,25]],  l^(22/3)-> StorMatL[[k2,26]],  l^(23/3)-> StorMatL[[k2,27]],  l^(52/9)-> StorMatL[[k2,28]],l^(71/9)-> StorMatL[[k2,29]],l^(74/9)-> StorMatL[[k2,30]],
1/ (f^(22/3))->(StorMatK[[22,k1]]/StorMatK[[2,k1]])^-1,1/f^(5/3)->1/StorMatK[[17,k1]] ,l^(8/3)-> StorMatL[[k2,3]],l^(43/9)-> StorMatL[[k2,23]]
, f^(23/3)->(StorMatK[[22,k1]]),f^(1/3)->(StorMatK[[2,k1]]),f^(-31/3)->(StorMatK[[9,k1]]StorMatK[[9,k1]]StorMatK[[9,k1]])^-1,f^(8/3)->(StorMatK[[17,k1]]f),l^(1/3)->StorMatL[[k2,31]],l^(14/9)->StorMatL[[k2,32]],l^(-14/9)->(StorMatL[[k2,32]])^-1,l^(23/3)->StorMatL[[k2,33]],l^(-1/3)->(StorMatL[[k2,31]])^-1,l^(-23/3)->(StorMatL[[k2,33]])^-1,l^(5/9)->(StorMatL[[l,32]]/l)

};
SubsList5={
1/mcz^(5/3)->Rmcz5u3 ,   1/mcz^(8/3)->Rmcz8u3   , mcz^(8/3)->mcz8u3,mcz^(2/3)->mcz2u3, mcz^(4/3)->mcz4u3  ,  mcz^(5/6)->mcz5u6  ,\[Eta]^2->\[Eta]2,   \[Eta]^(8/5)->\[Eta]8u5 ,  \[Eta]^(6/5)->\[Eta]6u5 ,   1/\[Eta]^(8/5)->R\[Eta]8u5  , \[Eta]^(2/5)->\[Eta]2u5 , \[Eta]^(4/5)->\[Eta]4u5 ,  1/\[Eta]^(2/5)->R\[Eta]2u5 ,1/\[Eta]^(4/5)->R\[Eta]4u5 ,   1/\[Eta]^(3/5)->R\[Eta]3u5 ,   \[Eta]^(1/5)->\[Eta]1u5 , mcz^(1/3)->mcz1u3,  mcz^(5/3)->mcz5u3,        mcz^(7/3)->mcz7u3,  \[Eta]^(-1/5)->R\[Eta]1u5,  \[Eta]^(3/5)->\[Eta]3u5 ,  \[Eta]^(-6/5)->R\[Eta]6u5 ,  \[Eta]^(-7/5)->R\[Eta]7u5 ,e0^2->e02 ,e0^4->e04, e0^6->e06,e0^3->e03 ,e0^5->e05, e0^7->e07
}  ;



t=N[PowerExpand[      FullSimplify[ tc+1/x^4 (-((5 G m)/(256 c^3 \[Eta]))+0e0^4 (-((5222765 G m)/(14475264 c^3 \[Eta] \[Chi]^(38/9)))+(2608555 G m)/(10039296 c^3 \[Eta] \[Chi]^(19/9)))+0e0^6 ((75356125 G m)/(35487744 c^3 \[Eta] \[Chi]^(19/3))-(17355248095 G m)/(6600720384 c^3 \[Eta] \[Chi]^(38/9))+(1326481225 G m)/(2288959488 c^3 \[Eta] \[Chi]^(19/9)))+0 (785 e0^2 G m)/(11008 c^3 \[Eta] \[Chi]^(19/9)))]          /.x->(G m 2 \[Pi] F/c^3)^(2/3)/.F->f/l/.\[Chi]->f/f0 (2/l)/.m->mcz/\[Eta]^(3/5)  ]              /.SubsList2  ]   ;

t2=N[PowerExpand[ FullSimplify[  tc+1/x^3 (-((55 G m)/(768 c^3))-(3715 G m)/(64512 c^3 \[Eta])+e0^2 ((-((154645 G m)/(396288 c^3))+(2223905 G m)/(11096064 c^3 \[Eta]))/\[Chi]^(25/9)+((128365 G m)/(340992 c^3)+(2045665 G m)/(9547776 c^3 \[Eta]))/\[Chi]^(19/9))+e0^4 (((1028884705 G m)/(260554752 c^3)-(14796093245 G m)/(7295533056 c^3 \[Eta]))/\[Chi]^(44/9)+(-((1222893635 G m)/(470679552 c^3))-(198510270125 G m)/(171327356928 c^3 \[Eta]))/\[Chi]^(38/9)+(-((209699405 G m)/(90353664 c^3))+(14275935425 G m)/(9396781056 c^3 \[Eta]))/\[Chi]^(25/9)+((426556895 G m)/(310984704 c^3)+(6797744795 G m)/(8707571712 c^3 \[Eta]))/\[Chi]^(19/9))+e0^6 ((-((14845156625 G m)/(425852928 c^3))+(213483902125 G m)/(11923881984 c^3 \[Eta]))/\[Chi]^7+((7378552295 G m)/(378535936 c^3)+(144936872901 G m)/(19683868672 c^3 \[Eta]))/\[Chi]^(19/3)+((8999675405695 G m)/(237625933824 c^3)-(1968906345873305 G m)/(86495839911936 c^3 \[Eta]))/\[Chi]^(44/9)+(-((4063675549105 G m)/(214629875712 c^3))-(659649627625375 G m)/(78125274759168 c^3 \[Eta]))/\[Chi]^(38/9)+(-((9479155594325 G m)/(1318440665088 c^3))+(2441897241139735 G m)/(479912402092032 c^3 \[Eta]))/\[Chi]^(25/9)+((216909251525 G m)/(70904512512 c^3)+(3456734032025 G m)/(1985326350336 c^3 \[Eta]))/\[Chi]^(19/9)))+1/x^(5/2) ((G m \[Pi])/(8 c^3 \[Eta])+e0^4 (-((1968982405 G m \[Pi])/(521109504 c^3 \[Eta] \[Chi]^(47/9)))+(6211173025 G m \[Pi])/(1781858304 c^3 \[Eta] \[Chi]^(38/9))+(3048212305 G m \[Pi])/(1445658624 c^3 \[Eta] \[Chi]^(28/9))-(1089296015 G m \[Pi])/(571539456 c^3 \[Eta] \[Chi]^(19/9)))+e0^2 ((295945 G m \[Pi])/(792576 c^3 \[Eta] \[Chi]^(28/9))-(327805 G m \[Pi])/(626688 c^3 \[Eta] \[Chi]^(19/9))))+1/x^2 (-((27145 G m)/(129024 c^3))-(15293365 G m)/(130056192 c^3 \[Eta])-(3085 G m \[Eta])/(18432 c^3)+e0^2 ((-((52058845 G m)/(99864576 c^3))-(936702035 G m)/(33554497536 c^3 \[Eta])+(14251675 G m \[Eta])/(14266368 c^3))/\[Chi]^(31/9)+(-((4917245 G m)/(42964992 c^3))+(5795368945 G m)/(9624158208 c^3 \[Eta])-(25287905 G m \[Eta])/(12275712 c^3))/\[Chi]^(25/9)+((165068815 G m)/(143990784 c^3)+(111064865 G m)/(493682688 c^3 \[Eta])+(10688155 G m \[Eta])/(10285056 c^3))/\[Chi]^(19/9)))+1/x^4 (-((5 G m)/(256 c^3 \[Eta]))+e0^4 (-((5222765 G m)/(14475264 c^3 \[Eta] \[Chi]^(38/9)))+(2608555 G m)/(10039296 c^3 \[Eta] \[Chi]^(19/9)))+e0^6 ((75356125 G m)/(35487744 c^3 \[Eta] \[Chi]^(19/3))-(17355248095 G m)/(6600720384 c^3 \[Eta] \[Chi]^(38/9))+(1326481225 G m)/(2288959488 c^3 \[Eta] \[Chi]^(19/9)))+(785 e0^2 G m)/(11008 c^3 \[Eta] \[Chi]^(19/9))) ]     /.x->(G m 2 \[Pi] F/c^3)^(2/3)/.F->f/l/.\[Chi]->f/f0 (2/l)/.m->mcz/\[Eta]^(3/5)  ]              /.SubsList2       ]   ;

e=N[PowerExpand [FullSimplify[0e0^3 (-(3323/(1824 \[Chi]^(19/6)))+3323/(1824 \[Chi]^(19/18)))+0e0^5 (50259743/(6653952 \[Chi]^(95/18))-11042329/(1108992 \[Chi]^(19/6))+15994231/(6653952 \[Chi]^(19/18)))+e0/\[Chi]^(19/18)  ]        /.x->(G m 2 \[Pi] F/c^3)^(2/3)/.F->f/l/.\[Chi]->f/f0 (2/l)/.m->mcz/\[Eta]^(3/5)  ]              /.SubsList2          ]    ;



\[Phi]b=(2 \[Pi] t)/year;
\[Phi]b2=(2 \[Pi] t2)/year;
ipLN=Cos[\[Theta]Lb] Cos[\[Theta]Sb]+Sin[\[Theta]Lb]Sin[\[Theta]Sb] (Cos[\[Phi]Lb] Cos[\[Phi]Sb]+Sin[\[Phi]Lb] Sin[\[Phi]Sb]);  
ipzN=c\[Theta]S;
ipLz=1/2 Cos[\[Theta]Lb]-Sqrt[3]/2 Sin[\[Theta]Lb]     (Cos[\[Phi]b] Cos[\[Phi]Lb]+Sin[\[Phi]b] Sin[\[Phi]Lb])      ;
ipNLz=1/2 Sin[\[Theta]Lb]Sin[\[Theta]Sb] (Cos[\[Phi]Sb] Sin[\[Phi]Lb]-Cos[\[Phi]Lb] Sin[\[Phi]Sb])-Sqrt[3]/2 Cos[\[Phi]b](Cos[\[Theta]Lb] Sin[\[Theta]Sb] Sin[\[Phi]Sb]-Cos[\[Theta]Sb] Sin[\[Theta]Lb] Sin[\[Phi]Lb])-Sqrt[3]/2 Sin[\[Phi]b](Cos[\[Theta]Sb] Sin[\[Theta]Lb] Cos[\[Phi]Lb]-Cos[\[Theta]Lb]Sin[\[Theta]Sb] Cos[\[Phi]Sb]) ;
\[Psi]S=N[ArcTan[(ipLz-ipLN*ipzN)/ipNLz]];
\[Phi]S=N[\[Alpha]0+\[Pi]/12.+ArcTan[(Sqrt[3]Cos[\[Theta]Sb]+Sin[\[Theta]Sb] (Cos[\[Phi]b] Cos[\[Phi]Sb]+Sin[\[Phi]b] Sin[\[Phi]Sb]))/(2Sin[\[Theta]Sb] (Cos[\[Phi]Sb] Sin[\[Phi]b]-Cos[\[Phi]b] Sin[\[Phi]Sb]))]];
\[Phi]S2= N[\[Phi]S-\[Pi]/4.];
c\[Theta]S=N[1/2 Cos[\[Theta]Sb]-Sqrt[3]/2 Sin[\[Theta]Sb]      (Cos[\[Phi]b] Cos[\[Phi]Sb]+Sin[\[Phi]b] Sin[\[Phi]Sb])] ;      


C2\[Phi]S =Cos[2.\[Phi]S];
C2\[Psi]S= Cos[2.\[Psi]S];
S2\[Phi]S= Sin[2.\[Phi]S];
S2\[Psi]S=Sin[2.\[Psi]S];
C2\[Phi]S2 =Cos[2.\[Phi]S2];
S2\[Phi]S2=Sin[2.\[Phi]S2]; 


FpA=N[1/2 (1+c\[Theta]S^2)C2\[Phi]S C2\[Psi]S-c\[Theta]S S2\[Phi]S S2\[Psi]S];
FcA=N[1/2  (1+c\[Theta]S^2)C2\[Phi]S S2\[Psi]S+c\[Theta]S S2\[Phi]S C2\[Psi]S];
FpB=N[1/2 (1+c\[Theta]S^2)C2\[Phi]S2 C2\[Psi]S-c\[Theta]S S2\[Phi]S2 S2\[Psi]S];
FcB=N[1/2  (1+c\[Theta]S^2)C2\[Phi]S2 S2\[Psi]S+c\[Theta]S S2\[Phi]S2 C2\[Psi]S];



Cp[1]=e (1-ipLN^2- 3/2 c2\[Beta] -3/2 ipLN^2   c2\[Beta]);
Sp[1]= -(3/2) e (s2\[Beta] + ipLN^2  s2\[Beta]);
Cc[1]=3 e ipLN  s2\[Beta]  ;
Sc[1]=-3 e ipLN   c2\[Beta] ;
Cp[2]=  2 (   c2\[Beta]  +ipLN^2 c2\[Beta])  ;
Sp[2]= 2 (   s2\[Beta]   +ipLN^2    s2\[Beta]);
Cc[2]=  -4 ipLN s2\[Beta]   ;
Sc[2]=   4 ipLN c2\[Beta]  ;                                                                     
Cp[3]=  9/2 e (    c2\[Beta]  +ipLN^2    c2\[Beta]  )  ;
Sp[3]=   9/2 e (    s2\[Beta]   +ipLN^2   s2\[Beta]   )  ;
Cc[3]= -9 e ipLN   s2\[Beta]   ;
Sc[3]=  9 e ipLN   c2\[Beta] ;



\[Psi]=N[PowerExpand[FullSimplify[     \[Pi]/4-2 f \[Pi] tc+l \[Phi]c+1/(512 2^(2/3) ((f G m)/c^3)^(5/3) \[Pi]^(5/3) \[Eta]) 3 l^(8/3) (-1+x^(3/2) (16 \[Pi]+e0^4 (-((1968982405 \[Pi])/(35961984 \[Chi]^(47/9)))+(6211173025 \[Pi])/(102085632 \[Chi]^(38/9))+(3048212305 \[Pi])/(64000512 \[Chi]^(28/9))-(217859203 \[Pi])/(3720960 \[Chi]^(19/9)))+e0^2 ((295945 \[Pi])/(35088 \[Chi]^(28/9))-(65561 \[Pi])/(4080 \[Chi]^(19/9))))+x (-(3715/756)-(55 \[Eta])/9+e0^2 ((2223905/491232-(154645 \[Eta])/17544)/\[Chi]^(25/9)+(2045665/348096+(128365 \[Eta])/12432)/\[Chi]^(19/9))+e0^4 ((-(14796093245/503467776)+(1028884705 \[Eta])/17980992)/\[Chi]^(44/9)+(-(198510270125/10484877312)-(1222893635 \[Eta])/28804608)/\[Chi]^(38/9)+(14275935425/416003328-(209699405 \[Eta])/4000032)/\[Chi]^(25/9)+(6797744795/317463552+(426556895 \[Eta])/11337984)/\[Chi]^(19/9))+e0^6 ((213483902125/1117863936-(14845156625 \[Eta])/39923712)/\[Chi]^7+(144936872901/1691582464+(7378552295 \[Eta])/32530432)/\[Chi]^(19/3)+(-(1968906345873305/5969113952256)+(8999675405695 \[Eta])/16398664704)/\[Chi]^(44/9)+(-(659649627625375/4781104054272)-(4063675549105 \[Eta])/13134901248)/\[Chi]^(38/9)+(2441897241139735/21246121967616-(9479155594325 \[Eta])/58368466944)/\[Chi]^(25/9)+(3456734032025/72381689856+(216909251525 \[Eta])/2585060352)/\[Chi]^(19/9)))+x^2 (-(15293365/508032)-(27145 \[Eta])/504-(3085 \[Eta]^2)/72+e0^2 ((-(936702035/1485485568)-(3062285 \[Eta])/260064+(14251675 \[Eta]^2)/631584)/\[Chi]^(31/9)+(5795368945/350880768-(4917245 \[Eta])/1566432-(25287905 \[Eta]^2)/447552)/\[Chi]^(25/9)+(111064865/14141952+(165068815 \[Eta])/4124736+(10688155 \[Eta]^2)/294624)/\[Chi]^(19/9)))+e0^4 (-(5222765/(998944 \[Chi]^(38/9)))+2608555/(444448 \[Chi]^(19/9)))+e0^6 (75356125/(3326976 \[Chi]^(19/3))-17355248095/(455518464 \[Chi]^(38/9))+1326481225/(101334144 \[Chi]^(19/9)))+(2355 e0^2)/(1462 \[Chi]^(19/9)))   ]/.x->(G m 2 \[Pi] F/c^3)^(2/3)/.F->f/l/.\[Chi]->f/f0 (2/l)/.m->mcz/\[Eta]^(3/5)] /.SubsList2 ] ;



(* ::Input::Initialization:: *)



(* ::Input::Initialization:: *)
  

\[CapitalTau]A[l_]=N[ FpA Cp[l] + FcA Cc[l]];                       
\[CapitalSigma]A[l_]=N[FpA Sp[l] + FcA Sc[l] ];
\[CapitalTau]B[l_]=N[ FpB Cp[l] + FcB Cc[l]];
\[CapitalSigma]B[l_]=N[FpB Sp[l] + FcB Sc[l] ];

\[Xi]=N[(1-e^2)^(7/4)/(1+73/24 e^2+37/96 e^4)^(1/2)];

AAmpA=N[(\[Sqrt]3)/2 (5/384 \[Eta] \[Pi])^(1/2) (G^2 m^2/(c^5 Dl))(G m \[Pi] f/c^3)^(-7/6)   \[Xi] (\[CapitalTau]A[l]+I \[CapitalSigma]A[l])(l/2)^(2/3)      /.m->mcz/\[Eta]^(3/5) ];
AAmpB=N[(\[Sqrt]3)/2 (5/384 \[Eta] \[Pi])^(1/2) (G^2 m^2/(c^5 Dl))(G m \[Pi] f/c^3)^(-7/6)   \[Xi]  (\[CapitalTau]B[l]+I \[CapitalSigma]B[l])(l/2)^(2/3)      /.m->mcz/\[Eta]^(3/5)];

AAmpA1=N[AAmpA/.l->1];
AAmpA2=N[AAmpA/.l->2];
AAmpA3=N[AAmpA/.l->3];
AAmpB1=N[AAmpB/.l->1];
AAmpB2=N[AAmpB/.l->2];
AAmpB3=N[AAmpB/.l->3];

\[Phi]D=N[Simplify[2.\[Pi] (2.f)/l rAU/c*Sin[\[Theta]Sb] (Cos[\[Phi]b2] Cos[\[Phi]Sb]+Sin[\[Phi]b2] Sin[\[Phi]Sb])]];

Phase=N[\[Psi]-\[Phi]D];
Phase=N[Simplify[PowerExpand[Phase/.SubsList  ]]/.SubsList5 /.SubsList5 /.SubsList2/.SubsList2]     ;


Ph1=N[1.E^(-I Phase)/.l->1.];
Ph2=N[1.E^(-I Phase)/.l->2.];
Ph3=N[1. E^(-I Phase)/.l->3.];
PhPart=1.E^(-I Phase);


AAmpA1=N[Simplify[PowerExpand[ AAmpA1/.SubsList]/.SubsList2  /.SubsList5  ]] ;
AAmpA2=N[Simplify[PowerExpand[ AAmpA2/.SubsList]/.SubsList2 /.SubsList5 ]];
AAmpA3=N[Simplify[PowerExpand[ AAmpA3/.SubsList]/.SubsList2 /.SubsList5  ]];
AAmpB1=N[Simplify[PowerExpand[ AAmpB1/.SubsList] /.SubsList2 /.SubsList5]];
AAmpB2=N[Simplify[PowerExpand[ AAmpB2/.SubsList]/.SubsList2 /.SubsList5  ]];
AAmpB3=N[Simplify[PowerExpand[ AAmpB3/.SubsList]/.SubsList2 /.SubsList5 ]];


hA1=N[AAmpA1 Ph1];
hB1=N[AAmpB1 Ph1];
hA2=N[AAmpA2 Ph2];
hB2=N[AAmpB2 Ph2];
hA3=N[AAmpA3 Ph3];
hB3=N[AAmpB3 Ph3];


(* ::Input::Initialization:: *)



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




tSWF=N[PowerExpand[      FullSimplify[ tc+1/x^4 (-((5 G m)/(256 c^3 \[Eta]))+0e0^4 (-((5222765 G m)/(14475264 c^3 \[Eta] \[Chi]^(38/9)))+(2608555 G m)/(10039296 c^3 \[Eta] \[Chi]^(19/9)))+0e0^6 ((75356125 G m)/(35487744 c^3 \[Eta] \[Chi]^(19/3))-(17355248095 G m)/(6600720384 c^3 \[Eta] \[Chi]^(38/9))+(1326481225 G m)/(2288959488 c^3 \[Eta] \[Chi]^(19/9)))+0 (785 e0^2 G m)/(11008 c^3 \[Eta] \[Chi]^(19/9)))]          /.x->(G m 2 \[Pi] F/c^3)^(2/3)/.F->f/l/.\[Chi]->f/f0 (2/l)/.m->mcz/\[Eta]^(3/5)  ]              /.SubsList2  ]   ;

t2SWF=N[PowerExpand[ FullSimplify[tc+1/x^3 (-((55 G m)/(768 c^3))-(3715 G m)/(64512 c^3 \[Eta])+e0^2 ((-((154645 G m)/(396288 c^3))+(2223905 G m)/(11096064 c^3 \[Eta]))/\[Chi]^(25/9)+((128365 G m)/(340992 c^3)+(2045665 G m)/(9547776 c^3 \[Eta]))/\[Chi]^(19/9))+e0^4 (((1028884705 G m)/(260554752 c^3)-(14796093245 G m)/(7295533056 c^3 \[Eta]))/\[Chi]^(44/9)+(-((1222893635 G m)/(470679552 c^3))-(198510270125 G m)/(171327356928 c^3 \[Eta]))/\[Chi]^(38/9)+(-((209699405 G m)/(90353664 c^3))+(14275935425 G m)/(9396781056 c^3 \[Eta]))/\[Chi]^(25/9)+((426556895 G m)/(310984704 c^3)+(6797744795 G m)/(8707571712 c^3 \[Eta]))/\[Chi]^(19/9))+e0^6 ((-((14845156625 G m)/(425852928 c^3))+(213483902125 G m)/(11923881984 c^3 \[Eta]))/\[Chi]^7+((7378552295 G m)/(378535936 c^3)+(144936872901 G m)/(19683868672 c^3 \[Eta]))/\[Chi]^(19/3)+((8999675405695 G m)/(237625933824 c^3)-(1968906345873305 G m)/(86495839911936 c^3 \[Eta]))/\[Chi]^(44/9)+(-((4063675549105 G m)/(214629875712 c^3))-(659649627625375 G m)/(78125274759168 c^3 \[Eta]))/\[Chi]^(38/9)+(-((9479155594325 G m)/(1318440665088 c^3))+(2441897241139735 G m)/(479912402092032 c^3 \[Eta]))/\[Chi]^(25/9)+((216909251525 G m)/(70904512512 c^3)+(3456734032025 G m)/(1985326350336 c^3 \[Eta]))/\[Chi]^(19/9)))+1/x^(5/2) ((G m \[Pi])/(8 c^3 \[Eta])+e0^6 ((28409259125 G m \[Pi])/(851705856 c^3 \[Eta] \[Chi]^(22/3))-(30628811474315 G m \[Pi])/(1185574551552 c^3 \[Eta] \[Chi]^(19/3))-(33366234820475 G m \[Pi])/(950503735296 c^3 \[Eta] \[Chi]^(47/9))+(20639727962075 G m \[Pi])/(812527386624 c^3 \[Eta] \[Chi]^(38/9))+(126468066221755 G m \[Pi])/(19117389643776 c^3 \[Eta] \[Chi]^(28/9))-(553919971925 G m \[Pi])/(130310995968 c^3 \[Eta] \[Chi]^(19/9)))+e0^4 (-((1968982405 G m \[Pi])/(521109504 c^3 \[Eta] \[Chi]^(47/9)))+(6211173025 G m \[Pi])/(1781858304 c^3 \[Eta] \[Chi]^(38/9))+(3048212305 G m \[Pi])/(1445658624 c^3 \[Eta] \[Chi]^(28/9))-(1089296015 G m \[Pi])/(571539456 c^3 \[Eta] \[Chi]^(19/9)))+e0^2 ((295945 G m \[Pi])/(792576 c^3 \[Eta] \[Chi]^(28/9))-(327805 G m \[Pi])/(626688 c^3 \[Eta] \[Chi]^(19/9))))+1/x^2 (-((27145 G m)/(129024 c^3))-(15293365 G m)/(130056192 c^3 \[Eta])-(3085 G m \[Eta])/(18432 c^3)+e0^2 ((-((52058845 G m)/(99864576 c^3))-(936702035 G m)/(33554497536 c^3 \[Eta])+(14251675 G m \[Eta])/(14266368 c^3))/\[Chi]^(31/9)+(-((4917245 G m)/(42964992 c^3))+(5795368945 G m)/(9624158208 c^3 \[Eta])-(25287905 G m \[Eta])/(12275712 c^3))/\[Chi]^(25/9)+((165068815 G m)/(143990784 c^3)+(111064865 G m)/(493682688 c^3 \[Eta])+(10688155 G m \[Eta])/(10285056 c^3))/\[Chi]^(19/9))+e0^4 (((4300262795285 G m)/(262639190016 c^3)-(3654447011975 G m)/(1423334965248 c^3 \[Eta])-(392328884035 G m \[Eta])/(18759942144 c^3))/\[Chi]^(50/9)+(-((2965713234395 G m)/(1541946212352 c^3))-(562379595264125 G m)/(86348987891712 c^3 \[Eta])+(240910046095 G m \[Eta])/(8472231936 c^3))/\[Chi]^(44/9)+(-((2163514670909 G m)/(240929095680 c^3))-(418677831611033 G m)/(647617409187840 c^3 \[Eta])-(203366083643 G m \[Eta])/(21180579840 c^3))/\[Chi]^(38/9)+(-((126823556396665 G m)/(16575921782784 c^3))+(1604328741354995 G m)/(2784754859507712 c^3 \[Eta])+(20940952805 G m \[Eta])/(2118057984 c^3))/\[Chi]^(31/9)+((2132955527705 G m)/(2037571780608 c^3)+(37202269351825 G m)/(8150287122432 c^3 \[Eta])-(34290527545 G m \[Eta])/(2798862336 c^3))/\[Chi]^(25/9)+((548523672245 G m)/(131319595008 c^3)+(369068546395 G m)/(450238611456 c^3 \[Eta])+(35516739065 G m \[Eta])/(9379971072 c^3))/\[Chi]^(19/9))+e0^6 ((-((17350371000625 G m)/(71543291904 c^3))+(26945014260125 G m)/(563403423744 c^3 \[Eta])+(357715525375 G m \[Eta])/(1277558784 c^3))/\[Chi]^(23/3)+((17969188685519 G m)/(413361242112 c^3)+(136868720309511 G m)/(2204593291264 c^3 \[Eta])-(1453574802115 G m \[Eta])/(4542431232 c^3))/\[Chi]^7+((1294771450208825 G m)/(17361172168704 c^3)+(4923915692090483425 G m)/(2616259201135017984 c^3 \[Eta])+(867077823963275 G m \[Eta])/(9507308568576 c^3))/\[Chi]^(19/3)+((1344731894414361455 G m)/(5449237914451968 c^3)-(43949506831840859555 G m)/(915471969627930624 c^3 \[Eta])-(7946157848161165 G m \[Eta])/(29940867661824 c^3))/\[Chi]^(50/9)+(-((14868442349448515 G m)/(351563736416256 c^3))-(74835480932061169625 G m)/(1023753600444137472 c^3 \[Eta])+(2107245064767505 G m \[Eta])/(7726675525632 c^3))/\[Chi]^(44/9)+(-((7189359251430607 G m)/(109863667630080 c^3))-(1391266434443462659 G m)/(295313538589655040 c^3 \[Eta])-(675785495945689 G m \[Eta])/(9658344407040 c^3))/\[Chi]^(38/9)+(-((1095104635088909345 G m)/(30234481331798016 c^3))+(387035983120116605285 G m)/(132064214457293733888 c^3 \[Eta])+(185468261986684025 G m \[Eta])/(4319211618828288 c^3))/\[Chi]^(31/9)+((39088433492776445 G m)/(7433061855657984 c^3)+(6363444229039638215 G m)/(416251463916847104 c^3 \[Eta])-(1550053258427425 G m \[Eta])/(40840999206912 c^3))/\[Chi]^(25/9)+((278930807554775 G m)/(29940867661824 c^3)+(187675742904025 G m)/(102654403411968 c^3 \[Eta])+(18060683996675 G m \[Eta])/(2138633404416 c^3))/\[Chi]^(19/9)))+1/x^4 (-((5 G m)/(256 c^3 \[Eta]))+e0^4 (-((5222765 G m)/(14475264 c^3 \[Eta] \[Chi]^(38/9)))+(2608555 G m)/(10039296 c^3 \[Eta] \[Chi]^(19/9)))+e0^6 ((75356125 G m)/(35487744 c^3 \[Eta] \[Chi]^(19/3))-(17355248095 G m)/(6600720384 c^3 \[Eta] \[Chi]^(38/9))+(1326481225 G m)/(2288959488 c^3 \[Eta] \[Chi]^(19/9)))+(785 e0^2 G m)/(11008 c^3 \[Eta] \[Chi]^(19/9)))   ]     /.x->(G m 2 \[Pi] F/c^3)^(2/3)/.F->f/l/.\[Chi]->f/f0 (2/l)/.m->mcz/\[Eta]^(3/5)  ]              /.SubsList2       ]   ;


eSWF=N[PowerExpand [FullSimplify[0e0^3 (-(3323/(1824 \[Chi]^(19/6)))+3323/(1824 \[Chi]^(19/18)))+0e0^5 (50259743/(6653952 \[Chi]^(95/18))-11042329/(1108992 \[Chi]^(19/6))+15994231/(6653952 \[Chi]^(19/18)))+e0/\[Chi]^(19/18)  ]        /.x->(G m 2 \[Pi] F/c^3)^(2/3)/.F->f/l/.\[Chi]->f/f0 (2/l)/.m->mcz/\[Eta]^(3/5)  ]              /.SubsList2          ]    ;

\[Phi]bSWF=(2 \[Pi] tSWF)/year;
\[Phi]b2SWF=(2 \[Pi] t2SWF)/year;
ipLNSWF=Cos[\[Theta]Lb] Cos[\[Theta]Sb]+Sin[\[Theta]Lb]Sin[\[Theta]Sb] (Cos[\[Phi]Lb] Cos[\[Phi]Sb]+Sin[\[Phi]Lb] Sin[\[Phi]Sb]);  
ipzNSWF=c\[Theta]SSWF;
ipLzSWF=1/2 Cos[\[Theta]Lb]-Sqrt[3]/2 Sin[\[Theta]Lb]     (Cos[\[Phi]bSWF] Cos[\[Phi]Lb]+Sin[\[Phi]bSWF] Sin[\[Phi]Lb])      ;
ipNLzSWF=1/2 Sin[\[Theta]Lb]Sin[\[Theta]Sb] (Cos[\[Phi]Sb] Sin[\[Phi]Lb]-Cos[\[Phi]Lb] Sin[\[Phi]Sb])-Sqrt[3]/2 Cos[\[Phi]bSWF](Cos[\[Theta]Lb] Sin[\[Theta]Sb] Sin[\[Phi]Sb]-Cos[\[Theta]Sb] Sin[\[Theta]Lb] Sin[\[Phi]Lb])-Sqrt[3]/2 Sin[\[Phi]bSWF](Cos[\[Theta]Sb] Sin[\[Theta]Lb] Cos[\[Phi]Lb]-Cos[\[Theta]Lb]Sin[\[Theta]Sb] Cos[\[Phi]Sb]) ;
\[Psi]SSWF=N[ArcTan[(ipLzSWF-ipLNSWF*ipzNSWF)/ipNLzSWF]];
\[Phi]SSWF=N[\[Alpha]0+\[Pi]/12.+ArcTan[(Sqrt[3]Cos[\[Theta]Sb]+Sin[\[Theta]Sb] (Cos[\[Phi]bSWF] Cos[\[Phi]Sb]+Sin[\[Phi]bSWF] Sin[\[Phi]Sb]))/(2Sin[\[Theta]Sb] (Cos[\[Phi]Sb] Sin[\[Phi]bSWF]-Cos[\[Phi]bSWF] Sin[\[Phi]Sb]))]];
\[Phi]S2SWF= N[\[Phi]SSWF-\[Pi]/4.];
c\[Theta]SSWF=N[1/2 Cos[\[Theta]Sb]-Sqrt[3]/2 Sin[\[Theta]Sb]      (Cos[\[Phi]bSWF] Cos[\[Phi]Sb]+Sin[\[Phi]bSWF] Sin[\[Phi]Sb])] ;   
  


C2\[Phi]SSWF =Cos[2.\[Phi]SSWF];
C2\[Psi]SSWF= Cos[2.\[Psi]SSWF];
S2\[Phi]SSWF= Sin[2.\[Phi]SSWF];
S2\[Psi]SSWF=Sin[2.\[Psi]SSWF];
C2\[Phi]S2SWF =Cos[2.\[Phi]S2SWF];
S2\[Phi]S2SWF=Sin[2.\[Phi]S2SWF]; 


FpASWF=N[1/2 (1+c\[Theta]SSWF^2)C2\[Phi]SSWF C2\[Psi]SSWF-c\[Theta]SSWF S2\[Phi]SSWF S2\[Psi]SSWF];
FcASWF=N[1/2  (1+c\[Theta]SSWF^2)C2\[Phi]SSWF S2\[Psi]SSWF+c\[Theta]SSWF S2\[Phi]SSWF C2\[Psi]SSWF];
FpBSWF=N[1/2 (1+c\[Theta]SSWF^2)C2\[Phi]S2SWF C2\[Psi]SSWF-c\[Theta]SSWF S2\[Phi]S2SWF S2\[Psi]SSWF];
FcBSWF=N[1/2  (1+c\[Theta]SSWF^2)C2\[Phi]S2SWF S2\[Psi]SSWF+c\[Theta]SSWF S2\[Phi]S2SWF C2\[Psi]SSWF];



CpSWF[1]=eSWF (1-ipLNSWF^2- 3/2 c2\[Beta] -3/2 ipLNSWF^2   c2\[Beta]);
SpSWF[1]= -(3/2) eSWF (s2\[Beta] + ipLNSWF^2  s2\[Beta]);
CcSWF[1]=3 eSWF ipLNSWF  s2\[Beta]  ;
ScSWF[1]=-3 eSWF ipLNSWF   c2\[Beta] ;
CpSWF[2]=  2 (   c2\[Beta]  +ipLNSWF^2 c2\[Beta])  ;
SpSWF[2]= 2 (   s2\[Beta]   +ipLNSWF^2    s2\[Beta]);
CcSWF[2]=  -4 ipLNSWF s2\[Beta]   ;
ScSWF[2]=   4 ipLNSWF c2\[Beta]  ;                                                                     
CpSWF[3]=  9/2 eSWF (    c2\[Beta]  +ipLNSWF^2    c2\[Beta]  )  ;
SpSWF[3]=   9/2 eSWF (    s2\[Beta]   +ipLNSWF^2   s2\[Beta]   )  ;
CcSWF[3]= -9 eSWF ipLNSWF   s2\[Beta]   ;
ScSWF[3]=  9 eSWF ipLNSWF   c2\[Beta] ;





\[Psi]SWF=N[PowerExpand[FullSimplify[\[Pi]/4 + l \[Phi]c  -2\[Pi] f tc  -1/(512 2^(2/3) ((f G m)/c^3)^(5/3) \[Pi]^(5/3) \[Eta]) 3 l^(8/3)    (1+x^(3/2) (-16 \[Pi]+e0^2 (-((295945 \[Pi])/(35088 \[Chi]^(28/9)))+(65561 \[Pi])/(4080 \[Chi]^(19/9)))+e0^4 ((1968982405 \[Pi])/(35961984 \[Chi]^(47/9))-(6211173025 \[Pi])/(102085632 \[Chi]^(38/9))-(3048212305 \[Pi])/(64000512 \[Chi]^(28/9))+(217859203 \[Pi])/(3720960 \[Chi]^(19/9)))+e0^6 (-((28409259125 \[Pi])/(79847424 \[Chi]^(22/3)))+(30628811474315 \[Pi])/(97254162432 \[Chi]^(19/3))+(33366234820475 \[Pi])/(65594658816 \[Chi]^(47/9))-(20639727962075 \[Pi])/(46551048192 \[Chi]^(38/9))-(126468066221755 \[Pi])/(846342770688 \[Chi]^(28/9))+(22156798877 \[Pi])/(169675776 \[Chi]^(19/9))))+x (5/756 (743+924 \[Eta])+e0^6 ((-(213483902125/1117863936)+(14845156625 \[Eta])/39923712)/\[Chi]^7+(-(144936872901/1691582464)-(7378552295 \[Eta])/32530432)/\[Chi]^(19/3)+(1968906345873305/5969113952256-(8999675405695 \[Eta])/16398664704)/\[Chi]^(44/9)+(659649627625375/4781104054272+(4063675549105 \[Eta])/13134901248)/\[Chi]^(38/9)+(-(2441897241139735/21246121967616)+(9479155594325 \[Eta])/58368466944)/\[Chi]^(25/9)+(-(3456734032025/72381689856)-(216909251525 \[Eta])/2585060352)/\[Chi]^(19/9))+e0^4 ((14796093245/503467776-(1028884705 \[Eta])/17980992)/\[Chi]^(44/9)+(198510270125/10484877312+(1222893635 \[Eta])/28804608)/\[Chi]^(38/9)+(-(14275935425/416003328)+(209699405 \[Eta])/4000032)/\[Chi]^(25/9)+(-(6797744795/317463552)-(426556895 \[Eta])/11337984)/\[Chi]^(19/9))+e0^2 ((-(2223905/491232)+(154645 \[Eta])/17544)/\[Chi]^(25/9)+(-(2045665/348096)-(128365 \[Eta])/12432)/\[Chi]^(19/9)))+x^2 ((5 (3058673+5472432 \[Eta]+4353552 \[Eta]^2))/508032+e0^6 ((-(26945014260125/52819070976)+(17350371000625 \[Eta])/6707183616-(357715525375 \[Eta]^2)/119771136)/\[Chi]^(23/3)+(-(136868720309511/189457235968)-(17969188685519 \[Eta])/35523231744+(1453574802115 \[Eta]^2)/390365184)/\[Chi]^7+(-(984783138418096685/40879050017734656)-(258954290041765 \[Eta])/271268315136-(173415564792655 \[Eta]^2)/148551696384)/\[Chi]^(19/3)+(43949506831840859555/63177102070677504-(1344731894414361455 \[Eta])/376054178992128+(7946157848161165 \[Eta]^2)/2066231752704)/\[Chi]^(50/9)+(74835480932061169625/62651587527180288+(14868442349448515 \[Eta])/21514968244224-(2107245064767505 \[Eta]^2)/472856444928)/\[Chi]^(44/9)+(1391266434443462659/15765436304916480+(7189359251430607 \[Eta])/5865117672960+(675785495945689 \[Eta]^2)/515614740480)/\[Chi]^(38/9)+(-(387035983120116605285/5846592827536441344)+(1095104635088909345 \[Eta])/1338505683959808-(185468261986684025 \[Eta]^2)/191215097708544)/\[Chi]^(31/9)+(-(6363444229039638215/15175834621968384)-(39088433492776445 \[Eta])/270997046820864+(1550053258427425 \[Eta]^2)/1488994762752)/\[Chi]^(25/9)+(-(187675742904025/2940620931072)-(278930807554775 \[Eta])/857681104896-(18060683996675 \[Eta]^2)/61262936064)/\[Chi]^(19/9))+e0^4 ((3654447011975/98224939008-(4300262795285 \[Eta])/18124839936+(392328884035 \[Eta]^2)/1294631424)/\[Chi]^(50/9)+(562379595264125/5284378165248+(2965713234395 \[Eta])/94363895808-(240910046095 \[Eta]^2)/518482944)/\[Chi]^(44/9)+(418677831611033/34573325230080+(2163514670909 \[Eta])/12862100160+(203366083643 \[Eta]^2)/1130734080)/\[Chi]^(38/9)+(-(94372278903235/7251965779968)+(126823556396665 \[Eta])/733829870592-(20940952805 \[Eta]^2)/93768192)/\[Chi]^(31/9)+(-(37202269351825/297145884672)-(2132955527705 \[Eta])/74286471168+(34290527545 \[Eta]^2)/102041856)/\[Chi]^(25/9)+(-(369068546395/12897460224)-(548523672245 \[Eta])/3761759232-(35516739065 \[Eta]^2)/268697088)/\[Chi]^(19/9))+e0^2 ((936702035/1485485568+(3062285 \[Eta])/260064-(14251675 \[Eta]^2)/631584)/\[Chi]^(31/9)+(-(5795368945/350880768)+(4917245 \[Eta])/1566432+(25287905 \[Eta]^2)/447552)/\[Chi]^(25/9)+(-(111064865/14141952)-(165068815 \[Eta])/4124736-(10688155 \[Eta]^2)/294624)/\[Chi]^(19/9)))+e0^6 (-(75356125/(3326976 \[Chi]^(19/3)))+17355248095/(455518464 \[Chi]^(38/9))-1326481225/(101334144 \[Chi]^(19/9)))+e0^4 (5222765/(998944 \[Chi]^(38/9))-2608555/(444448 \[Chi]^(19/9)))-(2355 e0^2)/(1462 \[Chi]^(19/9))) ]/.x->(G m 2 \[Pi] F/c^3)^(2/3)/.F->f/l/.\[Chi]->f/f0 (2/l)/.m->mcz/\[Eta]^(3/5)] /.SubsList2 ] ;

\[CapitalTau]ASWF[l_]= FpASWF CpSWF[l] + FcASWF CcSWF[l];
\[CapitalSigma]ASWF[l_]=FpASWF SpSWF[l] + FcASWF ScSWF[l] ;
\[CapitalTau]BSWF[l_]= FpBSWF CpSWF[l] + FcBSWF CcSWF[l];
\[CapitalSigma]BSWF[l_]=FpBSWF SpSWF[l] + FcBSWF ScSWF[l] ;

\[Xi]SWF=N[(1-eSWF^2)^(7/4)/(1+73/24 eSWF^2+37/96 eSWF^4)^(1/2)];

AAmpASWF=N[ (\[Sqrt]3)/2 (5/384 \[Eta] \[Pi])^(1/2) (G^2 m^2/(c^5 Dl))(G m \[Pi] f/c^3)^(-7/6)   \[Xi]SWF (\[CapitalTau]ASWF[l]+I \[CapitalSigma]ASWF[l])(l/2)^(2/3)      /.m->mcz/\[Eta]^(3/5) ];
AAmpBSWF=N[ (\[Sqrt]3)/2 (5/384 \[Eta] \[Pi])^(1/2) (G^2 m^2/(c^5 Dl))(G m \[Pi] f/c^3)^(-7/6)   \[Xi]SWF  (\[CapitalTau]BSWF[l]+I \[CapitalSigma]BSWF[l])(l/2)^(2/3)      /.m->mcz/\[Eta]^(3/5)];


AAmpA1SWF=N[AAmpASWF/.l->1];
AAmpA2SWF=N[AAmpASWF/.l->2];
AAmpA3SWF=N[AAmpASWF/.l->3];
AAmpB1SWF=N[AAmpBSWF/.l->1];
AAmpB2SWF=N[AAmpBSWF/.l->2];
AAmpB3SWF=N[AAmpBSWF/.l->3];

\[Phi]DSWF=N[Simplify[2.\[Pi] (2.f)/l rAU/c*Sin[\[Theta]Sb] (Cos[\[Phi]b2SWF] Cos[\[Phi]Sb]+Sin[\[Phi]b2SWF] Sin[\[Phi]Sb])]];

PhaseSWF=N[\[Psi]SWF-\[Phi]DSWF];
PhaseSWF=N[Simplify[PowerExpand[PhaseSWF/.SubsList  ]]/.SubsList5 /.SubsList5 /.SubsList2/.SubsList2]     ;



Ph1SWF=N[1.E^(-I PhaseSWF)/.l->1.];
Ph2SWF=N[1.E^(-I PhaseSWF)/.l->2.];
Ph3SWF=N[1. E^(-I PhaseSWF)/.l->3.];
PhPartSWF=1.0E^(-I PhaseSWF);



(*Remove Simplify below so that code does not waste time simplifying. After all, the SWF amplitudes are not even used in this code. Then why simplify???  OR better comment whole block out*)
(*AAmpA1SWF=N[(*Simplify[*)PowerExpand[ AAmpA1SWF/.SubsList]/.SubsList2  /.SubsList5  ](*]*) ;
AAmpA2SWF=N[(*Simplify[*)PowerExpand[ AAmpA2SWF/.SubsList]/.SubsList2 /.SubsList5 ](*]*);
AAmpA3SWF=N[(*Simplify[*)PowerExpand[ AAmpA3SWF/.SubsList]/.SubsList2 /.SubsList5  ](*]*);
AAmpB1SWF=N[(*Simplify[*)PowerExpand[ AAmpB1SWF/.SubsList] /.SubsList2 /.SubsList5](*]*);
AAmpB2SWF=N[(*Simplify[*)PowerExpand[ AAmpB2SWF/.SubsList]/.SubsList2 /.SubsList5  ](*]*);
AAmpB3SWF=N[(*Simplify[*)PowerExpand[ AAmpB3SWF/.SubsList]/.SubsList2 /.SubsList5 ](*]*);*)


hA1SWF=N[AAmpA1SWF Ph1SWF];
hB1SWF=N[AAmpB1SWF Ph1SWF];
hA2SWF=N[AAmpA2SWF Ph2SWF];
hB2SWF=N[AAmpB2SWF Ph2SWF];
hA3SWF=N[AAmpA3SWF Ph3SWF];
hB3SWF=N[AAmpB3SWF Ph3SWF];

hLO=hA1+hA2+hA3;
hSWF=hA1SWF+hA2SWF+hA3SWF;


(* ::Input::Initialization:: *)



(* ::Input::Initialization:: *)



catalog=Import["non_astro_catalog.dat"];                     (*ATTENTION PLEASE*)
nsource=Length[catalog];

e01=0.01;                                      (*ATTENTION PLEASE*)
Ne0=4;                                              (*ATTENTION PLEASE*)
NNexp=13;                                   (*ATTENTION PLEASE*)                                (*NNexp = 13 or 14. 13 gives reasonable accuracy. But do check!*)      
NNexp2=NNexp;                       (*ATTENTION PLEASE*)
Ncatalog=nsource;                                  (*ATTENTION PLEASE*)
matchData= ConstantArray[0,{Ncatalog,Ne0}];                


emax=0.1;                                                                                             (*ATTENTION PLEASE*)
eArr=N[Subdivide[e01,emax,Ne0-1]];                                 


StorMatL=ConstantArray[0,{3,33}];       
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


DistributeDefinitions[AAmpA1];
DistributeDefinitions[AAmpA2];
DistributeDefinitions[AAmpA3];
DistributeDefinitions[PhPart];
DistributeDefinitions[PhPartSWF];
SetSharedVariable[matchData];


Clear[f];

LaunchKernels[12];                                                                                                   (*ATTENTION PLEASE*)
ParallelDo[{
e0=e01;                                 
NN=2^NNexp;

tc=0.;
\[Phi]c=0.;
Msun=  1.989*10^30;
megapc=  3.086*10^22;
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


C\[Theta]Sb= Cos[\[Theta]Sb];
S\[Theta]Sb= Sin[\[Theta]Sb];
C\[Phi]Sb= Cos[\[Phi]Sb];
S\[Phi]Sb= Sin[\[Phi]Sb];
C\[Theta]Lb= Cos[\[Theta]Lb];
S\[Theta]Lb= Sin[\[Theta]Lb];
C\[Phi]Lb= Cos[\[Phi]Lb];
S\[Phi]Lb= Sin[\[Phi]Lb];
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



Do[{

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


df=(2.fmax)/(NN-1);
fArr=N[Subdivide[0,2.fmax,NN-1]];     

StorMatK=ConstantArray[0,{22,NN}];                                     
Do[  
ff=fArr[[k1]]; 

If[ff<fmin,
(* do nothing *)
,
StorMatK[[19,k1]] =N[  ff^(1/18)]  ;                                               (*f^(1/18)*)
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
StorMatK[[18,k1]] =1. ff ff;
StorMatK[[22,k1]] =  (StorMatK[[5,k1]] )^3/StorMatK[[2,k1]]                   (*f^(23/3)*);
]

  ,{k1,2,NN/2+1}]   ;         

Clear[ff];           
Clear[f,l];

StorMat=ConstantArray[0,{NN,3}];
StorMat1=ConstantArray[0,NN];   
StorMat2=ConstantArray[0,NN];   
StorMat3=ConstantArray[0,NN];   
AmpArr=ConstantArray[0,{NN,3}];
StorMathLO=ConstantArray[0,{NN,3}];
StorMathSWF=ConstantArray[0,{NN,3}]; 

f=0;

Do[
f=fArr[[j2]];

If[f<fmin,
(*  do nothing  *)
,

k1=j2;

k2=1;
l=1;
AmpArr[[j2,1]]=AAmpA1 ;

k2=2;
l=2;
AmpArr[[j2,2]]=AAmpA2 ;

k2=3;
l=3;
AmpArr[[j2,3]]=AAmpA3  ;
];


, {j2, 2,NN/2+1}]  ;             
Clear[f];


f=0;

Do[
f=fArr[[j2]];

If[f<fmin,
(*  do nothing  *)
,

k1=j2;

k2=1;
l=k2;
StorMathLO[[j2,1]]=AmpArr[[j2,1]] PhPart;
StorMathSWF[[j2,1]]=AmpArr[[j2,1]] PhPartSWF;

k2=2;
l=k2;
StorMathLO[[j2,2]]=AmpArr[[j2,2]] PhPart;
StorMathSWF[[j2,2]]=AmpArr[[j2,2]] PhPartSWF;

k2=3;
l=k2;
StorMathLO[[j2,3]]=AmpArr[[j2,3]]  PhPart;
StorMathSWF[[j2,3]]=AmpArr[[j2,3]] PhPartSWF;

StorMat[[j2,1]]=StorMathLO[[j2,1]]+StorMathLO[[j2,2]]+StorMathLO[[j2,3]];
StorMat[[j2,2]]=StorMathSWF[[j2,1]]+StorMathSWF[[j2,2]]+StorMathSWF[[j2,3]];
StorMat[[j2,3]]=Sf;

StorMat1[[j2]]=StorMat[[j2,1]] Conjugate[StorMat[[j2,1]]]/StorMat[[j2,3]];
StorMat2[[j2]]=StorMat[[j2,2]] Conjugate[StorMat[[j2,2]]]/StorMat[[j2,3]];
StorMat3[[j2]]=StorMat[[j2,1]] Conjugate[StorMat[[j2,2]]]/StorMat[[j2,3]];
];


, {j2, 2,NN/2+1}]  ;        
Clear[f];

PadRight[StorMat1,2^NNexp2];
PadRight[StorMat2,2^NNexp2];
PadRight[StorMat3,2^NNexp2];

StorMat1=Abs[InverseFourier[StorMat1]];
StorMat2=Abs[InverseFourier[StorMat2]];
StorMat3=Abs[InverseFourier[StorMat3]];

maxA=Max[StorMat1];
maxB=Max[StorMat2];
maxC=Max[StorMat3];
match=\[Sqrt]((maxC maxC)/(maxA maxB));


matchData[[j,je0]]=match;


If[je0<Ne0,

e0=eArr[[je0+1]];
,

];



 }, {je0, 1,Ne0}]  ;                         (*ATTENTION PLEASE*)

Print[j];

 }, {j, 1,Ncatalog}]  ;             //AbsoluteTiming                                           (*ATTENTION PLEASE*)

Export["matchData_2PN_e0_6_e0_4_1.5PN_e0_6_dropped.dat", matchData] ;                    
Export["eArray_2PN_e0_6_e0_4_1.5PN_e0_6_dropped.dat", eArr] ;



(* ::Input::Initialization:: *)



(* ::Input::Initialization:: *)



(* ::Input::Initialization:: *)



(* ::Input::Initialization:: *)



(* ::Input::Initialization:: *)
Quit[]


(* ::Input::Initialization:: *)



(* ::Input::Initialization:: *)



(* ::Input::Initialization:: *)

