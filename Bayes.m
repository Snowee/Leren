% 1  1  1  1  1  3
% 2  1  1  1  2  2
% 4  1  1  2  2  1
function class = Bayes( f1, f2, f3, f4 )

data = importdata('lenses.txt');

data = data(:,2:end);

D = data(:,end);
X = data(:,1:end-1);


Di = tabulate(D);
Di(:,end) = Di(:,end)/100;

Px11 = Bayesian(f1, 1, 1)
Px21 = Bayesian(f2, 2, 1)
Px31 = Bayesian(f3, 3, 1)
Px41 = Bayesian(f4, 4, 1)

Px12 = Bayesian(f1, 1, 2)
Px22 = Bayesian(f2, 2, 2)
Px32 = Bayesian(f3, 3, 2)
Px42 = Bayesian(f4, 4, 2)

Px13 = Bayesian(f1, 1, 3)
Px23 = Bayesian(f2, 2, 3)
Px33 = Bayesian(f3, 3, 3)
Px43 = Bayesian(f4, 4, 3)

Y1 = Di(1,3)*Px11*Px21*Px31*Px41
Y2 = Di(2,3)*Px12*Px22*Px32*Px42
Y3 = Di(3,3)*Px13*Px23*Px33*Px43

Y = [Y1, Y2, Y3]

Max = max(Y);

if Max == Y1
    class = 1;
elseif Max == Y2
    class = 2;
elseif Max == Y3
    class = 3;
end

end