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
a = 7pt;%a = 10pt;
b = 4.2pt; %b = 6pt;
numeric c, d;
c = 190; %angle of rotation of figure around z axis
d = -20; %angle of rotation of view point around y axis
numeric f, g, k;
f = 2.1 ;% scale factor
g = (sqrt(5) +1 )*f /2 ; %g = f * \tau
k = f + g;

beginfig(1);
z0= (5a , 6a)+(16a,0);
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

z100= (5a , 6a)+(16a,0)-(16a,0);

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

z200= (5a , 6a)+(32a,0);

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
pickup pencircle scaled 0.5pt;
endfig;

numeric a, r, d;
a = 10pt;%a = 5pt;
r = a;
d = r*cosd(30);

%My Logo
beginfig(2);
   z0 = (2d,2r);%prime center
   z20 = z0 + (3d,0);%next center 
   for i = 1 upto 2:
      for j= 1 upto 6:
         z[6i +j] = z0 + i*r*(cosd(60j + 30), sind(60j + 30));
      endfor
   endfor
   for i = 1 upto 2:
      for j= 1 upto 6:
         z[6i +j +20] = z20 + i*r*(cosd(60j + 30), sind(60j + 30));
      endfor
   endfor

   path p;
   p = for j =4 upto 6:
            z[12 +j]--
         endfor
         z13;
   path q;
   q = for j = 5 upto 6:
            z[20+ 12 +j]--
         endfor
         z[20+12 +1]--z[20+12 +2];
   z50 = p intersectionpoint q;
   path q;
   q = for j = 3 upto 5:
            z[20+ 12 +j]--
         endfor
         z[20+12 +6];
   z51 = p intersectionpoint q;
   z52 = 0.5[z[12 +5 +20] ,z[12 +6+20] ] + (a,0);
   
   path p;
   p = z50--
      for j = 1 upto 4:
         z[12 +j]--
      endfor 
      z51--
      for j = 4 upto 6:
         z[20 + 12 +j]--
      endfor 
      z[20 + 12+1]-- cycle;
   fill p withcolor white;
   
   pickup pencircle scaled 5pt;%2pt;
   for i = 1 upto 1:
      draw
         for j =1 upto 6:
            z[20+ 6i +j]--
         endfor
         cycle;
   endfor   
   for i = 2 upto 2:
      draw
         z51--
         for j = 4 upto 6:
            z[20+ 6i +j]--
         endfor
         z[20+6i+1]--z50;
   endfor   
   for i = 1 upto 2:
      draw
         for j =1 upto 6:
            z[6i +j]--
         endfor
         cycle;
   endfor   
   
   label.rt(btex {\Large \textbf{snow00two}} etex,z52);
endfig;


numeric a, b, e;
a= 6pt;
b= 6pt;
e = 2pt;

numeric c, d;
c = -15;%default 30%angle of rotation of figure around z axis
d = 30;%default 30%angle of rotation of view point around y axis

numeric f, g, k;
f = 2.1 ;% scale factor
g = (sqrt(5) +1 )*f /2 ; %g = f * \tau
k = f + g;

beginfig(3);
z0=(2a,7a);%Origin : adjust the position of the whole figures.
% In $\mathbf R^3$  we take an orthnormal frame
% e_1=(cos(c)cos(d), sin(c), -cos(c)sin(d)), 
% e_2=(-sin(c)cos(d), cos(c),sin(c)sin(d)), e_3=(sin(d), 0,cos(d)
% and consider the orthogonal projection to yz-plane.
z1 = a*(sind(c), -cosd(c)*sind(d));  %2026/10/11
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0, cosd(d));

%vertices  of cube 
z11 = z0 + 8z3 ;
z12 = z11 + 8z2;
z13 = z12 + 8z1;
z14 = z13 - 8z2 ;
z15 = z0  ;
z16 = z15+ 8z2;
z17 = z16 + 8z1;
z18 = z17 - 8z2 ;
z19 = 0.5[z15,z13];

%edges of cube
draw z11--z12--z13--z14--  cycle;
draw z16--z17--z18;
draw z18--z15--z16 dashed evenly;
for i=12 upto 14:
	draw z[i]--z[i+4];
endfor;
for i=11 upto 11:
	draw z[i]--z[i+4] dashed evenly;
endfor;

