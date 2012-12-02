%      input    --> output

% [1  1  1  1]  --> 3
% [1  1  1  2]  --> 2
% [1  1  2  2]  --> 1

function out = nomBayes( data, input )
  set = importdata(data);
  % begin vanaf 2, vanwege de nummering.
  x = set(:, 2:end-1);
  y = set(:, end);
  tot = size(y, 1); % totaal aantal voorbeelden.

  d = tabulate(set(:, end));
  d(:, end) = d(:, end)/100;
  n = size(x, 2); % aantal features.
  m = size(d, 1); % aantal classes.
   Y = [];
   % kijk per class.
   for class = 1:m
         % krijg een subset waarin y = class.
         searchspace = [];
         for i = 1:tot
             if y(i) == class
                 searchspace = [searchspace; x(i, :)];
             end
         end
         chances = [];
         % voor elke feature, zijn eigen kolom genaamd s uit searchspace
         % kijk hoevaak de input waarde daarin voorkomt.
         % bereken de kansen uit voor alle features.
         L = 1;
         for feature = 1:n
             s = searchspace(:, feature);
             inp = input(feature);
             chance = sum(s==inp);
             chances = [chances, (chance+L)/(size(s, 1)+(L*m)) ];
         end
         % bereken de kans dat de Y voorkomt, mat laplass (hoe je het ook
         % spelt) om rekenening te houden met kans = 0.
         ch = 1;
         for i = 1:size(chances,2)
             ch = ch*chances(i); 
         end
         
         Y = [Y; d(class, end)*ch];
   end
     % bereken de positie van de hoogste kans in Y.
     [~, index] = max(Y, [], 1);
     % krijg de waarde uit d, zodat de waarde van de meest waarschijnlijke
     % y achterhaald kan worden.
     out = d(index, 1);
 end