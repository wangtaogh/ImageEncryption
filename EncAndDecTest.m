clc;clear;close all;
P = imread('lena.bmp');
iptsetpref('imshowborder','tight');%图像处理工具箱设置首选项，图像展示框，紧紧围绕图像
figure(1);imshow(P);

%相关系数
r1=ImCoef(P,2000);

C=TpEncrypt(P);

%相关系数
r2=ImCoef(C,2000);

P1=TpDecrypt(C);



%直方图
% P2=double(P);
% figure;hist(P2(:),256);set(gca,'fontsize',18);
% fp1=hist(P2(:),256);g=512*512/256;chai1=sum((fp1-g).^2)/g;
% C1=double(C);
% figure;hist(C1(:),256);set(gca,'fontsize',18);
% fp2=hist(C1(:),256);chai2=sum((fp2-g).^2)/g;