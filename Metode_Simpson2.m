clear all
clc
disp('Nama : Sukron Katsir')
disp('NIM  : 2020520012')
disp('================================')
disp('        Metode Simpson 1/3')
disp('================================')
a=input('Batas bawah a = ');
b=input('Batas atas b = ');
n=input('Jumlah interval n = ');
h=(b-a)/n;
x=a;
sigma=0;
f(x)= @(x)(x.^2+5*x)/sqrt(2*x); %Fungsi
disp('f(x) = (x.^2+5*x)/sqrt(2*x)')

fprintf('%d     %f     %f \n', 1, x, f(x))
for i = 1:n-1
 x = x+h;
 if mod(i,2)==1
 sigma = sigma + 4*f(x);
 else
 sigma = sigma + 2*f(x);
 end
 fprintf('%d     %f     %f \n',i+1, x, f(x))
end
I = (h/3)*(f(a) + sigma + f(b));
disp('================================')
fprintf('Hasil Integral : %f \n', I)