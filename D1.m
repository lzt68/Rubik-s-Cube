function []=D1(  )
%�ײ���ʱ��
global Y
global S
    A=[];
    Y{2}=flipud((Y{2})');
    A=Y{3}(3,:);
    Y{3}(3,:)=Y{4}(3,:);
    Y{4}(3,:)=Y{5}(3,:);
    Y{5}(3,:)=Y{6}(3,:);
    Y{6}(3,:)=A;
    S=[S,'D1,'];
    
%    flipud(a);% �б任
%    fliplr(a);% �б任

end