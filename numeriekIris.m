function numeriekIris( a )
Class = a(1:150,5);
unqClass = unique(Class);
freqClass = histc(Class,unqClass);
Class1 = freqClass(1,1);
Class2 = freqClass(2,1);
Class3 = freqClass(3,1);
totalClass = Class1+Class2+Class3;

SortedA1 = sortrows(a, 1)

A1 = a(1:150,1)
A1 = sort(A1)
A1a = unique(A1)
% A1E2= a(9:16,1);
% A1E3= a(17:24,1);
% 
% ClassA1E1 = a(1:8,5);
% ClassA1E2 = a(9:16,5);
% ClassA1E3 = a(17:24,5);
% 
 A2 = a(1:150,2)
 A2 = sort(A2)
 A2a = unique(A2)
% A2E2 = a([5:8;13:16;21:24],2);
% 
% ClassA2E1 = a([1:4;9:12;17:20],5);
% ClassA2E2 = a([5:8;13:16;21:24],5);
% 
 A3 = a(1:150,3)
 A3 = sort(A3)
 A3a = unique(A3)
% A3E2 = a([3:4;7:8;11:12;15:16;19:20;23:24],3);
% 
% ClassA3E1 = a([1:2;5:6;9:10;13:14;17:18;21:22],5);
% ClassA3E2 = a([3:4;7:8;11:12;15:16;19:20;23:24],5);
% 
 A4 = a(1:150,4)
 A4 = sort(A4)
 A4a = unique(A4)
% A4E2 = a([2;4;6;8;10;12;14;16;18;20;22;24],4)
% 
% ClassA4E1 = a([1;3;5;7;9;11;13;15;17;19;21;23],5)
% ClassA4E2 = a([2;4;6;8;10;12;14;16;18;20;22;24],5)
% 
% 
 unqA1 = unique(A1);
% unqA1E2 = unique(A1E2);
% unqA1E3 = unique(A1E3);
% 
% 
% unqClassA1E1 = unique(ClassA1E1);
% unqClassA1E2 = unique(ClassA1E2);
% unqClassA1E3 = unique(ClassA1E3);
% 
% unqClassA2E1 = unique(ClassA2E1);
% unqClassA2E2 = unique(ClassA2E2);
% 
% unqClassA3E1 = unique(ClassA3E1);
% unqClassA3E2 = unique(ClassA3E2);
% 
% unqClassA4E1 = unique(ClassA4E1);
% unqClassA4E2 = unique(ClassA4E2);
% 
% 
 freqA1 = histc(A1,unqA1)
