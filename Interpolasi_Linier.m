clear all
clc
disp('Nama : Sukron Katsir');
disp('NIM  : 2020520012');
disp('================================');
disp('     Interpolasi Linier')
disp('================================')
x1=input('Masukkan nilai x1 = ' );
y1=input('Masukkan Nilai y1 = ');
x2=input('Masukkan Nilai x2 = ');
y2=input('Masukkan Nilai y2 = ');
x=input('Masukkan Nilai x = ');
if x1<x&&x<x2 
    y=(((y2-y1)/(x2-x1))*(x-x1))+y1; 
else
    sprintf('input x yang anda masukkan salah ')
end
disp(['nilai y= ', num2str(y)]);