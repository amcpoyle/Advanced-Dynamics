function tau = torsion(r, t)
    r_prime = diff(r, t);
    e_tangent = tangentVector(r, t);
    e_normal = normalVector(r, t);
    e_binormal = cross(e_tangent, e_normal);

    % 1/tau = |d e_b / ds|
    % this is irritating to compute
    diff_eb = diff(e_binormal, t);
    s_prime = sqrt(dot(r_prime, r_prime)); % todo: make s_prime function
    result = norm(diff_eb/s_prime);
    tau = 1/result;

end