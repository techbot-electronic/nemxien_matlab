%% Khai bao hang so
g = 9.81;
vo = 15;
goc_vuong = 90;

%% Nhap goc alpha1
%% Kiem tra goc alpha1 co thoa dieu kien nem xien hay khong ( alpha1 < 90)
ready = false;
while ~ready
  alpha1 = input('Nhap vao goc alpha1 ');
  ready = (alpha1 < 90);
  if ready
     disp('Goc alpha1 nhap vao thoa man dieu kien nem xien ');
  else
     disp('Nhap lai alpha1 thoa dieu kien alpha1 < 90 degree '); 
  end
end

disp('Cong thuc tam nem xa cua vat la L=v^2*sin(2*alpha1)/g');
disp('Do hai vat co cung tam nem xa va cung van toc ban dau nen sin(2*alpha1)=sin(2*alpha2)');
disp('Do 0 < alpha2 < 90 nen alpha2 = 90 - alpha1 ');
alpha2 = goc_vuong - alpha1;
disp('Vay gia tri cua goc a2 la ' );
disp(alpha2);









syms a b v0 h1 h2 l1 l2 t g t1 t2 t3
%nhap gia toc trong truong
g = input('nhap vao gia tri gia toc trong truong g ');
%nhap v0
v0=input('Nhap v ');
%nhap a1
a1=input('Nhap vao goc a1 ');
%nhap lai a1 neu a1>=pi/2
if a1>=pi/2
disp('xin nhap lai goc nem a1 ');
end
%neu a1 thoa dieu kien thi chay tiep phan duoi nay
if a1<pi/2
%in ra man cong thuc qua tam nem xa
disp('Tam nem xa cua vat la L=v^2*sin(2*a1)/g');
%in ra man hinh cach tiep can bai toan
disp('Do hai vat co cung tam nem xa va cung van toc ban dau nen sin(2*a1)=sin(2*a2)');
disp('Do 0<a2<pi/2 nen a2=pi/2-a1');
a2=pi/2-a1;
disp('Vay gia tri cua goc a2 la ' );
disp(a2);
%thoi gian cham dat khi nem goc a1
t1=(2*v0*sin(a1))/g;
%thoi gian cham dat khi nem goc a2
t2=(2*v0*sin(a2))/g;
%cho gia tri t chay tu t=0 den t=t1
t=[0:0.01:t1];
%tinh do cao khi goc la a1
h1=v0*sin(a1).*t-g.*t.*t/2;
%tinh tam xa khi goc la a1
l1=v0*cos(a1).*t;
%cho gia tri t3 chay tu t3=0 den t3=t2
t3=[0:0.01:t2];
%do cao khi goc la a2
h2=v0*sin(a2).*t3-g.*t3.*t3/2;
nhap vao gia tri gia toc trong truong g 
%tam xa khi goc la a2
l2=v0*cos(a2).*t3;
% 2 do thi tren cung 1 hinh
plot(l1,h1,l2,h2);
hold on;
legend('do thi quy dao cua vat khi goc nem la a1','do thi quy dao cua vat khi goc nem la a2');
%chu thich tieu de cua do thi
title('do thi quy dao cua vat ung voi 2 goc nem');
%chu thich truc x
xlabel('tam xa');
%chu thich truc y
ylabel('do cao');
hold off
End
