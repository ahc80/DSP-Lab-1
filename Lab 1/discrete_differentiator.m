%Differentiator Function
function diffy = discrete_differentiator(f, T)

    diffy = zeros(1,T);
    
    for k = 2:T
        diffy(k) = (1/T) * (f(k) - f(k-1));
    end
end