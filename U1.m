function []=U1(  )
%顶层逆时针
global Y
global S
    A=[];
    Y{1}=flipud((Y{1})');
    A=Y{3}(1,:);
    Y{3}(1,:)=Y{6}(1,:);
    Y{6}(1,:)=Y{5}(1,:);
    Y{5}(1,:)=Y{4}(1,:);
    Y{4}(1,:)=A;
    S=[S,'U1,'];
    
%    flipud(a);% 行变换
%    fliplr(a);% 列变换

end