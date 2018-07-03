function []=U(  )
%顶层顺时针
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
    
%    flipud(a);% 行变换
%    fliplr(a);% 列变换

end


