function rho = radiusOfCurvature(r, t)
    % take derivatives
    r_prime = diff(r, t);
    r_2prime = diff(r_prime, t);

    % compute s'
    s_prime = sqrt(dot(r_prime, r_prime));

    rho = (s_prime^3)/sqrt((dot(r_2prime,r_2prime))^2 - (dot(r_prime,r_2prime))^2);

end