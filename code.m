function codedImage = code(img1,img2,bit)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
codedImage = img1;

[n,m] = size(img1);
m = m/3;


for i=1:n % width
for j=1:m % height
    for k=1:3
first = dec2bin(img1(i,j,k));
first = makeIt8(first);
seconde = dec2bin(img2(i,j,k));
seconde = makeIt8(seconde);
u=1;
l = 9-bit;
while u<=bit
first(l) = seconde(u);
u = u+1;
l = l+1;
end
% first(5) = seconde(1);
% first(6) = seconde(2);
% first(7) = seconde(3);
% first(8) = seconde(4);
codedImage(i,j,k) = bin2dec(first);

    end
end
end
end