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

subplot(4, 2, 2);
plot(x_dist_zc(left_margin : right_margin));
title('zero crossing');
axis([1 (right_margin - left_margin) -1 1]);

subplot(4, 2, 3);
plot(x_dist_sat(left_margin : right_margin));
title('saturation');
axis([1 (right_margin - left_margin) -1 1]);

subplot(4, 2, 4);
plot(x_dist_exp(left_margin : right_margin));
title('exponential');
axis([1 (right_margin - left_margin) -1 1]);

subplot(4, 2, 5);
plot(x_dist_hr(left_margin : right_margin));
title('half rectifier');
axis([1 (right_margin - left_margin) -1 1]);

subplot(4, 2, 6);
plot(x_dist_fr(left_margin : right_margin));
title('full rectifier');
axis([1 (right_margin - left_margin) -1 1]);

subplot(4, 2, 7);
plot(x_dist_comp(left_margin : right_margin));
title('comparison');
axis([1 (right_margin - left_margin) -1 1]);

subplot(4, 2, 8);
plot(x_dist_ws(left_margin : right_margin));
title('waveshaping');
axis([1 (right_margin - left_margin) -1 1]);