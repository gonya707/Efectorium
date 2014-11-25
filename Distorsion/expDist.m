function r = expDist(x, threshold)
    x = exp(x);
    x = x / max(abs(x));
    x = x - mean (x);
    r = normal(x_dist_exp);


end