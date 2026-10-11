program Soal7;
// Nama : Javier Eugenius Batistuta Sinaga
// NIM : 261401011
var
  kode: char;
  jam: integer;
  tarif: longint;
  valid: boolean;
begin
  write('Kode kendaraan (M=Mobil, K=Motor, B=Bus): ');
  readln(kode);
  write('Lama parkir (jam): '); readln(jam);
  kode := upcase(kode);
  valid := true;
  tarif := 0;

  case kode of
    'M': if jam > 10 then tarif := 30000
         else tarif := 5000 + (jam - 1) * 3000;
    'K': if jam > 10 then tarif := 10000
         else tarif := 2000 + (jam - 1) * 1000;
    'B': if jam > 10 then tarif := 50000
         else tarif := 10000 + (jam - 1) * 5000;
  else
    begin
      valid := false;
      writeln('Kode kendaraan tidak valid!');
    end;
  end;

  if valid then
  begin
    if jam > 10 then writeln('(Berlaku tarif maksimal flat)');
    writeln('Total tarif parkir: Rp', tarif);
  end;
end.
