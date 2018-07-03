function [ ] = corner1(  )
%完成第一层的角块的复原
global Y
t=finder( Y{2}(2,2),Y{3}(2,2), Y{4}(2,2));


if t==1
    U1;
    R;
    U;
    R1;
end

if t==2
    R;
    U;
    R1;
end
if t==3
    U;
    R;
    U;
    R1;
end
if t==4
    U;
    U;
    R;
    U;
    R1;
end
if t==5
    F;
    U1;
    F1;
    U1;
    R;
    U;
    R1;
end
if t==6
end
if t==7
    R1;
    U;
    R;
    U;
    R;
    U;
    R1;
end
if t==8;
    L;
    U;
    L1;
    U;
    R;
    U;
    R1;
end

%下一步判断朝向是否正确
o=jcorner6;
%下一步调整朝向
    if o==0
    end
    
    if o==1
       %逆时针的旋转
       R;
       U;
       R1;
       U1;
       R;
       U;
       R1;
    end
    
    if o==-1
 %顺时针的旋转
       R;
       U1;
       R1;
       U;
       R;
       U1;
       R1;
    end

end

