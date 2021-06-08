namaPerusahaan = {'Wahana' 'Sicepat' 'JNT' 'JNE'};
data = [ 16 200 120
15 160 135
12 193 120
14 250 100];
maksJamKerjaPerHari = 20;
maksJumlahBarangDiterima = 300;
maksJumlahBarangTerkirim = 200;
data(:,1) = data(:,1) / maksJamKerjaPerHari;
data(:,2) = data(:,2) / maksJumlahBarangDiterima;
data(:,3) = data(:,3) / maksJumlahBarangTerkirim;
relasiAntarKriteria = [ 1     2     2
                          0     1     4
                          0     0     1];
TFN = {[-100/3 0     100/3]     [3/100  0     -3/100]
       [0      100/3 200/3]     [3/200  3/100 0     ]
       [100/3  200/3 300/3]     [3/300  3/200 3/100 ]
       [200/3  300/3 400/3]     [3/400  3/300 3/200 ]};
[RasioKonsistensi] = HitungKonsistensiAHP(relasiAntarKriteria);

if RasioKonsistensi < 0.10
[bobotAntarKriteria, relasiAntarKriteria] = FuzzyAHP(relasiAntarKriteria, TFN);
ahp = data * bobotAntarKriteria';
disp('Hasil Perhitungan dengan metode Fuzzy AHP')
disp('Perusahaan   , Skor Akhir, Kesimpulan')
for i = 1:size(ahp, 1)
if ahp(i) < 0.6
status = 'Kurang';
elseif ahp(i) < 0.7
status = 'Cukup';
elseif ahp(i) < 0.8
status = 'Baik';
else
status = 'Sangat Baik';
end
disp([char(namaPerusahaan(i)), blanks(13 - cellfun('length',namaPerusahaan(i))), ', ', ...
num2str(ahp(i)), blanks(10 - length(num2str(ahp(i)))), ', ', ...
char(status)])
end
end;