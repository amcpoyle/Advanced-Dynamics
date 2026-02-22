function en = normalVector(r)
    r_prime = diff(r, 1);
    r_2prime = diff(r, 2);

    s_prime = sqrt(dot(r_prime, r_prime));

    en = ((r_2prime*(s_prime^2)) - r_prime*(dot(r_prime, r_2prime)))/...
        (s_prime*sqrt((dot(r_2prime, r_2prime)*(s_prime^2) - ...
        (dot(r_prime, r_2prime))^2 )));
end