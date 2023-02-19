function decodedImage = decode(codedImage,bit)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
decodedImage = zeros(size(codedImage) ,'uint8');
[n,m] = size(decodedImage);
m = m/3;

for i=1:n % width
for j=1:m % height

for k=1:3
first = dec2bin(codedImage(i,j,k));
first = makeIt8(first);
data = [];

for o=1:8-bit
    data = [data dec2bin(0)];
end
% data = [dec2bin(0) dec2bin(0) dec2bin(0) dec2bin(0)];


t=8;
while t>8-bit
data = [first(t) data];
t = t-1;
end


% data = [first(8) data];
% data = [first(7) data];
% data = [first(6) data];
% data = [first(5) data];

decodedImage(i,j,k) = bin2dec(data);

end
end
end
end