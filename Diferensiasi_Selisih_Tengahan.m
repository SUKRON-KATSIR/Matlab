clear
clc
disp('Nama : Sukron Katsir')
disp('NIM  : 2020520012')
disp('======================================================')
disp('          Metode Diferensiasi Selisih Tengah          ')
disp('======================================================')

%DIKETAHUI
disp('Diketahui:')
a=input('Batas bawah a = ');
b=input('Batas atas b = ');
h=input('h = ');
n=(b-a)/h;
sigma=0;
f = @(x) 5*x.^3; %Fungsi
f_eksak = @(x) 15*x.^2; %Turunan Pertama
f_hampiran = @(x,h) (f(x+h)-f(x-h))/(2*h); %Metode Selisih Tengah

%TABELNYA
disp('======================================================')
disp('i       x        f tengah      f eksak      error     ')
disp('======================================================')
for i=0:n
    x=a+i*h;
    ft=f_hampiran(x,h);
    fek=f_eksak(x);
    e=abs(fek-ft);
    sigma=sigma+e;
    fprintf('%d    %f    %f    %f    %f    \n', i,x,ft,fek,e)
end

%GRAFIK
x=a:h:b;
hold on
grid on;

dff=f_eksak(x); %Turunan Eksak
plot(x,dff,'b-');
ftt=f_hampiran(x,h);
plot(x,ftt,'-r');

legend('f Hampiran','f Eksak');
hold off

%SELESAIIIII
rata_error= sigma/(i+1);
disp('======================================================')
fprintf('Rata-rata error = %f \n', rata_error)