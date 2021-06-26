x=jaksel;%mengambil data
k=[0,0,0,0,1,1,1];%membagi menjadi cost dan benefit
w=[0,0.30,0.20,0.23,0.10,0.07,0.10];%menentukan nilai
R=zeros (m,n);
[m, n]=size (x);
R=zeros (m,n);
Y=zeros (m,n);
for j=1:n,
if k(j)==1, %statement untuk kriteria dengan atribut keuntungan
R(:,j)=x(:,j)./max(x(:,j));
else
R(:,j)=min(x(:,j))./x(:,j);
end;
for i=1:m,
V(i)= sum(w.*R(i,:))
end;
hasil = V.';%mentranspose hasil 
hasil2 = [jaksel, hasil];%menggabungkan menjadi data rumah dan hasil
rank = sortrows(hasil2,8); %meranking
rank20 = rank(1:20,1:8);%membuat ranking 20  teratas