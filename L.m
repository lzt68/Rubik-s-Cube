function []=L(  )
%���˳ʱ��
global Y
global S
    A=[];
    Y{6}=fliplr((Y{6})');
    A=Y{1}(:,1);
    Y{1}(:,1)=flipud(Y{5}(:,3));
    Y{5}(:,3)=flipud(Y{2}(:,1));
    Y{2}(:,1)=Y{3}(:,1);
    Y{3}(:,1)=A;
    S=[S,'L,'];
    
%    flipud(a);% �б任
%    fliplr(a);% �б任

end