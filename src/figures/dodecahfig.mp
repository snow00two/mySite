prologues := 3;
verbatimtex
%&latex
\documentclass{article}
\usepackage{verbatim}
\usepackage{latexsym}
\usepackage{amssymb}
\usepackage{amsmath}
\begin{document}
etex;

numeric a,b;
a = 10pt;
b = 6pt;
numeric c, d;
c = 190; %angle of rotation of figure around z axis
d = -20; %angle of rotation of view point around y axis
numeric f, g, k;
f = 2.1 ;% scale factor
g = (sqrt(5) +1 )*f /2 ; %g = f * \tau
k = f + g;

beginfig(1);
z0= (5a , 6a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0, cosd(d)); 

z11 = z0 + g* z1+ g* z2 +g* z3 ;
z12 = z0 + g* z1- g* z2 +g* z3 ;
z13 = z0 - g* z1- g* z2 +g* z3 ;
z14 = z0 - g* z1 + g* z2 +g* z3 ;
z21 = z0 + g* z1+ g* z2 -g* z3 ;
z22 = z0 + g* z1- g* z2 -g* z3 ;
z23 = z0 - g* z1- g* z2 -g* z3 ;
z24 = z0 - g* z1 + g* z2 -g* z3 ;

z31= z0 + k* z1+ f * z2 ;
z32= z0 + k* z1 - f * z2;
z33= z0 - k* z1+ f * z2 ;
z34= z0 - k* z1 - f * z2;
z41= z0 + k* z2+ f * z3 ;
z42= z0 + k* z2 - f * z3;
z43= z0 - k* z2+ f * z3 ;
z44= z0 - k* z2 - f * z3;
z51= z0 + k* z3+ f * z1 ;
z52= z0 + k* z3 - f * z1;
z53= z0 - k* z3+ f * z1 ;
z54= z0 - k* z3 - f * z1;

%Show the names of vertices:
dotlabel.top(btex $2$ etex,z11);
dotlabel.lrt(btex $5$ etex,z12);
dotlabel.top(btex $4$ etex,z13);
dotlabel.top(btex $5$ etex,z14);
dotlabel.bot(btex $5$ etex,z21);
dotlabel.bot(btex $1$ etex,z22);
dotlabel.bot(btex $5$ etex,z23);
dotlabel.urt(btex $3$ etex,z24);%
dotlabel.lrt(btex $3$ etex,z31);%
dotlabel.rt(btex $4$ etex,z32);
dotlabel.top(btex $2$ etex,z33);
dotlabel.rt(btex $1$ etex,z34);
dotlabel.lft(btex $4$ etex,z41);
dotlabel.lft(btex $1$ etex,z42);
dotlabel.rt(btex $2$ etex,z43);
dotlabel.rt(btex $3$ etex,z44);
dotlabel.top(btex $1$ etex,z51);
dotlabel.top(btex $3$ etex,z52);
dotlabel.bot(btex $2$ etex,z53);
dotlabel.top(btex $4$ etex,z54);

%for i = 3 upto 5:
%	draw z[10i + 1]--z[10i + 2];
%	draw z[10i + 3]--z[10i + 4];
%endfor
z60 = z0 + (( z51 + z11 + z31 + z32 + z12 )/5 - z0 ) ;
z61 = z0 + (( z33 + z34 + z23 + z54 + z24 )/5 - z0 ) ;
z62 = z0 +  1.7(( z51 + z11 + z31 + z32 + z12 )/5 - z0 ) ;
z63 = z0 + 1.7(( z33 + z34 + z23 + z54 + z24 )/5 - z0 ) ;

draw z51--z11--z31--z32--z12-- cycle withcolor red;
draw z31--z21--z53--z22--z32;
draw z11--z41--z42--z21;
draw z12--z43--z44--z22;
draw z41--z14--z52;
draw z52--z13--z43;
draw z51--z52;
draw z42--z24--z54 dashed evenly;
draw z44--z23--z54 dashed evenly;
draw z13--z34--z33--z14 dashed evenly;
draw z24--z33 dashed evenly;
draw z23--z34 dashed evenly;
draw z53--z54 dashed evenly;

pickup pencircle scaled 1pt;
draw z62--z63 withcolor red;
dotlabel(btex   etex,z60);
dotlabel(btex   etex,z61);

