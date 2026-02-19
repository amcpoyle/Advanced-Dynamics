function alpha = angleBetweenVectors(v1, v2)
    numerator = dot(v1, v2);
    denom = norm(v1)*norm(v2);
    angle_alpha = acos(numerator/denom);
    angle_alpha = rad2deg(angle_alpha);
    alpha = round(angle_alpha, 4);
end