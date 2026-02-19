function en = normalVector(r, t)
    r_prime = diff(r, t);
    r_2prime = diff(r_prime, t);

    s_prime = sqrt(dot(r_prime, r_prime));

    en = ((r_2prime*(s_prime^2)) - r_prime*(dot(r_prime, r_2prime)))/...
        (s_prime*sqrt((dot(r_2prime, r_2prime)*(s_prime^2) - ...
        (dot(r_prime, r_2prime))^2 )));
end