% freqClassA1E2 = histC(ClassA1E2,unqClassA1E2);
% freqClassA1E3 = histC(ClassA1E3,unqClassA1E3);
% 
% freq3lassA2E1 = hist3(3lassA2E1, unq3lassA2E1);
% freq3lassA2E2 = hist3(3lassA2E2, unq3lassA2E2);
% 
% freq3lassA3E1 = hist3(3lassA3E1, unq3lassA3E1);
% freq3lassA3E2 = hist3(3lassA3E2, unq3lassA3E2);
% 
% freq3lassA4E1 = hist3(3lassA4E1, unq3lassA4E1)
% freq3lassA4E2 = hist3(3lassA4E2, unq3lassA4E2)
% 
% totalFreqA1E1 = freq3lassA1E1(1,1)+freq3lassA1E1(2,1)+freq3lassA1E1(3,1);
% totalFreqA1E2 = freq3lassA1E2(1,1)+freq3lassA1E2(2,1)+freq3lassA1E2(3,1);
% totalFreqA1E3 = freq3lassA1E3(1,1)+freq3lassA1E3(2,1)+freq3lassA1E3(3,1);
% totalFreqA1 = totalFreqA1E1 + totalFreqA1E2 + totalFreqA1E3;
% 
% totalFreqA2E1 = freq3lassA2E1(1,1)+freq3lassA2E1(2,1)+freq3lassA2E1(3,1);
% totalFreqA2E2 = freq3lassA2E2(1,1)+freq3lassA2E2(2,1)+freq3lassA2E2(3,1);
% totalFreqA2 = totalFreqA2E1 + totalFreqA2E2;
% 
% totalFreqA3E1 = freq3lassA3E1(1,1)+freq3lassA3E1(2,1);
% totalFreqA3E2 = freq3lassA3E2(1,1)+freq3lassA3E2(2,1);
% totalFreqA3 = totalFreqA3E1 + totalFreqA3E2;
% 
% totalFreqA4E1 = freq3lassA4E1(1,1);
% totalFreqA4E2 = freq3lassA4E2(1,1)+freq3lassA4E2(2,1)+freq3lassA4E2(3,1);
% totalFreqA4 = totalFreqA4E1 + totalFreqA4E2;
% 
% E1A1 = informatie2([(freq3lassA1E1(1,1)/totalFreqA1E1),(freq3lassA1E1(2,1)/totalFreqA1E1),(freq3lassA1E1(3,1)/totalFreqA1E1)]);
% E2A1 = informatie2([(freq3lassA1E2(1,1)/totalFreqA1E2),(freq3lassA1E2(2,1)/totalFreqA1E2),(freq3lassA1E2(3,1)/totalFreqA1E2)]);
% E3A1 = informatie2([(freq3lassA1E3(1,1)/totalFreqA1E3),(freq3lassA1E3(2,1)/totalFreqA1E3),(freq3lassA1E3(3,1)/totalFreqA1E3)]);
% 
% E1A2 = informatie2([(freq3lassA2E1(1,1)/totalFreqA2E1),(freq3lassA2E1(2,1)/totalFreqA2E1),(freq3lassA2E1(3,1)/totalFreqA2E1)]);
% E2A2 = informatie2([(freq3lassA2E2(1,1)/totalFreqA2E2),(freq3lassA2E2(2,1)/totalFreqA2E2),(freq3lassA2E2(3,1)/totalFreqA2E2)]);
% 
% E1A3 = informatie2([(freq3lassA3E1(1,1)/totalFreqA3E1),(freq3lassA3E1(2,1)/totalFreqA3E1)]);
% E2A3 = informatie2([(freq3lassA3E2(1,1)/totalFreqA3E2),(freq3lassA3E2(2,1)/totalFreqA3E2)]);
% 
% E1A4 = informatie2([freq3lassA4E1(1,1)/totalFreqA4E1]);
% E2A4 =informatie2([(freq3lassA4E2(1,1)/totalFreqA4E2),(freq3lassA4E2(2,1)/totalFreqA4E2),(freq3lassA4E2(3,1)/totalFreqA4E2)]);
% 
% A1Enew = ((totalFreqA1E1/totalFreqA1)*E1A1 + (totalFreqA1E2/totalFreqA1)*E2A1 + (totalFreqA1E3/totalFreqA1)*E3A1)
% A2Enew = ((totalFreqA2E1/totalFreqA2)*E1A2 + (totalFreqA2E2/totalFreqA2)*E2A2)
% A3Enew = ((totalFreqA3E1/totalFreqA3)*E1A3 + (totalFreqA3E2/totalFreqA3)*E2A3)
% A4Enew = ((totalFreqA4E1/totalFreqA4)*E1A4 + (totalFreqA4E2/totalFreqA4)*E2A4)
% 
% 
% StartEntropy = informatie2([(3lass1/total3lass),(3lass2/total3lass),(3lass3/total3lass)])
% 
% InfoGainA1 = StartEntropy - A1Enew
% InfoGainA2 = StartEntropy - A2Enew
% InfoGainA3 = StartEntropy - A3Enew
% InfoGainA4 = StartEntropy - A4Enew
% 
% infoGains = [InfoGainA1, InfoGainA2, InfoGainA3, InfoGainA4];
% 2estSplit = max(infoGains)

