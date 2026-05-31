Program PS2602;
uses crt;
var U, I, R: real;
begin
  clrscr;
  gotoxy (20,5);
  writeln('Ohmov zakon');
  gotoxy (20,7);
  writeln('Zadaj napatie U a prud I');
  gotoxy (20,9);
  write('U = ');readln(U);
  gotoxy (40,9);
  write('I = ');readln(I);
  gotoxy (20,12);
  if I=0 then writeln('I <> 0')
  else writeln ('R = U/I=', U:5:2,'/', I:5:2,'=', U/I:5:2);
  repeat until keypressed;
end.
