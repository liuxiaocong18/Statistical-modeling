clc,clear
x0=xlsread('Ê±¼ä¹À¼Æ');
alpha=0.2;
mu=mean(x0),sig=std(x0),n=length(x0);
t=[mu-sig/sqrt(n)*tinv(1-alpha/2,n-1),mu+sig/sqrt(n)*tinv(1-alpha/2,n-1)]
[h,p,ci]=ttest(x0,mu,0.2)