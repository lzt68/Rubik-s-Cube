function [ o ] = jedge( t )

%����д�˸���Ƥ�������ĺ���Ŷ������ж����þ�����찡����������

global Y
global E
%�ж�edge9�ĳ���
o=-1;
if E(1,1,t)==Y{3}(2,2)
    o=1;
    %������ȷ
else
    o=0;
    %����False
end

end

