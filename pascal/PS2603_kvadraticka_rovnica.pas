Program PS2603;
uses crt;
var a,b,c,D, x1, x2:real;
  begin
  clrscr;
  gotoxy(20,5);
  writeln('Riesenie kvadratickej rovnice');
  gotoxy(20,7);
  writeln('Zadajte parametre kvadratickej rovnice');
  gotoxy(20,9);
  write('a= ');readln(a);
  gotoxy (30,9);
  write('b= ');readln(b);
  gotoxy (40,9);
  write('c= ');readln(c);
  D:= b*b-4*a*c;
  gotoxy(20,12);
  if D<0 then
  begin
    textbackground(red);
    writeln('Uloha nema v R riesenie');
  end
  else
  begin
    x1:= (-b+sqrt(D))/(2*a);
    x2:= (-b-sqrt(D))/(2*a);
    writeln('Riesenie kvadratickej rovnice je x1= ',x1:5:2,' x2= ',x2:5:2);
  end;
  repeat until keypressed;
end.
