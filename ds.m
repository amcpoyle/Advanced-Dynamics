% function to find s_prime
function sp = ds(f)
    f_prime = diff(f, 1);
    sp = sqrt(dot(f_prime, f_prime));
end