%vertices of outer cube
z21 = z0 - z1- z2 - z3 + 10z3 ;
z22 = z21 + 10z2;
z23 = z22 + 10z1;
z24 = z23 - 10z2 ;
z25 = z0- z1- z2 - z3  ;
z26 = z25+ 10z2;
z27 = z26 + 10z1;
z28 = z27 - 10z2 ;

%center of faces of outer cube
z31= 0.5[z21,z23];
z32 = 0.5[z25,z27];
z33= 0.5[z21,z26];
z34= 0.5[z23,z28];
z35= 0.5[z21,z28];
z36= 0.5[z23,z26];

%center of faces
z41= 0.5[z11,z13];
z42 = 0.5[z15,z17];
z43= 0.5[z11,z16];
z44= 0.5[z13,z18];
z45= 0.5[z11,z18];
z46= 0.5[z13,z16];

%center of edges of cube
z51= 0.5[z11,z12];
z52= 0.5[z12,z13];
z53= 0.5[z13,z14];
z54= 0.5[z14,z11];

z55 = 0.5[z11,z15];
z56 = 0.5[z12,z16];
z57 = 0.5[z13,z17];
z58 = 0.5[z14,z18];

z61= 0.5[z17,z18];
z62= 0.5[z18,z15];
z63= 0.5[z15,z16];
z64= 0.5[z16,z17];

draw z43--z44;
draw z13--z15;
draw z53--z63;

draw z12--z15--z18 withcolor green;
draw z14--z15--z16 withcolor blue;
draw z61--z63--z51  withcolor red;

z70 = z19 - (0,8a);
z80 = z70 - (2a,0);
z89 = 0.5[z80,z70];
z90 = z70 + (2a,0);
draw z80--z90;

for i = 7, 8, 9:
   for j= 1 upto 4:
      z[10i+j]= z[10i] + e*(cosd(90(j-1)),sind(90(j-1)));
   endfor
endfor

path p;
p = for  j= 1 upto 4:
         z[80+j]..
      endfor
      cycle;
fill p withcolor red;
draw p;
path p;
p = for  j= 1 upto 4:
         z[70+j]..
      endfor
      cycle;
fill p withcolor green;
draw p;
path p;
p = for  j= 1 upto 4:
         z[90+j]..
      endfor
      cycle;
fill p withcolor blue;
draw p;

label.top(btex 4 etex,z89);

pickup pencircle scaled 1pt;

draw z51--z53--z61  withcolor red;
draw z16--z13--z14 withcolor blue;
draw z18--z13--z12 withcolor green;

draw z53--z19--z44;
draw z19--z13;

pickup pencircle scaled 0.5pt;

z100=z0 + (29a+6a,0);%Origin : adjust the position of the whole figures.

%vertices  of cube 
z111 = z100 + 8z3 ;
z112 = z111 + 8z2;
z113 = z112 + 8z1;
z114 = z113 - 8z2 ;
z115 = z100  ;
z116 = z115+ 8z2;
z117 = z116 + 8z1;
z118 = z117 - 8z2 ;
z119 = 0.5[z115,z113];%center of cube

%edges of cube
draw z111--z112--z113--z114--  cycle;
draw z116--z117--z118;
draw z118--z115--z116 dashed evenly;
for i=112 upto 114:
	draw z[i]--z[i+4];
endfor;
for i=111 upto 111:
	draw z[i]--z[i+4] dashed evenly;
endfor;

%vertices of outer cube
z121 = z100 - z1- z2 - z3 + 10z3 ;
z122 = z121 + 10z2;
z123 = z122 + 10z1;
z124 = z123 - 10z2 ;
z125 = z100- z1- z2 - z3  ;
z126 = z125+ 10z2;
z127 = z126 + 10z1;
z128 = z127 - 10z2 ;

%center of faces of outer cube
z131= 0.5[z121,z123];
z132 = 0.5[z125,z127];
z133= 0.5[z121,z126];
z134= 0.5[z123,z128];
z135= 0.5[z121,z128];
z136= 0.5[z123,z126];

%center of faces
z141= 0.5[z111,z113];
z142 = 0.5[z115,z117];
z143= 0.5[z111,z116];
z144= 0.5[z113,z118];
z145= 0.5[z111,z118];
z146= 0.5[z113,z116];
%for i = 41, 44,  46:
%	dotlabel("",z[i]);
%endfor;

%center of edges of cube
z151= 0.5[z111,z112];
z152= 0.5[z112,z113];
z153= 0.5[z113,z114];
z154= 0.5[z114,z111];

