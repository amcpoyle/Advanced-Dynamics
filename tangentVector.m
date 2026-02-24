function et = tangentVector(r)
    r_prime = diff(r, 1);
    s_prime = ds(r);

    e_t = r_prime/s_prime;
    et = e_t/norm(e_t);
    
end