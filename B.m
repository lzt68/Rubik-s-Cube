function []=B(  )
%��˳ʱ��
global Y
global S
    A=[];
    Y{5}=fliplr((Y{5})');
    A=Y{1}(1,:);
    Y{1}(1,:)=Y{4}(:,3);
    Y{4}(:,3)=fliplr(Y{2}(3,:));
    Y{2}(3,:)=Y{6}(:,1);
    Y{6}(:,1)=fliplr(A);
    S=[S,'B,'];
    
%    flipud(a);% �б任
%    fliplr(a);% �б任

end