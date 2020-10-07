clc;%清除当前command区域的命令
clear;%清空环境变量
P1 = imread('lena.bmp');
iptsetpref('imshowborder','tight');%图像处理工具箱设置首选项，图像展示框，紧紧围绕图像
[M,N]=size(P1);
x0=rand(1,3)*80-40;y0=rand(1,3)*80-40;
z0=rand(1,3)*80+1;w0=rand(1,3)*500-250;
K1=[x0(1) y0(1) z0(1) w0(1)];

C1=TpEncrypt(P1,K1);
C1=double(C1);
H11=ENTROPY(P1);H12=ENTROPY(C1);