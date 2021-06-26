x = nomer1;
k = [0,0,1,0,1];%atribut tiap-tiap kriteria, dimana nilai 1=atrribut keuntungan, dan 0= atribut biaya
w=[0,3,5,4,1];
w=w./sum(w); %membagi bobot per kriteria dengan jumlah total seluruh bobot
[m, n]=size (x); %inisialisasi ukuran x
for j=1:n,
if k(j)==0, w(j)=-1*w(j);
end;
for i=1:m,
S(i)=prod(x(i,:).^w);%normalisasi
end;
end;
V = S./sum(S);
hasil = {nomer1 V};%pengggabungan antara data dengan hasil nilai WP

 
V = V.';%mentranspose V

hasil = [nomer1 V];

D = sortrows(hasil,5); %mengurutkan

%Mohon maaf saya pakai command window, terus command windownya saya pindah
%simpan disini 

%saya pakai matlab 2012 jadi kadang gabisa dirun
