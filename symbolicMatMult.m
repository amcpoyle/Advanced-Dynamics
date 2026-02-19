% function to compute symbolic matrix multiplication 
function C = symbolicMatMult(A, B)
    [m,n] = size(A);
    [n2, p] = size(B);

    if n ~= n2
        error("Inner dimensions must agree: A is %dx%d, B is %dx%d", m, n, n2, p);
    end

    C = sym(zeros(m,p));

    for i = 1:m
        for j = 1:p
            C(i,j) = sum(A(i,:) .* B(:,j)');
        end
    end

    C = simplify(C);
end