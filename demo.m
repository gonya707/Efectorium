%WIP. not available yet

clc;
clear;
close all;

[x fs] = wavread('sounds/chord.wav');
x = normal(x);
left_margin = 12000;
right_margin = 12750;

figure;
subplot(4, 2, 1);
plot(x(left_margin : right_margin));
title('original');
axis([1 (right_margin - left_margin) -1 1]);
