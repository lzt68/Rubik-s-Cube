function []=D(  )
%底层顺时针
global Y
global S
    A=[];
    Y{2}=fliplr((Y{2})');
    A=Y{3}(3,:);
    Y{3}(3,:)=Y{6}(3,:);
    Y{6}(3,:)=Y{5}(3,:);
    Y{5}(3,:)=Y{4}(3,:);
    Y{4}(3,:)=A;
    S=[S,'D,'];
    
%    flipud(a);% 行变换
%    fliplr(a);% 列变换

end