function [ ] = corner1(  )
%��ɵ�һ��Ľǿ�ĸ�ԭ
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

%��һ���жϳ����Ƿ���ȷ
o=jcorner6;
%��һ����������
    if o==0
    end
    
    if o==1
       %��ʱ�����ת
       R;
       U;
       R1;
       U1;
       R;
       U;
       R1;
    end
    
    if o==-1
 %˳ʱ�����ת
       R;
       U1;
       R1;
       U;
       R;
       U1;
       R1;
    end

end