pickup pencircle scaled 0.5pt;
%draw z11--z12--z13--z14-- cycle;
%draw z21--z22--z23;
%draw z23--z24--z21 dashed evenly;
%for i = 1 upto 3:
%	draw z[10+i]-- z[20+i];
%endfor 
%for i = 4 upto 4:
%	draw z[10+i]-- z[20+i]  dashed evenly;
%endfor 

z100= (5a , 6a)+(13a,0);
%z1 = a*(sind(c), -cosd(c)*sind(d));
%z2 = a*(cosd(c), sind(c)*sind(d));
%z3 = a*(0, cosd(d)); 

z111 = z100 + g* z1+ g* z2 +g* z3 ;
z112 = z100 + g* z1- g* z2 +g* z3 ;
z113 = z100 - g* z1- g* z2 +g* z3 ;
z114 = z100 - g* z1 + g* z2 +g* z3 ;
z121 = z100 + g* z1+ g* z2 -g* z3 ;
z122 = z100 + g* z1- g* z2 -g* z3 ;
z123 = z100 - g* z1- g* z2 -g* z3 ;
z124 = z100 - g* z1 + g* z2 -g* z3 ;

z131= z100 + k* z1+ f * z2 ;
z132= z100 + k* z1 - f * z2;
z133= z100 - k* z1+ f * z2 ;
z134= z100 - k* z1 - f * z2;
z141= z100 + k* z2+ f * z3 ;
z142= z100 + k* z2 - f * z3;
z143= z100 - k* z2+ f * z3 ;
z144= z100 - k* z2 - f * z3;
z151= z100 + k* z3+ f * z1 ;
z152= z100 + k* z3 - f * z1;
z153= z100 - k* z3+ f * z1 ;
z154= z100 - k* z3 - f * z1;

z161 = (z131+z132)/2 ;
z162 = (z133+z134)/2 ;
z163 = (z141+z142)/2 ;
z164 = (z143+z144)/2 ;
z165 = (z151+z152)/2 ;
z166 = (z153+z154)/2 ;

z171 = (z131+z132)/2 + z1  ;
z172 = (z133+z134)/2- z1  ;
z173 = (z141+z142)/2 + z2;
z174 = (z143+z144)/2 -z2;
z175 = (z151+z152)/2 +z3;
z176 = (z153+z154)/2 -z3;

%Show the names of vertices:
dotlabel.top(btex $2$ etex,z111);
dotlabel.lrt(btex $5$ etex,z112);%
dotlabel.top(btex $4$ etex,z113);
dotlabel.top(btex $5$ etex,z114);
dotlabel.bot(btex $5$ etex,z121);%
dotlabel.bot(btex $1$ etex,z122);
dotlabel.bot(btex $5$ etex,z123);%
dotlabel.urt(btex $3$ etex,z124);
dotlabel.lrt(btex $3$ etex,z131);
dotlabel.rt(btex $4$ etex,z132);
dotlabel.top(btex $2$ etex,z133);
dotlabel.rt(btex $1$ etex,z134);%
dotlabel.lft(btex $4$ etex,z141);
dotlabel.lft(btex $1$ etex,z142);
dotlabel.rt(btex $2$ etex,z143);
dotlabel.rt(btex $3$ etex,z144);
dotlabel.top(btex $1$ etex,z151);%
dotlabel.top(btex $3$ etex,z152);
dotlabel.bot(btex $2$ etex,z153);
dotlabel.top(btex $4$ etex,z154);

dotlabel(btex  etex,z161);
dotlabel(btex  etex,z162);
dotlabel(btex  etex,z163);
dotlabel(btex  etex,z164);
dotlabel(btex  etex,z165);
dotlabel(btex  etex,z166);

%for i = 3 upto 5:
%	draw z[10i + 1]--z[10i + 2];
%	draw z[10i + 3]--z[10i + 4];
%endfor
draw z151--z111--z131--z132--z112-- cycle;
draw z131--z121--z153--z122--z132;
draw z111--z141--z142--z121;
draw z112--z143--z144--z122;
draw z141--z114--z152;
draw z152--z113--z143;
draw z151--z152;
draw z142--z124--z154 dashed evenly;
draw z144--z123--z154 dashed evenly;
draw z113--z134--z133--z114 dashed evenly;
draw z124--z133 dashed evenly;
draw z123--z134 dashed evenly;
draw z153--z154 dashed evenly;

pickup pencircle scaled 1pt;
draw z111--z112--z113--z114-- cycle;
draw z121--z122--z123;
draw z123--z124--z121 dashed evenly;
for i = 1 upto 3:
	draw z[110+i]-- z[120+i];
