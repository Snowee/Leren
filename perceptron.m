function  out = perceptron()
data = importdata('binaryLenses.txt');

X = data(:, 2:end-3);
Y = data(:, end-2:end);
W1 = X\Y

W = 0.1*ones(6,3);

Wold = zeros(6,3);
Alpha = 0.1;
for G = 1:150
   	Wold = W;  
    for l = 1:3
        for j = 1:24
            Xj = X(j,:);
            Wl = W(:,l);
            H(j) = threshold(Xj, Wl);
            for i = 1:6
                W(i,l) = W(i,l) + Alpha*((Y(j,l)-H(j))*X(j,i));
                %                 Part = Alpha*(Y(j,l) - H(j));
%                 Part = Part *Xj(i);
%                 W(i,l) = W(i,l) + Part;
            end
        end
    end
end
W
X
Y

for i = 1:size(X,1)
        xi = X(i,:)';
        hw(i,1) = threshold(W(:,1)', xi);
        hw(i,2) = threshold(W(:,2)', xi);
        hw(i,3) = threshold(W(:,3)', xi);
end
    YYY = hw;
    Y - YYY
    out = W;
end

