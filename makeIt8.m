function list = makeIt8(num)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
list = num;
while length(list)~=8
list = [dec2bin(0) list];
end