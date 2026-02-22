function tau = torsion(r)
    r_prime = diff(r, 1);
    e_tangent = tangentVector(r);
    e_normal = normalVector(r);
    e_binormal = cross(e_tangent, e_normal);

    % 1/tau = |d e_b / ds|
    % this is irritating to compute
    diff_eb = diff(e_binormal, 1);
    s_prime = sqrt(dot(r_prime, r_prime)); % todo: make s_prime function
    result = norm(diff_eb/s_prime);
    tau = 1/result;

end