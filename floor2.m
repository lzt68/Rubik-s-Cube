function [] = floor2(  )
%ͨ�������������ɵڶ���ĸ�ԭ
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
        %˵���ýǿ鳯����ȷ
    return
    else
    %��ȡ���������Ľǿ�
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

