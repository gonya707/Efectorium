%a ver... la cosa es hacer un vector desde -1 hasta 1 indicando la
%proyección de la onda sonora.
clc;clear;
precision=1000;

x= -1: 1/precision :1-1/precision;
y=x.^3 *1000;

clave=wavread('sounds/chord.wav');
clave=clave(1:44100/2);
L=length(clave);

for i=1:L
    muestra=round(1000*clave(i));
    r(i)=y(muestra+1000);
end

r = compand(r, 87.6, 0.3/2, 'A/compressor');
