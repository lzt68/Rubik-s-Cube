function []=F1(  )
%ǰ����ʱ��
global Y
global S
    A=[];
    Y{3}=flipud((Y{3})');
    A=Y{1}(3,:);
    Y{1}(3,:)=Y{4}(:,1);
    Y{4}(:,1)=fliplr(Y{2}(1,:));
    Y{2}(1,:)=Y{6}(:,3);
    Y{6}(:,3)=fliplr(A);
    S=[S,'F1,'];
    
%    flipud(a);% �б任
%    fliplr(a);% �б任

end