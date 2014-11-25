function r= blursound(x,T)
    f = ones(T, 1) / T;
    r = conv(x, f, 'same');
    r = normal(r);
end