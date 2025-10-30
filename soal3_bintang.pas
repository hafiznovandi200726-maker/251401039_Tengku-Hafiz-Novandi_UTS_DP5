program BintangIdamanku;        

uses crt;                      

var
  i, j: integer;                 // Deklarasi variabel 

begin
  clrscr;                        


  for i := 1 to 3 do              // Loop baris dari 1 sampai 3
  begin
    for j := 1 to i do            // Setiap baris mencetak bintang sebanyak nilai i
      write('*');                 // Mencetak bintang tanpa pindah baris
    writeln;                      // Pindah ke baris baru setelah satu baris selesai
  end;


  for i := 1 to 5 do              // Loop baris dari 1 sampai 5
  begin
    case i of                     // Menggunakan case untuk menentukan jumlah bintang per baris
      1: for j := 1 to 8 do write('*');   // Baris 1: 8 bintang
      2: for j := 1 to 7 do write('*');   // Baris 2: 7 bintang
      3: for j := 1 to 6 do write('*');   // Baris 3: 6 bintang
      4: for j := 1 to 7 do write('*');   // Baris 4: 7 bintang
      5: for j := 1 to 8 do write('*');   // Baris 5: 8 bintang
    end;
    writeln;                      // Pindah ke baris baru setelah satu baris selesai
  end;

end.
