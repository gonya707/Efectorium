function r = fullRectifier(x)

x = abs(x);
x = x - mean (x);
r = normal(x);



end