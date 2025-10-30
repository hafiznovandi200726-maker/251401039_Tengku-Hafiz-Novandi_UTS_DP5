program DeretFibonacci;          

uses crt;                        

var
  n, i: integer;                  // n = jumlah suku yang ingin ditampilkan, i = variabel penghitung loop
  a, b, c, jumlah: longint;       // a dan b = dua suku awal Fibonacci, c = suku berikutnya, jumlah = total seluruh suku

begin
  clrscr;                         // Membersihkan layar sebelum program berjalan
  write('N  =  ');  // Menampilkan pesan input
  readln(n);                      // Membaca jumlah suku dari pengguna

  a := 0;                         // Inisialisasi suku pertama Fibonacci
  b := 1;                         // Inisialisasi suku kedua Fibonacci
  jumlah := a + b;                // Menyimpan total sementara dari dua suku pertama

  write('Sequence : ');           // Menampilkan label deret
  write(a, ' ', b, ' ');          // Menampilkan dua suku pertama: 0 dan 1

  for i := 3 to n do              // Perulangan mulai dari suku ke-3 hingga ke-n
  begin
    c := a + b;                   // Rumus Fibonacci: suku sekarang = dua suku sebelumnya
    write(c, ' ');                // Menampilkan suku ke-i
    jumlah := jumlah + c;         // Menambahkan nilai c ke total jumlah
    a := b;                       // Geser nilai: suku sebelumnya jadi b
    b := c;                       // suku terbaru jadi b untuk perhitungan berikutnya
  end;

  writeln;                        // Pindah ke baris baru setelah mencetak deret
  writeln('Total : ', jumlah);    // Menampilkan hasil penjumlahan seluruh suku Fibonacci

end.
