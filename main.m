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

fprintf('alpha1 = %d\n', alpha1); 
fprintf('alpha2 = %d\n', alpha2);


%% CALCULATION
alpha1 = alpha1/180*pi;
alpha2 = alpha2/180*pi;

%thoi gian cham dat khi nem goc alpha1
t1=(2*vo*sin(alpha1))/g; 
fprintf('t1 = %f\n', t1); 

%thoi gian cham dat khi nem goc alpha2
t2=(2*vo*sin(alpha2))/g;
fprintf('t2 = %f\n', t1);


%% ZONE::::::TINH TOAN TOA DO DE VE DO THI

%cho gia tri t chay tu t=0 den t=t1
t=[0:0.01:t1]; % step 0.01 -> t1 : 0.00 - 0.01 - 0.02

%tinh do cao khi goc la alpha1
h1=vo*sin(alpha1).*t-g.*t.*t/2; 


%tinh tam xa khi goc la alpha1
l1=vo*cos(alpha1).*t;


%cho gia tri t3 chay tu t3=0 den t3=t2
t3=[0:0.01:t2];

%do cao khi goc la alpha2
h2=vo*sin(alpha2).*t3-g.*t3.*t3/2;

%tam xa khi goc la alpha2
l2=vo*cos(alpha2).*t3;

% Gop 2 do thi cua goc alpha1 va goc alpha2
%% FIGURE
plot(l1,h1,l2,h2);
hold on;
legend('do thi quy dao cua vat khi goc nem la alpha1','do thi quy dao cua vat khi goc nem la alpha2');
%chu thich tieu de cua do thi
title('do thi quy dao cua vat ung voi 2 goc nem');
%chu thich truc x
xlabel('tam xa');
%chu thich truc y
ylabel('do cao');
hold off




