function [t] = jcorner6(  )
global Y
global S
%�ж�6��λ�ǿ�ĳ���judge Corner
t=2;
if Y{2}(2,2)==Y{3}(3,3)
    t=-1;
end

if Y{2}(2,2)==Y{2}(1,3)
    t=0;
end

if Y{2}(2,2)==Y{4}(3,1)
    t=1;
end

end

