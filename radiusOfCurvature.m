function rho = radiusOfCurvature(r)
    % take derivatives
    r_prime = diff(r, 1);
    r_2prime = diff(r, 2);

    % compute s'
    s_prime = sqrt(dot(r_prime, r_prime)); % this is just norm

    rho = (s_prime^3)/sqrt(dot(r_2prime,r_2prime)*(s_prime^2) - (dot(r_prime, r_2prime))^2);

end