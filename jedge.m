function [ o ] = jedge( t )

%老子写了个蛇皮棒棒锤的函数哦，这个判断我用矩阵更快啊啊啊啊啊啊

global Y
global E
%判断edge9的朝向
o=-1;
if E(1,1,t)==Y{3}(2,2)
    o=1;
    %朝向正确
else
    o=0;
    %朝向False
end

end

