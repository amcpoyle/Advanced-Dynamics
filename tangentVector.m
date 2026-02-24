function et = tangentVector(r)
    r_prime = diff(r, 1);
    s_prime = ds(r);

    et = r_prime/s_prime;
    
end