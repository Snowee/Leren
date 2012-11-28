function parameters =  logreg()
ExData = importdata('iris2.txt')

appending = ones(size(ExData,1),1);

ExData = [appending,ExData];
X = ExData(:,1:3);

for k = 1:size(X, 2)
    X(:,2:k)=zscore(X(:,2:k));
end

X = X';

y = ExData(:,5);

alpha = 0.001;
theta0 = 3;
theta1 = 3;
theta2 = 3;
theta3 = 3;
thetas = [theta0; theta1; theta2; theta3];
newThetas = [0;0;0;0];

while abs(thetas-newThetas)>0.001
    thetas = newThetas;
    for j =1:size(X,1)
        som = 0;    
        for i = 1:size(X,2)
            Xi = X(:, i);
            Htheta = 1/(1+exp(1)^(thetas'*Xi));
            som = som + (Htheta-y(i))*X(j,i);
        end
            newThetas(j) = thetas(j) -((alpha/size(X,2))*som); 
    end
end
check = X'\y
parameters = newThetas;