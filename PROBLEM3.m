mat = input ('Input a nx2 data points in matrix form: ');
disp (mat);
N1 = length(mat);
N2 = N1-1;

%Limit your polynomials from the 1st degree up to the 10th degree.
if N2 > 10
    error 'The matrix is limited up to 10th degree only. Reduce your data points.'
end

for n = 1:N2
    xi = mat(:,1);
    yi = mat(:,2);
    
    p  = polyfit(xi,yi,n);
    f = polyval (p,xi);
    e = yi - f;
    p = norm(e);
    z = [n,p];
    
    if n == 1
        y = z;
    end
    
    if y(2) >= z(2)
        new = z(1);
        
    end
    
    p = polyfit (xi,yi,new);
end

disp (p);
       
    

