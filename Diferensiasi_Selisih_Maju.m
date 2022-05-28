clear
clc
disp('Nama : Sukron Katsir')
disp('NIM  : 2020520012')
disp('======================================================')
disp('           Metode Diferensiasi Selisih Maju           ')
disp('======================================================')

disp('Diketahui:')
a=input('Batas bawah a = ');
b=input('Batas atas b = ');
h=input('h = ');
n=(b-a)/h;
sigma=0;
%f = @(x) 2*x.*exp(x); %Fungsi
f = @(x) 2*x.*exp(x); %Fungsi
f_eksak = @(x) (2*x.*exp(x))+(2*exp(x)); %Turunan Pertama Eksak
f_hampiran = @(x,h) (f(x+h)-f(x))/h; %Metode Selisih Tengah

disp('======================================================')
disp('i       x        f maju      f eksak      error       ')
disp('======================================================')
for i=0:n
    x=a+i*h;
    fm=f_hampiran(x,h);
    fek=f_eksak(x);
    e=abs(fek-fm);
    sigma=sigma+e;
    fprintf('%d    %f    %f    %f    %f    \n', i,x,fm,fek,e)
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