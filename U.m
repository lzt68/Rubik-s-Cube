function []=U(  )
%����˳ʱ��
global Y
global S
    A=[];
    Y{1}=fliplr((Y{1})');
    A=Y{3}(1,:);
    Y{3}(1,:)=Y{4}(1,:);
    Y{4}(1,:)=Y{5}(1,:);
    Y{5}(1,:)=Y{6}(1,:);
    Y{6}(1,:)=A;
    S=[S,'U,'];
    
%    flipud(a);% �б任
%    fliplr(a);% �б任

end


