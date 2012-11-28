function parameters =  multiple()
ExData = importdata('ex1datakwart1.txt');
ExData1 = importdata('ex1data2.txt');

appending = ones(size(ExData,1),1);
appending1 = ones(size(ExData1,1),1);
ExData1 = [appending1,ExData1];
ExData = [appending,ExData];
X = ExData(:,1:3);
X1 = ExData1(:,1:3);
for k = 1:size(X, 2)
    X(:,2:k)=zscore(X(:,2:k));
end
for k = 1:size(X1,2)
    X1(:,2:k)=zscore(X1(:,2:k));
end
X1= X1';
X = X';

y = ExData(:,4);
y1 = ExData1(:,4);

alpha = 0.001;
theta0 = 3;
theta1 = 3;
theta2 = 3;
thetas = [theta0; theta1; theta2];
newThetas = [0;0;0];

while abs(thetas-newThetas)>0.001
    thetas = newThetas;
    for j =1:size(X,1)
        som = 0;    
        for i = 1:size(X,2)
            Xi = X(:, i);
            Htheta = thetas'*Xi;
            som = som + (Htheta-y(i))*X(j,i);
        end
            newThetas(j) = thetas(j) -((alpha/size(X,2))*som); 
    end
end
check = X'\y
parameters = newThetas;

for g = 1:size(X, 2)
   Xi = X(:,g);
   calcY(g) = parameters' * Xi;
   
end
squaredLossX = sum((y - calcY').^2)


for g = 1:size(X1,2)
    X1i = X1(:,g);
    calcY1(g) = parameters' * X1i;
end
squaredLossX1 = sum ((y1 - calcY1').^2)

X = ExData(:,1:3);

squaredX = X.^2;
for k = 1:size(X, 2)
    squaredX(:,2:k)=zscore(squaredX(:,2:k));
end

squaredX = squaredX';
thetas1 = [theta0; theta1; theta2];
newThetas1 = [0;0;0];
while abs(thetas1-newThetas1)>0.0001
    thetas1 = newThetas1;
    for j =1:size(squaredX,1)
        som = 0;    
        for i = 1:size(squaredX,2)
            squaredXi = squaredX(:, i);
            squaredHtheta = thetas1'*squaredXi;
            som = som + (squaredHtheta-y(i))*squaredX(j,i);
        end
            newThetas1(j) = thetas1(j) -((alpha/size(squaredX,2))*som); 
    end
end
newThetas1
check1 = squaredX'\y

for g = 1:size(squaredX, 2)
   squaredXi = squaredX(:,g);
   calcYsquared(g) = newThetas1' * squaredXi;
   
end
squaredLoss1 = sum((y - calcYsquared').^2)
end


%Append one column with ones to the original dataset. First row consist of ones now. 
%Normalise all the examples. So only the features, not the output.
%Output data
%Keep updating thetas untill difference between thetas and newtheas is smaller then 0.0001.
%Check if the computed values in parameters is equal to the leastsquares values
