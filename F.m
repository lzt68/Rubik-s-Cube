function []=F(  )
%前方顺时针
global Y
global S
    A=[];
    Y{3}=fliplr((Y{3})');
    A=Y{1}(3,:);
    Y{1}(3,:)=flipud(Y{6}(:,3));
    Y{6}(:,3)=Y{2}(1,:);
    Y{2}(1,:)=flipud(Y{4}(:,1));
    Y{4}(:,1)=A;
    S=[S,'F,'];
    
%    flipud(a);% 行变换
%    fliplr(a);% 列变换

end