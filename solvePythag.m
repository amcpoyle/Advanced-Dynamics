function z = solvePythag(x, y, hyp)
    if hyp == true
        z = sqrt(x^2 + y^2);
    else
        z = sqrt(max(x, y)^2 - min(x, y)^2);
    end        
end