z155 = 0.5[z111,z115];
z156 = 0.5[z112,z116];
z157 = 0.5[z113,z117];
z158 = 0.5[z114,z118];

z161= 0.5[z117,z118];
z162= 0.5[z118,z115];
z163= 0.5[z115,z116];
z164= 0.5[z116,z117];

%dotlabel(btex etex,z19);

draw z143--z144;
draw z113--z115;
draw z114--z116;

draw z111--z116 withcolor blue;
draw z118--z115--z112 withcolor red;
draw z114--z115--z116 withcolor green;

z170 = z119 - (0,8a);
z180 = z170 - (2a,0);
z189 = 0.5[z180,z170];
z190 = z170 + (2a,0);
draw z180--z190;

for i = 17, 18, 19:
   for j= 1 upto 4:
      z[10i+j]= z[10i] + e*(cosd(90(j-1)),sind(90(j-1)));
   endfor
endfor

path p;
p = for  j= 1 upto 4:
         z[180+j]..
      endfor
      cycle;
fill p withcolor red;
draw p;
path p;
p = for  j= 1 upto 4:
         z[170+j]..
      endfor
      cycle;
fill p withcolor green;
draw p;
path p;
p = for  j= 1 upto 4:
         z[190+j]..
      endfor
      cycle;
fill p withcolor blue;
draw p;

%label.top(btex 4 etex,z89);

pickup pencircle scaled 1pt;
draw z112--z113--z118 withcolor red;
draw z116--z113--z114  withcolor green;
draw z116--z117--z114--z111 withcolor blue;
draw z119--z144;
draw z119--z114;
draw z119--z113;

numeric c, d;
c = 195;%193; %angle of rotation of figure around z axis
d = -20; %angle of rotation of view point around y axis
pickup pencircle scaled 0.5pt;
z201 = a*(sind(c), -cosd(c)*sind(d));  
z202 = a*(cosd(c), sind(c)*sind(d));
z203 = a*(0, cosd(d));

z200 = z0 + (17a+3.5a,a);
z211 = z200 + g* z201+ g* z202 +g* z203 ;
z212 = z200 + g* z201- g* z202 +g* z203 ;
z213 = z200 - g* z201- g* z202 +g* z203 ;
z214 = z200 - g* z201 + g* z202 +g* z203 ;
z221 = z200 + g* z201+ g* z202 -g* z203 ;
z222 = z200 + g* z201- g* z202 -g* z203 ;
z223 = z200 - g* z201- g* z202 -g* z203 ;
z224 = z200 - g* z201 + g* z202 -g* z203 ;

z231= z200 + k* z201+ f * z202 ;
z232= z200 + k* z201 - f * z202;
z233= z200 - k* z201+ f * z202 ;
z234= z200 - k* z201 - f * z202;
z241= z200 + k* z202+ f * z203 ;
z242= z200 + k* z202 - f * z203;
z243= z200 - k* z202+ f * z203 ;
z244= z200 - k* z202 - f * z203;
z251= z200 + k* z203+ f * z201 ;
z252= z200 + k* z203 - f * z201;
z253= z200 - k* z203+ f * z201 ;
z254= z200 - k* z203 - f * z201;

z260 = z200 + (( z251 + z211 + z231 + z232 + z212 )/5 - z200 ) ;
z261 = z200 + (( z233 + z234 + z223 + z254 + z224 )/5 - z200 ) ;
z262 = z200 +  1.7(( z251 + z211 + z231 + z232 + z212 )/5 - z200 ) ;
z263 = z200 + 1.7(( z233 + z234 + z223 + z254 + z224 )/5 - z200 ) ;
z270 = 0.5[z262,z263];
z272 = 0.5[z232,z212]; 
z271 = z200 + ((z251+z211+z231+z232+z212)/5-z200);%center of face
z273 = 0.5[z251,z211]; 
z274 = 0.5[z254,z223]; 
z275 = 0.5[z213,z252];
z276 = 0.5[z253,z221];
z277 =  0.5[z233,z224];
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

draw z214--z233--z274--z222  withcolor green;
draw z275--z233--z224--z276 withcolor blue;
draw z241--z277--z223--z244 withcolor red; 
draw z270--z277;
draw z270--z233;
draw z270--z261;

