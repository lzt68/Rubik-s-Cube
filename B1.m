function []=B1(  )
%后方逆时针
global Y
global S
    A=[];
    Y{5}=flipud((Y{5})');
    A=Y{1}(1,:);
    Y{1}(1,:)=flipud(Y{6}(:,1));
    Y{6}(:,1)=Y{2}(3,:);
    Y{2}(3,:)=flipud(Y{4}(:,3));
    Y{4}(:,3)=A;
    S=[S,'B1,'];
    
%    flipud(a);% 行变换
%    fliplr(a);% 列变换

end