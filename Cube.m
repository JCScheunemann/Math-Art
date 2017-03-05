close all;
clear all;
clc;
r=@(R)(R*rand*(1+1i));
cub=@(a,b,h)([a,a+b,a+b+h,a+h,a-1*conj(b)+h,a-1*conj(b),a,a+h,a+b+h,a+h+1i*2*imag(b),a+h-1*conj(b)]);
figure;hold on;
for j=0:3%(10+1/(rand+.0001))
        l=10*rand;
        a=l*rand+1i*rand*l;
        b=r(l);
        h=1i*l*rand;
        plot(cub(a,b,h),'color',rand(1,3));
end