z280 = z270 - (0,8a);
z290 = z280 - (2a,0);
z299 = 0.5[z290,z280];
z300 = z280 + (2a,0);
draw z290--z300;

for i =  28, 29,30:
   for j= 1 upto 4:
      z[10i+j]= z[10i] + e*(cosd(90(j-1)),sind(90(j-1)));
   endfor
endfor

path p;
p = for  j= 1 upto 4:
         z[290+j]..
      endfor
      cycle;
fill p withcolor red;
draw p;
path p;
p = for  j= 1 upto 4:
         z[280+j]..
      endfor
      cycle;
fill p withcolor green;
draw p;
path p;
p = for  j= 1 upto 4:
         z[300+j]..
      endfor
      cycle;
fill p withcolor blue;
draw p;

label.top(btex 5 etex,z299);

pickup pencircle scaled 1pt;

draw z270--z272;%
draw z270--z271;
draw z270--z232;
draw z222--z232--z271--z273--z214 withcolor green; %z13 z43  z52 z51
draw z244--z272--z211--z241 withcolor red; 
draw z276--z232--z212--z275 withcolor blue;
endfig;

numeric a;%in figure.4 we change a
a = 8pt;

beginfig(4);
z0 = (0,0);
z1 = (3a/2,0);
z2 = (0,3*sqrt(3)*a/2);

z3 = z0+ (0,-a);%correct z0 

for i = 1 upto 7:
   for j = 0 upto 8:
      z[10i +j] = z3+ j*z1+  (7 - i)*z2;
   endfor
endfor

%test
%for i= 1 upto 6:
%   draw z[10i]-- z[10i +9];
%endfor

z80 = z10 + (a,-2a);
z81 = z18 + (-a,-2a);
z82 = z68 + (-a,2a);
z83 = z60 + (a,2a);

%test
%draw z80--z81--z82;
%draw z80--z83--z82;

for i = 2 upto 5:
   z[100 + i] = whatever[z80, z83] =whatever[z[10i],z[10i +8]];
   z[110 + i] = whatever[z81, z82] =whatever[z[10i],z[10i +8]];
endfor
for i = 2, 3, 5:
   draw z[100 + i]--z[110 + i];
endfor


for j = 0 step 2 until 7:
	z[120 + j] = whatever[z80, z81] = whatever[z[10+j],z[20+j+1]];
%	draw z[120 + j]--z[20+j+1];
endfor
for j = 1 step 2 until 8 :
	z[130 + j] = whatever[z80, z81] = whatever[z[20+j],z[10+j+1]];
%	draw z[130 + j]--z[20+j];
endfor

for j = 1 step 2 until 6:
	z[140 + j] = whatever[z82, z83] = whatever[z[60+j],z[50+j+1]];
%	draw z[140 + j]--z[50+j+1];
endfor
for j = 2 step 2 until 7:
	z[150 + j] = whatever[z82, z83] = whatever[z[60+j+1],z[50+j]];
%	draw z[150 + j]--z[50+j];
endfor

for i = 2, 4:
   z[160 + i] = whatever[z80, z83] = whatever[z[10(i+1)],z[10i+1]];
   z[170 + i] = whatever[z80, z83] = whatever[z[10(i-1)],z[10i+1]];
endfor
%draw z[160 + 4]--z[40+1]--z[170 + 4];
%draw z[160 + 2]--z[20+1];

for i = 2, 4:
   z[180 + i] = whatever[z81, z82] = whatever[z[10(i+1)+8],z[10i+7]];
   z[190 + i] = whatever[z81, z82] = whatever[z[10(i-1)+8],z[10i+7]];
endfor
%draw z[180 + 4]--z[40+7]--z[190 + 4];
%draw z[180 + 2]--z[20+7];

draw z131--z162;
draw z133--z164;
draw z137--z143;
draw z194--z145;

draw z174--z152;
draw z120--z154;%%
draw z124--z184;
draw z126--z182;

z200 = z54 + (0,-1.8a);
z210 = z200 + (-a,-sqrt(3)*a);
z219 = 0.5[z200,z210];
z220 = z200 +  (a,-sqrt(3)*a);
%draw z80--z90;

for i = 20, 21, 22:
   for j= 1 upto 6:
      z[10i+j]= z[10i] + e*(cosd(60(j-1)),sind(60(j-1)));
   endfor
endfor

draw z205--z212;
draw z206--z223;
draw z211--z224;

path p;
p = for  j= 1 upto 6:
         z[200+j]..
      endfor
      cycle;
