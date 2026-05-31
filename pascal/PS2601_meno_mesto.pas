Program PS2601;
uses crt;
var mesto, meno: string [25];
const skola= 'Gymnazium M. R. Stefanika';
begin
  clrscr;
  gotoxy (20,5);
  writeln ('Prvy program');
  gotoxy (20,7);
  writeln('Zadajte mesto a svoje meno');
  gotoxy(20,9);
  write('mesto = ');readln(mesto);
  gotoxy (40,9);
  write('meno = ');readln(meno);
  gotoxy (20,12);
  writeln ('Ahoj ', meno, ' z ', skola, ' z mesta ', mesto);
  repeat until keypressed;
end.