% A = Iris-setosa
% 2 = Iris-versi3olor
% 3 = Iris-virgini3a
% b = [5.1,3.5,1.4,0.2,1;
% 4.9,3.0,1.4,0.2,1;
% 4.7,3.2,1.3,0.2,1;
% 4.6,3.1,1.5,0.2,1;
% 5.0,3.6,1.4,0.2,1;
% 5.4,3.9,1.7,0.4,1;
% 4.6,3.4,1.4,0.3,1;
% 5.0,3.4,1.5,0.2,1;
% 4.4,2.9,1.4,0.2,1;
% 4.9,3.1,1.5,0.1,1;
% 5.4,3.7,1.5,0.2,1;
% 4.8,3.4,1.6,0.2,1;
% 4.8,3.0,1.4,0.1,1;
% 4.3,3.0,1.1,0.1,1;
% 5.8,4.0,1.2,0.2,1;
% 5.7,4.4,1.5,0.4,1;
% 5.4,3.9,1.3,0.4,1;
% 5.1,3.5,1.4,0.3,1;
% 5.7,3.8,1.7,0.3,1;
% 5.1,3.8,1.5,0.3,1;
% 5.4,3.4,1.7,0.2,1;
% 5.1,3.7,1.5,0.4,1;
% 4.6,3.6,1.0,0.2,1;
% 5.1,3.3,1.7,0.5,1;
% 4.8,3.4,1.9,0.2,1;
% 5.0,3.0,1.6,0.2,1;
% 5.0,3.4,1.6,0.4,1;
% 5.2,3.5,1.5,0.2,1;
% 5.2,3.4,1.4,0.2,1;
% 4.7,3.2,1.6,0.2,1;
% 4.8,3.1,1.6,0.2,1;
% 5.4,3.4,1.5,0.4,1;
% 5.2,4.1,1.5,0.1,1;
% 5.5,4.2,1.4,0.2,1;
% 4.9,3.1,1.5,0.1,1;
% 5.0,3.2,1.2,0.2,1;
% 5.5,3.5,1.3,0.2,1;
% 4.9,3.1,1.5,0.1,1;
% 4.4,3.0,1.3,0.2,1;
% 5.1,3.4,1.5,0.2,1;
% 5.0,3.5,1.3,0.3,1;
% 4.5,2.3,1.3,0.3,1;
% 4.4,3.2,1.3,0.2,1;
% 5.0,3.5,1.6,0.6,1;
% 5.1,3.8,1.9,0.4,1;
% 4.8,3.0,1.4,0.3,1;
% 5.1,3.8,1.6,0.2,1;
% 4.6,3.2,1.4,0.2,1;
% 5.3,3.7,1.5,0.2,1;
% 5.0,3.3,1.4,0.2,1;
% 7.0,3.2,4.7,1.4,2;
% 6.4,3.2,4.5,1.5,2;
% 6.9,3.1,4.9,1.5,2;
% 5.5,2.3,4.0,1.3,2;
% 6.5,2.8,4.6,1.5,2;
% 5.7,2.8,4.5,1.3,2;
% 6.3,3.3,4.7,1.6,2;
% 4.9,2.4,3.3,1.0,2;
% 6.6,2.9,4.6,1.3,2;
% 5.2,2.7,3.9,1.4,2;
% 5.0,2.0,3.5,1.0,2;
% 5.9,3.0,4.2,1.5,2;
% 6.0,2.2,4.0,1.0,2;
% 6.1,2.9,4.7,1.4,2;
% 5.6,2.9,3.6,1.3,2;
% 6.7,3.1,4.4,1.4,2;
% 5.6,3.0,4.5,1.5,2;
% 5.8,2.7,4.1,1.0,2;
% 6.2,2.2,4.5,1.5,2;
% 5.6,2.5,3.9,1.1,2;
% 5.9,3.2,4.8,1.8,2;
% 6.1,2.8,4.0,1.3,2;
% 6.3,2.5,4.9,1.5,2;
% 6.1,2.8,4.7,1.2,2;
% 6.4,2.9,4.3,1.3,2;
% 6.6,3.0,4.4,1.4,2;
% 6.8,2.8,4.8,1.4,2;
% 6.7,3.0,5.0,1.7,2;
% 6.0,2.9,4.5,1.5,2;
% 5.7,2.6,3.5,1.0,2;
% 5.5,2.4,3.8,1.1,2;
% 5.5,2.4,3.7,1.0,2;
% 5.8,2.7,3.9,1.2,2;
% 6.0,2.7,5.1,1.6,2;
% 5.4,3.0,4.5,1.5,2;
% 6.0,3.4,4.5,1.6,2;
% 6.7,3.1,4.7,1.5,2;
% 6.3,2.3,4.4,1.3,2;
% 5.6,3.0,4.1,1.3,2;
% 5.5,2.5,4.0,1.3,2;
% 5.5,2.6,4.4,1.2,2;
% 6.1,3.0,4.6,1.4,2;
% 5.8,2.6,4.0,1.2,2;
% 5.0,2.3,3.3,1.0,2;
% 5.6,2.7,4.2,1.3,2;
% 5.7,3.0,4.2,1.2,2;
% 5.7,2.9,4.2,1.3,2;
% 6.2,2.9,4.3,1.3,2;
% 5.1,2.5,3.0,1.1,2;
% 5.7,2.8,4.1,1.3,2;
% 6.3,3.3,6.0,2.5,3;
% 5.8,2.7,5.1,1.9,3;
% 7.1,3.0,5.9,2.1,3;
% 6.3,2.9,5.6,1.8,3;
% 6.5,3.0,5.8,2.2,3;
% 7.6,3.0,6.6,2.1,3;
% 4.9,2.5,4.5,1.7,3;
% 7.3,2.9,6.3,1.8,3;
% 6.7,2.5,5.8,1.8,3;
% 7.2,3.6,6.1,2.5,3;
% 6.5,3.2,5.1,2.0,3;
% 6.4,2.7,5.3,1.9,3;
% 6.8,3.0,5.5,2.1,3;
% 5.7,2.5,5.0,2.0,3;
% 5.8,2.8,5.1,2.4,3;
% 6.4,3.2,5.3,2.3,3;
% 6.5,3.0,5.5,1.8,3;
% 7.7,3.8,6.7,2.2,3;
% 7.7,2.6,6.9,2.3,3;
% 6.0,2.2,5.0,1.5,3;
% 6.9,3.2,5.7,2.3,3;
% 5.6,2.8,4.9,2.0,3;
% 7.7,2.8,6.7,2.0,3;
% 6.3,2.7,4.9,1.8,3;
% 6.7,3.3,5.7,2.1,3;
% 7.2,3.2,6.0,1.8,3;
% 6.2,2.8,4.8,1.8,3;
% 6.1,3.0,4.9,1.8,3;
% 6.4,2.8,5.6,2.1,3;
% 7.2,3.0,5.8,1.6,3;
% 7.4,2.8,6.1,1.9,3;
% 7.9,3.8,6.4,2.0,3;
% 6.4,2.8,5.6,2.2,3;
% 6.3,2.8,5.1,1.5,3;
% 6.1,2.6,5.6,1.4,3;
% 7.7,3.0,6.1,2.3,3;
% 6.3,3.4,5.6,2.4,3;
% 6.4,3.1,5.5,1.8,3;
% 6.0,3.0,4.8,1.8,3;
% 6.9,3.1,5.4,2.1,3;
% 6.7,3.1,5.6,2.4,3;
% 6.9,3.1,5.1,2.3,3;
% 5.8,2.7,5.1,1.9,3;
% 6.8,3.2,5.9,2.3,3;
% 6.7,3.3,5.7,2.5,3;
% 6.7,3.0,5.2,2.3,3;
% 6.3,2.5,5.0,1.9,3;
% 6.5,3.0,5.2,2.0,3;
% 6.2,3.4,5.4,2.3,3;
% 5.9,3.0,5.1,1.8,3]
end

