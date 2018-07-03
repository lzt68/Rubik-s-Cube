function []=L1(  )
%左侧逆时针
global Y
global S
    A=[];
    Y{6}=flipud((Y{6})');
    A=Y{1}(:,1);
    Y{1}(:,1)=Y{3}(:,1);
    Y{3}(:,1)=Y{2}(:,1);
    Y{2}(:,1)=flipud(Y{5}(:,3));
    Y{5}(:,3)=flipud(A);
    S=[S,'L1,'];
    
%    flipud(a);% 行变换
%    fliplr(a);% 列变换

end