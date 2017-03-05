close all;
clear all;
clc;
r=@(R)(R*rand*(1+1i));
cub=@(a,b,h)([a,a+b,a+b+h,a+h,a-conj(b)+h,a-conj(b),a,a+h,a+b+h,a+h+1i*2*imag(b),a+h-conj(b)]);
figure;hold on;
for j=0:(1+1/(rand+.01))
        l=10*rand;
        a=l*rand+1i*rand*l;
        b=r(l);
        h=1i*l*rand;
        plot(cub(a,b,h),'color',rand(1,3));
        v1=[];s=0;
        for k=0:.001:1
            if s==0
                v1(length(v1)+1)=a+k*h;
                s=1;
            else 
                v1(length(v1)+1)=a+b+k*h;
                s=0;
            end
        end
        v2=[];
        for k=0:.001:1
            if s==0
                v2(length(v2)+1)=a+k*h;
                s=1;
            else 
                v2(length(v2)+1)=a-conj(b)+k*h;
                s=0;
            end
        end
        v3=[];
        for k=0:.001:1
            if s==0
                v3(length(v3)+1)=a+h+k*b;
                s=1;
            else 
                v3(length(v3)+1)=a-conj(b)*k+h;
                s=0;
            end
        end
        for k=0:.001:1
            if s==0
                v3(length(v3)+1)=a+h-conj(b)+k*b;
                s=1;
            else 
                v3(length(v3)+1)=a-conj(b)*k+b+h;
                s=0;
            end
        end
        plot(v1,'color',rand(1,3));
        plot(v2,'color',rand(1,3));
        plot(v3,'color',rand(1,3));
        
end