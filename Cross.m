function [ ] = Cross(  )
global Y
global S
%��һ���ײ�ʮ�ֵĵ�һ�����
t=finder(Y{3}(2,2),Y{2}(2,2));
%��һ��   
if t==1
    F;
    F;
end

if t==2
    U;
    F;
    F;
end
if t==3
    U;
    U;
    F;
    F;
end
if t==4
    U1;
    F;
    F;
end


if t==5
    F1;

end


if t==6
    F;

end
if t==7
    R1;
    U;
    R;
    F;
    F;
end
if t==8
    L;
    U1;
    L1;
    F;
    F;
end

if t==9
end

if t==10
    R;
    R;
    U;
    F;
    F;
end

if t==11
    B;
    B;
    U;
    U;
    F;
    F;
end
    
if t==12
    L;
    L;
    U1;
    F;
    F;
end

    if Y{3}(2,2)~=Y{3}(3,2)
        %������ȷ

    L;
    R1;
    F;
    L1;
    R;
    U1;
    F;
    F;
    end
end



