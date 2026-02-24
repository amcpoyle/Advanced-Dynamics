% torsion function from the solutions
% for torsion test
function tau = torsionSolutions(r)
    r1 = diff(r,1);
    r2 = diff(r,2);
    r3 = diff(r,3);

    s_prime = ds(r); % my own function for s_prime
    s_prime_solns = sqrt(r1*r1');

    %{
    disp("my implementation of s_prime: ")
    disp(s_prime)

    disp("solutions implementation of s_prime (used to compute tau): ")
    disp(s_prime_solns)
    %}

    rho = radiusOfCurvature(r);
    tau = -(1/rho^3)*(s_prime_solns^6)*(1/(r2*cross(r1, r3)'));
end