function P = Bayesian( F, a, c )

data = importdata('lenses.txt');
data = data(:,2:end);

D = data(:,end);
X = data(:,1:end-1);

DX = [X(:,a),D];

Di = tabulate(D);
Di(:,end) = Di(:,end)/100;


P = 0;
for i=1:21
   if (DX(i,1) == F) & (DX(i,2) == c)
       P = P + 1;
   end
end

P = (P + 1)/(Di(c,2)+size(Di,1));


end

