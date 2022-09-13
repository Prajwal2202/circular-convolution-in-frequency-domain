clc
close all
clear all
x=[1,2,3,4];
h=[4,5,4,5];
m=length(x);
n=length(h);
N=max(m,n);
if(m~=n)
    for i=m+1:N
        x(i)=0;
    end
end
if(n~=m)
    for i=n+1:N
        h(i)=0;
    end 
end
xf=fft(x,N);
hf=fft(h,N);
yf=xf.*hf;
yk=ifft(yf);