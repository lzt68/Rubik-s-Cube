function []=D1(  )
%底层逆时针
global Y
global S
    A=[];
    Y{2}=flipud((Y{2})');
    A=Y{3}(3,:);
    Y{3}(3,:)=Y{4}(3,:);
    Y{4}(3,:)=Y{5}(3,:);
    Y{5}(3,:)=Y{6}(3,:);
    Y{6}(3,:)=A;
    S=[S,'D1,'];
    
%    flipud(a);% 行变换
%    fliplr(a);% 列变换

end