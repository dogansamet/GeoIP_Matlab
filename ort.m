% Ortalama ve standart sapma hesabý

function [ga m0] = ort(s, R, C)
[R C] = size(s);

ga = sum(sum(s)) / (R * C);

% tplm = 0;
% 
% for i = 1 : R
%     for j = 1 : C
%         tplm = tplm + s2(i , j);
%     end
% end

s2 = s - ga;

for i = 1 : R
    for j = 1 : C
        s3(i , j) = s2(i , j) ^ 2;
    end
end

m0 = (sum(sum(s3)) / (R * C))^0.5;