fill p withcolor red;
draw p;
path p;
p = for  j= 1 upto 6:
         z[220+j]..
      endfor
      cycle;
fill p withcolor blue;
draw p;
path p;
p = for  j= 1 upto 6:
         z[210+j]..
      endfor
      cycle;
fill p withcolor green;
draw p;

pickup pencircle scaled 1pt;
draw z[100 + 4]--z[110 + 4] withcolor red;
draw z135--z141 withcolor blue;
draw z122--z156 withcolor green;

numeric a;
a = 7.2pt;
pickup pencircle scaled 0.5pt;

z1000= z0 + (15a,0) + (-4a,a);
z1001 = (3*sqrt(3)*a/2,0);
z1002 = (0,3a/2);
for i = 2 upto 14:
   for j = 1 upto 7:
      z[1000+ 10i +j] = z1000+ j*z1001+  (13 - i)*z1002;
   endfor
endfor

z1160 = z1052 + (-a,a);
z1161 = z1112 + (-a,-a);
z1162 = z1116 + (a,-a);
z1163 = z1056 + (a,a);

%test
%draw z160--z161--z162--z163-- cycle;

for i = 5 upto 11:
   z[1170 + i] = whatever[z1160, z1161] =whatever[z[1000+ 10i+1],z[1000+10i +7]];
   z[1180 + i] = whatever[z1163, z1162] =whatever[z[1000+ 10i+1],z[1000+ 10i +7]];
endfor
for i = 5, 11:
   draw z[1000+ 170 + i]--z[1000+ 180 + i];
endfor

for j= 2 upto 6:
   z[1000+190 + j] = whatever[z1160, z1163] =whatever[z[1000+ 20+j],z[1000+ 140 +j]];
   z[1000+ 200 + j] = whatever[z1161, z1162] =whatever[z[1000+ 20+j],z[1000+ 140 +j]];
endfor
for j= 2, 3, 5, 6:
   draw z[1000+ 190+j]--z[1000+ 200 +j];
endfor

for j= 1 step 2 until 6:
   z[1000+ 210 + j] = whatever[z1160, z1163] =whatever[z[1000+ 20+j],z[1000+ 50 +j +1]];
%  draw z[1000+ 210 + j]--z[1000+ 50 +j +1];
endfor
for j= 3 step 2 until 6:
   z[1000+ 220 + j] = whatever[z1160, z1163] =whatever[z[1000+ 40+j],z[1000+ 50 +j +1]];
%   draw z[220 + j]--z[50 +j +1];
endfor
for j= 2 step 2 until 6:
   z[1000+ 230 + j] = whatever[z1160, z1163] =whatever[z[1000+ 20+j+1],z[1000+ 50 +j]];
 %  draw z[1000+ 230 + j]--z[1000+ 50 +j];
endfor
for j= 2 step 2 until 4:
   z[1000+ 240 + j] = whatever[z1160, z1163] =whatever[z[1000+ 40+j+1],z[1000+ 50 +j]];
%   draw z[1000+ 240 + j]--z[1000+ 50 +j];
endfor

for j= 1 step 2 until 6:
   z[1000+ 250 + j] = whatever[z1161, z1162] =whatever[z[1000+ 140+j],z[1000+ 110 +j+1]];
%  draw z[1000+ 250 + j]--z[1000+ 110 +j +1];
endfor
for j= 3 step 2 until 6:
   z[1000+ 260 + j] = whatever[z1161, z1162] =whatever[z[1000+ 120+j],z[1000+ 110 +j +1]];
%   draw z[1000+ 260 + j]--z[1000+ 110 +j +1];
endfor
for j= 2 step 2 until 6:
   z[1000+ 270 + j] = whatever[z1161, z1162] =whatever[z[1140+j+1],z[1110 +j]];
%   draw z[270 + j]--z[110 +j];
endfor
for j= 2 step 2 until 4:
   z[1000+ 280 + j] = whatever[z1161, z1162] =whatever[z[1000+ 120+j+1],z[1000+ 110 +j]];
%   draw z[280 + j]--z[110 +j];
endfor

for i = 5 step 2 until 11:
   z[1000+ 290 + i] = whatever[z1160, z1161] =whatever[z[1000+ 10(i-1)+1],z[1000+ 10i+2]];
   z[1000+ 300 + i] = whatever[z1160, z1161] =whatever[z[1000+ 10(i+1)+1],z[1000+ 10i+2]];
