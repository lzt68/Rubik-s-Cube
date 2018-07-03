function [ ] = floor3(  )
%这里我们完成第三层的复原
global Y
global S
p=0;
pq=[2,2,2,2,2,2];
while p==0
a=finder(Y{1}(2,2),Y{3}(2,2),Y{4}(2,2));
b=finder(Y{1}(2,2),Y{5}(2,2),Y{4}(2,2));
c=finder(Y{1}(2,2),Y{5}(2,2),Y{6}(2,2));
m=10-a-b-c;

%当所有角块的位置都不对的时候
if (a~=2)&&(b~=3)&&(c~=4)&&(m~=1)
    if length(S)>=20000
    %说明魔方有可能输入出错了
        return
    end
    U;
    R;
    U1;
    L1;
    U;
    R1;
    U1;
    L;
end


a=finder(Y{1}(2,2),Y{3}(2,2),Y{4}(2,2));
b=finder(Y{1}(2,2),Y{5}(2,2),Y{4}(2,2));
c=finder(Y{1}(2,2),Y{5}(2,2),Y{6}(2,2));
m=10-a-b-c;
    
if a==2
    while b~=3||a~=2||c~=4||m~=1
    if length(S)>=20000
    %说明魔方有可能输入出错了
        break
    end
    U;
    R;
    U1;
    L1;
    U;
    R1;
    U1;
    L;
    
    a=finder(Y{1}(2,2),Y{3}(2,2),Y{4}(2,2));
    b=finder(Y{1}(2,2),Y{5}(2,2),Y{4}(2,2));
    c=finder(Y{1}(2,2),Y{5}(2,2),Y{6}(2,2));
    m=10-a-b-c;
    end
    
end


if b==3
    while b~=3||a~=2||c~=4||m~=1
    if length(S)>=20000
    %说明魔方有可能输入出错了
        break
    end
    U;
    B;
    U1;
    F1;
    U;
    B1;
    U1;
    F;

    a=finder(Y{1}(2,2),Y{3}(2,2),Y{4}(2,2));
    b=finder(Y{1}(2,2),Y{5}(2,2),Y{4}(2,2));
    c=finder(Y{1}(2,2),Y{5}(2,2),Y{6}(2,2));
    m=10-a-b-c;

    end
end

if c==4
    while b~=3||a~=2||c~=4||m~=1
    if length(S)>=20000
    %说明魔方有可能输入出错了
        break
    end
    U;
    L;
    U1;
    R1;
    U;
    L1;
    U1;
    R;

    a=finder(Y{1}(2,2),Y{3}(2,2),Y{4}(2,2));
    b=finder(Y{1}(2,2),Y{5}(2,2),Y{4}(2,2));
    c=finder(Y{1}(2,2),Y{5}(2,2),Y{6}(2,2));
    m=10-a-b-c;

    end
end


if m==1
    while b~=3||a~=2||c~=4||m~=1
    if length(S)>=20000
    %说明魔方有可能输入出错了
        break
    end
    U;
    F;
    U1;
    B1;
    U;
    F1;
    U1;
    B;
    a=finder(Y{1}(2,2),Y{3}(2,2),Y{4}(2,2));
    b=finder(Y{1}(2,2),Y{5}(2,2),Y{4}(2,2));
    c=finder(Y{1}(2,2),Y{5}(2,2),Y{6}(2,2));
    m=10-a-b-c;
    end
end
    a=finder(Y{1}(2,2),Y{3}(2,2),Y{4}(2,2));
    b=finder(Y{1}(2,2),Y{5}(2,2),Y{4}(2,2));
    c=finder(Y{1}(2,2),Y{5}(2,2),Y{6}(2,2));
    m=10-a-b-c;
%接下来，我要实现的是，让我们的所有角块全部朝向正确

while Y{1}(2,2)==Y{1}(3,3)
    U;
    if Y{1}(2,2)==Y{1}(1,1)&&Y{1}(2,2)==Y{1}(1,3)&&Y{1}(2,2)==Y{1}(3,1)&&Y{1}(2,2)==Y{1}(3,3)
        break
    end
    if length(S)>=20000
    %说明魔方有可能输入出错了
        break
    end
end

while Y{1}(2,2)~=Y{1}(3,3)
    if length(S)>=20000
    %说明魔方有可能输入出错了
        break
    end
    R1;
    D1;
    R;
    D;
end
    
