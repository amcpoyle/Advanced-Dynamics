function et = tangentVector(r)
    r_prime = diff(r, 1);
    s_prime = sqrt(dot(r_prime, r_prime));

    et = r_prime/s_prime;
    
end