%  draw z[1000+ 290 + i]--z[1000+ 10i+2];
%  draw z[1000+ 300 + i]--z[1000+ 10i+2];
endfor
for i = 5 step 4 until 8:
   z[1000+ 310 + i] = whatever[ z1160, z1161] =whatever[z[1000+ 10(i+3)+1],z[1000+ 10i+2]];
%   draw z[310 + i]--z[10i+2];
endfor
for i = 11 step 4 until 11:
   z[1000+ 320 + i] = whatever[z1160, z1161] =whatever[z[1000+ 10(i-3)+1],z[1000+ 10i+2]];
%   draw z[1000+ 320 + i]--z[1000+ 10i+2];
endfor

for i = 5 step 2 until 11:
   z[1000+ 330 + i] = whatever[z1162, z1163] =whatever[z[1000+ 10(i-1)+7],z[1000+ 10i+6]];
   z[1000+ 340 + i] = whatever[z1162, z1163] =whatever[z[1000+ 10(i+1)+7],z[1000+ 10i+6]];
%  draw z[1000+ 330 + i]--z[1000+ 10i+6];
%  draw z[1000+ 340 + i]--z[1000+ 10i+6];
endfor
for i = 5 step 4 until 8:
   z[1000+ 350 + i] = whatever[z1162, z1163] =whatever[z[1000+ 10(i+3)+7],z[1000+ 10i+6]];
%   draw z[1000+ 350 + i]--z[1000+ 10i+6];
endfor
for i = 11 step 4 until 11:
   z[1000+ 360 + i] = whatever[z1162, z1163] =whatever[z[1000+ 10(i-3)+7],z[1000+ 10i+6]];
%   draw z[1000+ 360 + i]--z[1000+ 10i+6];
endfor

draw z1232--z1315;
draw z1234--z1251;
draw z1236--z1253;
draw z1371--z1255;

draw z1215--z1355;
draw z1213--z1276;
draw z1211--z1274;
draw z1331--z1272;

draw z1305--z1242;
draw z1307--z1244;
draw z1309--z1335;
draw z1311--z1337;
draw z1263--z1339;
draw z1265--z1341;

draw z1225--z1345;
draw z1223--z1347;
draw z1297--z1351;
draw z1299--z1284;
draw z1301--z1282;

z1400= z1134;
z1410= z1400 - (2a,0);
z1420 =z1400 + (2a,0);
for i =  40, 41, 42:
   for j= 1 upto 4:
      z[1000+10i+j]= z[1000+10i] + e*(cosd(90(j-1)),sind(90(j-1)));
   endfor
endfor

z1419 = 0.5[z1400,z1410];
z1429 = 0.5[z1400,z1420];

path p;
p = for  j= 1 upto 4:
         z[1000+410+j]..
      endfor
      cycle;
fill p withcolor red;
draw p;
path p;
p = for  j= 1 upto 4:
         z[1000+400+j]..
      endfor
      cycle;
fill p withcolor green;
draw p;
path p;
p = for  j= 1 upto 4:
         z[1000+420+j]..
      endfor
      cycle;
fill p withcolor blue;
draw p;

draw z1411--z1403;
draw z1423--z1401;
label.top(btex 6 etex,z1419);

pickup pencircle scaled 1pt;
draw z[1000+170 + 8]--z[1000+180 + 8] withcolor red;
draw z1295--z1349 withcolor green;
draw z[1000+190+4]--z[1000+200 +4] withcolor blue;


pickup pencircle scaled 0.5pt;

z2000 = z1000 +(17.7a,0)+(0,-3a);
z2001 = (3a,0);
z2002 = (0,3a);
for i = 1 upto 6:
   for j = 0 upto 5:
      z[2000 + 10i +j] = z2000+ j*z2001+  (7 - i)*z2002;
   endfor
endfor

z2080 = z2010 + (2a,-2a);
z2081 = z2015 + (-2a,-2a);
z2082 = z2065 + (-2a,2a);
z2083 = z2060 + (2a,2a);

%test
%draw z2080--z2081--z2082;
%draw z2080--z2083--z2082;
for i = 2 upto 5:
   z[2000+ 100 + i] = whatever[z2080, z2083] =whatever[z[2000+ 10i],z[2000+ 10i +5]];
   z[2000+ 110 + i] = whatever[z2081, z2082] =whatever[z[2000+ 10i],z[2000+ 10i +5]];
