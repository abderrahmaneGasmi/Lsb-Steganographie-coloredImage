function list = makeIt8reverse(num)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
list = num;
while length(list)~=8
    if(length(list)<4)
list = [dec2bin(0) list];
    else
        list = [list dec2bin(0)];
    end


end