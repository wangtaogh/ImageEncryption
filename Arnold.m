clc;
clear;
P=imread('lena.bmp');
%P=imresize(P,[64,64]);
figure(1);imshow(P);P=double(P);
iptsetpref('imshowborder','tight');
S=P;
[M,N] = size(P);
a=7;b=9;
%for k=1:5
   for i=1:M
       for j=1:N
           [x,y] = f_arnold(i,j,a,b);
           t=S(x,y);S(x,y) = S(i,j);S(i,j)=t;
       end
   end
%end
figure(2);
imshow(uint8(S));
%ͼ��ֱ��ͼ
figure;hist(S(:),256);set(gca,'fontsize',18);
%ֱ��ͼx^2����
fp2=hist(S(:),256);g=M*N/256;chai2=sum((fp2-g).^2)/g;

%���ܹ���
%  for i=M:-1:1
%      for j=N:-1:1
%          [x,y] = f_arnold(i,j,a,b);
%          t=S(x,y);S(x,y) = S(i,j);S(i,j)=t;
%      end
%  end
%  figure(3); 
%  imshow(P);
 
% ����a��b��������ϵͳ����
% s=ChaoticSequence(2*M*N);
% X=mod(floor((s+100)*10^10),10*max(M,N))+1;
% a=reshape(X(1:M*N),M,N);b=reshape(X(M*N+1:2*M*N),M,N);
%     for i=1:M
%        for j=1:N
%            [x,y] = f_arnold(i,j,a(i,j),b(i,j));
%            t=S(x,y);S(x,y) = S(i,j);S(i,j)=t;
%        end
%     end
% 
% figure(2); 
% imshow(S);
% 
% for i=M:-1:1
%     for j=N:-1:1
%         [x,y] = f_arnold(i,j,a(i,j),b(i,j));
%         t=S(x,y);S(x,y) = S(i,j);S(i,j)=t;
%     end
% end
% figure(3); 
% imshow(P);
%��ŵ���溯��
% for i=M:1
%     for j=N:1
%         [x,y]=f_arnoldX(i-1,j-1,a,b);
%         P(x+1,y+1) = S(i,j);
%     end
% end
% figure;
% imshow(P);