endfor
for i = 2, 3, 5:
   draw z[2000+ 100 + i]--z[2000+ 110 + i];
endfor
for j = 1 upto 4:
   z[2000+ 120 + j] = whatever[z2080, z2081] =whatever[z[2000+ 10 + j ],z[2000+ 60 + j]];
   z[2000+ 130 + j] = whatever[z2082, z2083] =whatever[z[2000+ 10 + j],z[2000+ 60+ j]];
endfor
for  j = 1 upto 4:
   draw z[2000+ 120 + j]--z[2000+ 130 + j];
endfor

for j = 0 upto 3:
	z[2000+ 140 + j] = whatever[z2080, z2081] = whatever[z[2000+ 10+j],z[2000+ 20+j+1]];
%	draw z[2000+ 140 + j]--z[2000+ 20+j+1];
endfor
for j = 1 upto 4 :
	z[2000+ 150 + j] = whatever[z2080, z2081] = whatever[z[2000+ 20+j],z[2000+ 10+j+1]];
%	draw z[2000+ 150 + j]--z[2000+ 20+j];
endfor
for j = 0 upto 3:
	z[2000+ 160 + j] = whatever[z2082, z2083] = whatever[z[2000+ 60+j],z[2000+ 50+j+1]];
%	draw z[2000+ 160 + j]--z[2000+ 50+j+1];
endfor
for j = 1 upto 4 :
	z[2000+ 170 + j] = whatever[z2082, z2083] = whatever[z[2000+ 50+j],z[2000+ 60+j+1]];
%	draw z[170 + j]--z[50+j];
endfor
for i = 0 upto 4:
	z[2000+ 180 + i] = whatever[z2080, z2083] = whatever[z[2000+ 10i],z[2000+ 10(i+1)+1]];
%	draw z[2000+ 180 + i]--z[2000+ 10(i+1)+1];
endfor
for i = 2 upto 5:
	z[2000+ 190 + i] = whatever[z2080, z2083] = whatever[z[2000+ 10(i+1)],z[2000+ 10i+1]];
%	draw z[2000+ 190 + i]--z[2000+ 10i+1];
endfor
for i = 1 upto 4:
	z[2000+ 200 + i] = whatever[z2081, z2082] = whatever[z[2000+ 10i+5],z[2000+ 10(i+1)+4]];
%	draw z[200 + i]--z[10(i+1)+4];
endfor
for i = 2 upto 5:
	z[2000+ 210 + i] = whatever[z2081, z2082] = whatever[z[2000+ 10(i+1)+5],z[2000+ 10i+4]];
%	draw z[2000+ 210 + i]--z[2000+ 10i+4];
endfor

draw z2151--z2192;
draw z2152--z2193;
draw z2153--z2194;
draw z2154--z2195;
draw z2161--z2202;
draw z2162--z2203;
draw z2163--z2204;

draw z2143--z2212;
draw z2142--z2213;
draw z2141--z2214;
draw z2140--z2215;
draw z2173--z2182;
draw z2172--z2183;
draw z2171--z2184;

z2220= 0.5[z2062,z2063];
z2230= z2220 - (2a,0);
z2240 =z2220 + (2a,0);
for i =  22, 23, 24:
   for j= 1 upto 4:
      z[2000+10i+j]= z[2000+10i] + e*(cosd(90(j-1)),sind(90(j-1)));
   endfor
endfor

z2239 = 0.5[z2220,z2230];
z2249 = 0.5[z2220,z2240];

path p;
p = for  j= 1 upto 4:
         z[2000+230+j]..
      endfor
      cycle;
fill p withcolor red;
draw p;
path p;
p = for  j= 1 upto 4:
         z[2000+220+j]..
      endfor
      cycle;
fill p withcolor green;
draw p;
path p;
p = for  j= 1 upto 4:
         z[2000+240+j]..
      endfor
      cycle;
fill p withcolor blue;
draw p;

draw z2231--z2223;
draw z2243--z2221;
label.top(btex 4 etex,z2239);
label.top(btex 4 etex,z2249);

pickup pencircle scaled 1pt;
draw z2154--z2195 withcolor red;
draw z[2000+100 + 4]--z[2000+110 + 4] withcolor green;
draw z2140--z2215 withcolor blue;
endfig;



verbatimtex
\end{document}
etex;
end