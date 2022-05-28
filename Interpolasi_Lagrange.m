clear all
clc
disp('Nama : Sukron Katsir')
disp('NIM  : 2020520012')
disp('================================')
disp('     Interpolasi Lagrange')
disp('================================')
n=input('Masukkan Batas Maksimal = ');
for k=1:n
    x(k)=input('Masukan Nilai x = ');
    y(k)=input('Masukan Nilai y = ');
    sprintf('Nilai x(%d)=(%f)',k,x(k))
    sprintf('Nilai y(%d)=(%f)',k,y(k))
end
x1=input('Masukkan Nilai yang dicari = ');
sum=0;
for i=1:n
    temp=1;
    for j=1:n
        if j~=i
            temp=temp*(x1-x(j))/(x(i)-x(j));
        end
    end
    sum=sum+y(i)*temp;
end
[sum]