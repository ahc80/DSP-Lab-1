%Integrator Function
function inty = discrete_integrator(x, T)
     inty = zeros(1, T);

     for k = 2:T
         inty(k) = inty(k-1) + x(k)*T;
     end
end