clc;
clear;
close all;

[x fs] = wavread('chord.wav');
x = normal(x);
left_margin = 12000;
right_margin = 12750;

% zero crossing
threshold = 0.3;
x_dist_zc = x;
x_dist_zc(abs(x_dist_zc) < threshold) = 0;

% saturation
x_dist_sat = x;
x_dist_sat(x_dist_sat > threshold) = threshold;
x_dist_sat(x_dist_sat < -threshold) = -threshold;
x_dist_sat = normal(x_dist_sat);

% exponential
x_dist_exp = x;
x_dist_exp = exp(x_dist_exp);
x_dist_exp = x_dist_exp / max(abs(x_dist_exp));
x_dist_exp = x_dist_exp - mean (x_dist_exp);
x_dist_exp = normal(x_dist_exp);

% half rectifier
x_dist_hr = x;
x_dist_hr(x_dist_hr < 0) = 0;
x_dist_hr = x_dist_hr - mean (x_dist_hr);
x_dist_hr = normal(x_dist_hr);

% full rectifier
x_dist_fr = x;
x_dist_fr = abs(x_dist_fr);
x_dist_fr = x_dist_fr - mean (x_dist_fr);
x_dist_fr = normal(x_dist_fr);

% comparison
x_dist_comp = x;
x_dist_comp = double (x_dist_comp > 0) * 2 - 1;

% waveshaping
x_dist_ws = x;
x_dist_ws (x_dist_ws > 0.5) = -x_dist_ws(x_dist_ws > 0.5);
x_dist_ws (x_dist_ws < 0.1) = -x_dist_ws(x_dist_ws < 0.1);
x_dist_ws = x_dist_ws - mean (x_dist_ws);
x_dist_ws = normal(x_dist_ws);

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