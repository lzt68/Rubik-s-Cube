function [ sol,checkresult] = solution(  )
%复原主函数
%%这是一个船新版本，只需体验三分钟
global Y
global S
global E
global C
checkresult=check();
if checkresult==0
    sol=[];
    return;
end

sol=[];
%总的solution

%以下为对12个edge和8个corner的 另一种定义方式 方便finder函数查找对应的位置
E=zeros(1,2,12);
E(1,:,1)=[Y{1}(3,2),Y{3}(1,2)];
E(1,:,2)=[Y{1}(2,3),Y{4}(1,2)];
E(1,:,3)=[Y{1}(1,2),Y{5}(1,2)];
E(1,:,4)=[Y{1}(2,1),Y{6}(1,2)];
%上四E
E(1,:,5)=[Y{6}(2,3),Y{3}(2,1)];
E(1,:,6)=[Y{3}(2,3),Y{4}(2,1)];
E(1,:,7)=[Y{4}(2,3),Y{5}(2,1)];
E(1,:,8)=[Y{5}(2,3),Y{6}(2,1)];
%中四
E(1,:,9)=[Y{3}(3,2),Y{2}(1,2)];
E(1,:,10)=[Y{4}(3,2),Y{2}(2,3)];
E(1,:,11)=[Y{5}(3,2),Y{2}(3,2)];
E(1,:,12)=[Y{6}(3,2),Y{2}(2,1)];

C=zeros(1,3,8);
%上四C below
C(1,:,1)=[Y{6}(1,3),Y{1}(3,1),Y{3}(1,1)];
C(1,:,2)=[Y{3}(1,3),Y{1}(3,3),Y{4}(1,1)];
C(1,:,3)=[Y{4}(1,3),Y{1}(1,3),Y{5}(1,1)];
C(1,:,4)=[Y{5}(1,3),Y{1}(1,1),Y{6}(1,1)];
%下四C below
C(1,:,5)=[Y{6}(3,3),Y{3}(3,1),Y{2}(1,1)];
C(1,:,6)=[Y{3}(3,3),Y{4}(3,1),Y{2}(1,3)];
C(1,:,7)=[Y{4}(3,3),Y{5}(3,1),Y{2}(3,3)];
C(1,:,8)=[Y{5}(3,3),Y{6}(3,1),Y{2}(3,1)];


S=[];
%下面完成底层十字
%1
Cross;
sol=[sol,S];
S=[];
%2
rotate;
%第一次
Cross;
change;
sol=[sol,S];
S=[];
%3
rotate;
%第二次
Cross;
change;
change;
sol=[sol,S];
S=[];
%4
rotate;
%第三次
Cross;
change;
change;
change;
sol=[sol,S];
S=[];

%下一步是完成底层角块的复原
corner1;
change;
change;
change;
sol=[sol,S];
S=[];
%1st
rotate;
%第四个回到原来
corner1;
sol=[sol,S];
S=[];
%2nd
rotate;
%第一个
corner1;
change;
sol=[sol,S];
S=[];
%3rd
rotate;
%第二个
corner1;
change;
change;
sol=[sol,S];
S=[];
%4rd


%接下来完成第二层的复原
%1st
floor2;
change;
change;
sol=[sol,S];
S=[];
rotate;
%第三个rotate
%2
floor2;
change;
change;
change;
sol=[sol,S];

S=[];
rotate;
%第四个
%3
floor2;
sol=[sol,S];
S=[];
%4
rotate;
%第一个
floor2;
change;
sol=[sol,S];
S=[];
%下一步拼接顶层十字
S=[];
cross2;
change;
sol=[sol,S];
%下一步复原角块
S=[];
floor3;
change;
sol=[sol,S];
sol=adjustsolution(sol);
end

