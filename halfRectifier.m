function r = halfRectifier(x)

    x(x < 0) = 0;
    x = x - mean (x);
    r = normal(x);


end