function []=R(  )
%�Ҳ�˳ʱ��
global Y
global S
    A=[];
    Y{4}=fliplr((Y{4})');
    A=Y{1}(:,3);
    Y{1}(:,3)=Y{3}(:,3);
    Y{3}(:,3)=Y{2}(:,3);
    Y{2}(:,3)=flipud(Y{5}(:,1));
    Y{5}(:,1)=flipud(A);
    S=[S,'R,'];
    
%    flipud(a);% �б任
%    fliplr(a);% �б任

end