function tau = torsion(r)
    r1 = diff(r, 1);
    r2 = diff(r, 2);
    r3 = diff(r, 3);

    num = dot(cross(r1, r2), r3);
    denom = norm(cross(r1, r2))^2
    tau = num / denom;

end