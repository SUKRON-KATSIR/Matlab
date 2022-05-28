clear
clc
disp('Nama : Sukron Katsir');
disp('NIM  : 2020520012');
disp('================================');
disp('        Metode Reimann')
disp('================================')
a=input('Batas bawah a = ');
b=input('Batas atas b = ');
n=input('Jumlah interval n = ');
h=(b-a)/n;
x = linspace(a,b,n);
fs= @(x)(x.^2+5*x)/sqrt(2*x); %Fungsi
disp('f(x) = (x.^2+5*x)/sqrt(2*x)')

for i=1:n
    x(i)=a+i*h;
end
I1=h*(fs(a)+fs(x(n)));

I2=0;
if n>1
    for i=1:n-1
        I2=I2+h*(2*fs(x(i)));
    end
else
    I2=0;
end
I=I1+I2;
disp('================================')
disp(['Hasil Integral= ',num2str(I)])