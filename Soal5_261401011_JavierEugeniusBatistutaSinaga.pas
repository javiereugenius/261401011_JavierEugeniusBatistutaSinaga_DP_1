program Soal5;
// Nama : Javier Eugenius Batistuta Sinaga
// NIM : 261401011
var
  m, n, i, j: integer;
  nilai, jumlah, rata: real;
  lulus, tidakLulus: integer;
begin
  write('Jumlah mahasiswa (M): '); readln(m);
  write('Jumlah tugas (N)    : '); readln(n);
  lulus := 0;
  tidakLulus := 0;

  for i := 1 to m do
  begin
    jumlah := 0;
    writeln('--- Mahasiswa ke-', i, ' ---');
    for j := 1 to n do
    begin
      write('Nilai tugas ', j, ': '); readln(nilai);
      jumlah := jumlah + nilai;
    end;
    rata := jumlah / n;
    write('Rata-rata mahasiswa ', i, ': ', rata:0:2, ' -> ');
    if rata >= 65 then
    begin
      writeln('LULUS');
      lulus := lulus + 1;
    end
    else
    begin
      writeln('TIDAK LULUS');
      tidakLulus := tidakLulus + 1;
    end;
  end;

  writeln('=== REKAP ===');
  writeln('Total LULUS       : ', lulus);
  writeln('Total TIDAK LULUS : ', tidakLulus);
end.
