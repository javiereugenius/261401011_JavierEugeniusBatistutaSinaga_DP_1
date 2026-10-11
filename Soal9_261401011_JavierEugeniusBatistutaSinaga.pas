program Soal9;
// Nama : Javier Eugenius Batistuta Sinaga 
// NIM : 261401011
var
  tahun, bulan, hari: integer;
  kabisat: boolean;
begin
  write('Masukkan tahun: '); readln(tahun);
  write('Masukkan nomor bulan (1-12): '); readln(bulan);

  kabisat := (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0));

  if kabisat then writeln('Tahun ', tahun, ' adalah tahun kabisat')
  else writeln('Tahun ', tahun, ' bukan tahun kabisat');

  case bulan of
    1, 3, 5, 7, 8, 10, 12: hari := 31;
    4, 6, 9, 11: hari := 30;
    2: if kabisat then hari := 29 else hari := 28;
  else
    hari := 0;
  end;

  if hari = 0 then
    writeln('Nomor bulan tidak valid!')
  else
    writeln('Jumlah hari: ', hari, ' hari');
end.
