n = 3;
a = [-2  4   8;
     -4 18 -16;
     -6  2 -20];

L = zeros(n);
U = zeros(n);

% Crout decomposition: U has 1s on diagonal
for i = 1:n
    U(i,i) = 1;
end

for j = 1:n
    % ----- Compute column j of L -----
    for i = j:n
        s = 0;
        for k = 1:j-1
            s = s + L(i,k) * U(k,j);
        end
        L(i,j) = a(i,j) - s;
    end

    % ----- Compute row j of U -----
    for i = j+1:n
        s = 0;
        for k = 1:j-1
            s = s + L(j,k) * U(k,i);
        end
        U(j,i) = (a[j,i] - s) / L(j,j);
    end
end

L
U
