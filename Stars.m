%Algoritmo para a criação de fractais em forma de estrela em matlab/octave
%GNU General Public License
%Autor: Jean Carlos Scheunemann
%email:jeancarsch@gmail.com

close all;                                     
clear all;
clc;
figure;                                         %cria a figura
hold on;                                        %configura para que a figura seja reaproveitada a cada plot
f=[];
for l=0:(10+1/rand)                             %cria o laço que ira desenhar um numero aleatório de estrelas
        r=rand*10;                              %raio aleatório de cada estrela
        phi=rand+pi/2;                          %passo angular aleatório de cada estrela
        v=[];                                   %reseta o vetor de valores
        for j=0:phi:20*pi                       %laço que calcula os valores das estrelas
            v(length(v)+1)=r*cos(j)+i*r*sin(j); %calculo dos valores da estrela
        end                                    %fim do laço        
        plot(v,'color',rand(1,3));              %plota a estrela
end                                             %fim do programa