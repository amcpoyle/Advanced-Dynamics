function tau = torsion(r)
%{
    r1 = diff(r, 1);
    r2 = diff(r, 2);
    r3 = diff(r, 3);

    num = dot(cross(r1, r2), r3);
    denom = norm(cross(r1, r2))^2;
    tau = num / denom;
%}
    % this is from the textbook:
    et = tangentVector(r);
    en = normalVector(r);
    e_b = cross(et, en);
    eb = e_b/norm(e_b);
    s_prime = ds(r);
    tau = 1/(norm(eb/s_prime));

end