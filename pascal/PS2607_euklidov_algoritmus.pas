Program PS2607;
uses crt;
var a,b: integer;
begin
  clrscr;
  write('Zadaj prve cislo: ');
  readln(a);
  write('Zadaj druhe cislo ');
  readln(b);
  while a <> b do
  begin
    if a > b then
      a := a - b
    else
      b := b - a;
  end;
  writeln('Najvacsi spolocny delitel je: ',a);
  readln;
end.
