function r = saturationDist(x, threshold)

    x(x > threshold) = threshold;
    x(x < -threshold) = -threshold;
    r = normal(x);


end