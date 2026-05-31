Program PS2604;
uses crt;
var v,a,b: real;
op: char;
begin
  clrscr;
  gotoxy (20,5); writeln('jednoducha kalkulacka');
  gotoxy (20,7); writeln('zadaj operandy a operator');
  gotoxy(20,9); write('a= '); readln (a);
  gotoxy(20,11); write('b= '); readln (b);
  gotoxy(20,13); write('op... +,-,*, / = '); readln (op);
  gotoxy(20,15);
  case op of
    '+': v:=a+b;
    '-': v:=a-b;
    '*': v:=a*b;
    '/': v:=a/b
  else writeln('Chybny operator');
  end;
  writeln('a',op,' b = ',a:5:2,op,b:5:2,' = ',v:5:2);
  repeat until keypressed;
end.
