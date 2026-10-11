program Soal8;
// Nama : Javier Eugenius Batistuta Sinaga 
// NIM : 261401011
var
  gol: char;
  jam, lembur: integer;
  pokok, upahLembur, bonus, total: longint;
  valid: boolean;
begin
  write('Golongan (A/B/C): '); readln(gol);
  write('Total jam kerja per minggu: '); readln(jam);
  gol := upcase(gol);
  valid := true;
  bonus := 0;

  case gol of
    'A': pokok := 1500000;
    'B': pokok := 2000000;
    'C': pokok := 2500000;
  else
    begin
      valid := false;
      pokok := 0;
      writeln('Golongan tidak valid!');
    end;
  end;

  if valid then
  begin
    if jam > 40 then lembur := jam - 40 else lembur := 0;
    upahLembur := lembur * 20000;
    if (gol = 'C') and (jam > 50) then bonus := 100000;
    total := pokok + upahLembur + bonus;

    writeln('=== RINCIAN GAJI ===');
    writeln('Gaji Pokok : Rp', pokok);
    writeln('Lembur     : Rp', upahLembur, ' (', lembur, ' jam)');
    writeln('Bonus      : Rp', bonus);
    writeln('Total Gaji : Rp', total);
  end;
end.
