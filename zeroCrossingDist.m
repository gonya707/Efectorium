function r = zeroCrossingDist(x, threshold)

    x(abs(x) < threshold) = 0;
    r = x; 
end