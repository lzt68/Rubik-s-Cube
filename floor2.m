function [] = floor2(  )
%通过这个函数来完成第二层的复原
global Y
t=finder(Y{3}(2,2),Y{4}(2,2));
if t==1
end
if t==2
    U;
end
if t==3;
    U;
    U;
end
if t==4
    U1;
end
if t==5
    U;
    F;
    U1;
    F1;
    U1;
    L1;
    U;
    L;
    U;
end

if t==6
    if Y{3}(2,2)==Y{3}(2,3)
        %说明该角块朝向正确
    return
    else
    %提取出这个错误的角块
    U;
    R;
    U1;
    R1;
    U1;
    F1;
    U;
    F;
    U;
    U;
    end 
end

if t==7
    U;
    B;
    U1;
    B1;
    U1;
    R1;
    U;
    R;
    U1;

    
end
if t==8
    U;
    L;
    U1;
    L1;
    U1;
    B1;
    U;
    B;
end



if Y{3}(2,2)==Y{3}(1,2)
    U;
    R;
    U1;
    R1;
    U1;
    F1;
    U;
    F;
    else
    U1;
    U1;
    F1;
    U;
    F;
    U;
    R;
    U1;
    R1;
end
end

