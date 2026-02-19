function et = tangentVector(r, t)
    r_prime = diff(r, t);
    s_prime = sqrt(dot(r_prime, r_prime));

    et = r_prime/s_prime;
    
end