while Y{1}(2,2)==Y{1}(3,3)
    if length(S)>=20000
    %说明魔方有可能输入出错了
        break
    end

    if Y{1}(2,2)==Y{1}(1,1)&&Y{1}(2,2)==Y{1}(1,3)&&Y{1}(2,2)==Y{1}(3,1)&&Y{1}(2,2)==Y{1}(3,3)
        break
    end
    
    U;
end

while Y{1}(2,2)~=Y{1}(3,3)
    if Y{1}(2,2)==Y{1}(1,1)&&Y{1}(2,2)==Y{1}(1,3)&&Y{1}(2,2)==Y{1}(3,1)&&Y{1}(2,2)==Y{1}(3,3)
        break
    end
    if length(S)>=20000
    %说明魔方有可能输入出错了
        break
    end
    
    R1;
    D1;
    R;
    D;
end
    
while Y{1}(2,2)==Y{1}(3,3)
    if Y{1}(2,2)==Y{1}(1,1)&&Y{1}(2,2)==Y{1}(1,3)&&Y{1}(2,2)==Y{1}(3,1)&&Y{1}(2,2)==Y{1}(3,3)
        break
    end
    if length(S)>=20000
    %说明魔方有可能输入出错了
        break
    end
    U;
end

while Y{1}(2,2)~=Y{1}(3,3)
    if Y{1}(2,2)==Y{1}(1,1)&&Y{1}(2,2)==Y{1}(1,3)&&Y{1}(2,2)==Y{1}(3,1)&&Y{1}(2,2)==Y{1}(3,3)
        break
    end
    if length(S)>=20000
    %说明魔方有可能输入出错了
        break
    end
    R1;
    D1;
    R;
    D;
end
    
while Y{1}(2,2)==Y{1}(3,3)
    if Y{1}(2,2)==Y{1}(1,1)&&Y{1}(2,2)==Y{1}(1,3)&&Y{1}(2,2)==Y{1}(3,1)&&Y{1}(2,2)==Y{1}(3,3)
    break
    end
    if length(S)>=20000
    %说明魔方有可能输入出错了
        break
    end
    U;
end

while Y{1}(2,2)~=Y{1}(3,3)
    if Y{1}(2,2)==Y{1}(1,1)&&Y{1}(2,2)==Y{1}(1,3)&&Y{1}(2,2)==Y{1}(3,1)&&Y{1}(2,2)==Y{1}(3,3)
    break
    end 
    if length(S)>=20000
    %说明魔方有可能输入出错了
        break
    end
    R1;
    D1;
    R;
    D;
end
    
while Y{1}(2,2)==Y{1}(3,3)
    if Y{1}(2,2)==Y{1}(1,1)&&Y{1}(2,2)==Y{1}(1,3)&&Y{1}(2,2)==Y{1}(3,1)&&Y{1}(2,2)==Y{1}(3,3)
    break
    end
    if length(S)>=20000
    %说明魔方有可能输入出错了
        break
    end
    U;
end
while Y{1}(2,2)~=Y{1}(3,3)
    if Y{1}(2,2)==Y{1}(1,1)&&Y{1}(2,2)==Y{1}(1,3)&&Y{1}(2,2)==Y{1}(3,1)&&Y{1}(2,2)==Y{1}(3,3)
    break
    end    
    if length(S)>=20000
    %说明魔方有可能输入出错了
        break
    end
    R1;
    D1;
    R;
    D;
end
    
while Y{1}(2,2)==Y{1}(3,3)
    if Y{1}(2,2)==Y{1}(1,1)&&Y{1}(2,2)==Y{1}(1,3)&&Y{1}(2,2)==Y{1}(3,1)&&Y{1}(2,2)==Y{1}(3,3)
        break
    end
    if length(S)>=20000
    %说明魔方有可能输入出错了
        break
    end
    U;
end

while Y{3}(2,2)~=Y{3}(1,2)
    if length(S)>=20000
    %说明魔方有可能输入出错了
        break
    end
    U;
end
for i=1:6
    if Y{i}(1,1)==Y{i}(1,2)&&Y{i}(1,1)==Y{i}(1,3)&&Y{i}(1,1)==Y{i}(2,1)&&Y{i}(1,1)==Y{i}(2,2)&&Y{i}(1,1)==Y{i}(2,3)&&Y{i}(1,1)==Y{i}(3,1)&&Y{i}(1,1)==Y{i}(3,2)&&Y{i}(1,1)==Y{i}(3,3)
    %六个面全部复原
        pq(i)=1;
    else
        pq(i)=0;
    end
end
    p=min(pq);
end
end


