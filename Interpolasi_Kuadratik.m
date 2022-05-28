clear all
clc
disp('Nama : Sukron Katsir');
disp('NIM  : 2020520012');
disp('================================');
disp('     Interpolasi Kuadratik')
disp('================================')
x1=input('Masukkan nilai x1 = ');
y1=input('Masukkan Nilai y1 = ');
x2=input('Masukkan Nilai x2 = ');
y2=input('Masukkan Nilai y2 = ');
x3=input('Masukkan Nilai x3 = ');
y3=input('Masukkan Nilai y3 = ');
x=input('Masukkan Nilai x = ');
if x1<x&&x<x2||x2<x&&x<x3
    y=y1*(((x-x2)*(x-x3))/((x1-x2)*(x1-x3)))+y2*(((x-x1)*(x-x3))/((x2-x1)*(x2-x3)))+y3*(((x-x1)*(x-x2))/((x3-x1)*(x3-x2)));
else
    sprintf('input x yang anda masukkan salah ')
end
disp(['nilai y= ', num2str(y)]);