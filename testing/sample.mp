%------------------------------------------------------------------------------
% sample.mp
% This sample MetaPost file is provided just as a convenience for testing the
% operation of the MetaPost.plist CLM file. Open this file in BBEdit and verify
% that it is getting syntax-colored and generally "understood" by BBEdit as a
% MetaPost file.
%------------------------------------------------------------------------------

%--- Automatic figure numbering ---
% Use `nextfig` instead of `beginfig(n)` to automatically get figures numbered
% consecutively starting from 0.
fignum:=-1;

def nextfig =
	fignum:=fignum+1;
	beginfig(fignum);
enddef;


% Variables for fill/stroke macros
color fillcolor, strokecolor;
pen strokepen;
numeric strokewidth;

fillcolor := white;
strokecolor := black;
strokepen := pencircle;
strokewidth := 1pt;

%--- fillstroke(p) ---
% Fills path p with fillcolor and strokes it with strokecolor using
% strokepen of width strokewidth.
vardef fillstroke (expr p) =
	fill p withcolor fillcolor;
	draw p withpen strokepen scaled strokewidth withcolor strokecolor;
enddef;

%--- doublestroke(p,wd_out,wd_in) ---
% Draws path p twice, first with strokecolor using strokepen scaled wd_out,
% then with fillcolor using strokepen scaled wd_in.
vardef doublestroke (expr p, wd_out, wd_in) =
	draw p withpen strokepen scaled wd_out withcolor strokecolor;
	draw p withpen pencircle scaled wd_in withcolor fillcolor;
enddef;


%----- FIGURES BEGIN HERE -----

beginfig(7) ;
	draw unitsquare xscaled 2in yscaled 15mm withpen pencircle scaled 2pt;
endfig;


nextfig;
	path p;
	save strokecolor; color strokecolor;
	fillcolor:=(.8, .7, 1);
	p := (origin--(1,0)..(0,.5)..cycle) scaled 1in;
	strokecolor := .5white;
	doublestroke (p, 2mm, 1pt);
endfig;


beginfig(8);
	fillstroke(fullcircle xscaled 2in yscaled 1in);
endfig;

end.
