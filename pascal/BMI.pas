Program BMI;
uses crt;
var vaha, vyska, bmi: real;
begin
  clrscr;
  gotoxy(20,5);
  writeln('Kalkulator BMI');
  gotoxy(20,7);
  write('Vyska (m): '); readln(vyska);
  gotoxy(20,9);
  write('Vaha (kg): '); readln(vaha);
  bmi := vaha / (vyska * vyska);
  gotoxy(20,12);
  writeln('BMI = ', bmi:5:2);
  gotoxy(20,14);
  if bmi < 20 then
    writeln('Podvaha')
  else if bmi > 25 then
    writeln('Nadvaha')
  else
    writeln('Normal');
  repeat until keypressed;
end.