endfor 
for i = 4 upto 4:
	draw z[110+i]-- z[120+i]  dashed evenly;
endfor 

draw z171--z172 dashed evenly withcolor red ;
draw z173--z174 dashed evenly withcolor red ;
draw z175--z176 dashed evenly withcolor red ;

pickup pencircle scaled 0.5pt;

z200= (5a , 6a)+(26a,0);

z211 = z200 + g* z1+ g* z2 +g* z3 ;
z212 = z200 + g* z1- g* z2 +g* z3 ;
z213 = z200 - g* z1- g* z2 +g* z3 ;
z214 = z200 - g* z1 + g* z2 +g* z3 ;
z221 = z200 + g* z1+ g* z2 -g* z3 ;
z222 = z200 + g* z1- g* z2 -g* z3 ;
z223 = z200 - g* z1- g* z2 -g* z3 ;
z224 = z200 - g* z1 + g* z2 -g* z3 ;

z231= z200 + k* z1+ f * z2 ;
z232= z200 + k* z1 - f * z2;
z233= z200 - k* z1+ f * z2 ;
z234= z200 - k* z1 - f * z2;
z241= z200 + k* z2+ f * z3 ;
z242= z200 + k* z2 - f * z3;
z243= z200 - k* z2+ f * z3 ;
z244= z200 - k* z2 - f * z3;
z251= z200 + k* z3+ f * z1 ;
z252= z200 + k* z3 - f * z1;
z253= z200 - k* z3+ f * z1 ;
z254= z200 - k* z3 - f * z1;

z261 = z211+ z1+  z2 + z3;
z262 = z223- z1-  z2 - z3;
z263 = z212 + z1 -  z2 + z3;
z264 = z224 - z1 + z2 - z3;
z265 = z213 -  z1 - z2 + z3;
z266 = z221 + z1 + z2 - z3;
z267 = z214 - z1 + z2 + z3;
z268 = z222 + z1 - z2 - z3;

%Show the names of vertices:
dotlabel.top(btex $2$ etex,z211);
dotlabel.lrt(btex $5$ etex,z212);%
dotlabel.top(btex $4$ etex,z213);
dotlabel.top(btex $5$ etex,z214);
dotlabel.bot(btex $5$ etex,z221);%
dotlabel.bot(btex $1$ etex,z222);
dotlabel.bot(btex $5$ etex,z223);%
dotlabel.urt(btex $3$ etex,z224);
dotlabel.lrt(btex $3$ etex,z231);
dotlabel.rt(btex $4$ etex,z232);
dotlabel.top(btex $2$ etex,z233);
dotlabel.rt(btex $1$ etex,z234);%
dotlabel.lft(btex $4$ etex,z241);
dotlabel.lft(btex $1$ etex,z242);
dotlabel.rt(btex $2$ etex,z243);
dotlabel.rt(btex $3$ etex,z244);
dotlabel.top(btex $1$ etex,z251);%
dotlabel.top(btex $3$ etex,z252);
dotlabel.bot(btex $2$ etex,z253);
dotlabel.top(btex $4$ etex,z254);

%for i = 3 upto 5:
%	draw z[10i + 1]--z[10i + 2];
%	draw z[10i + 3]--z[10i + 4];
%endfor
draw z251--z211--z231--z232--z212-- cycle;
draw z231--z221--z253--z222--z232;
draw z211--z241--z242--z221;
draw z212--z243--z244--z222;
draw z241--z214--z252;
draw z252--z213--z243;
draw z251--z252;
draw z242--z224--z254 dashed evenly;
draw z244--z223--z254 dashed evenly;
draw z213--z234--z233--z214 dashed evenly;
draw z224--z233 dashed evenly;
draw z223--z234 dashed evenly;
draw z253--z254 dashed evenly;

pickup pencircle scaled 1pt;
draw z211--z212--z213--z214-- cycle;
draw z221--z222--z223;
draw z223--z224--z221 dashed evenly;
for i = 1 upto 3:
	draw z[210+i]-- z[220+i];
endfor 
for i = 4 upto 4:
	draw z[210+i]-- z[220+i]  dashed evenly;
endfor 

for i = 1  step 2 until 7:
	draw z[260 + i]--z[261 + i] dashed evenly withcolor red;
endfor

endfig;

verbatimtex
\end{document}
etex;
end