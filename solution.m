function [ sol,checkresult] = solution(  )
%��ԭ������
%%����һ�����°汾��ֻ������������
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
%�ܵ�solution

%����Ϊ��12��edge��8��corner�� ��һ�ֶ��巽ʽ ����finder�������Ҷ�Ӧ��λ��
E=zeros(1,2,12);
E(1,:,1)=[Y{1}(3,2),Y{3}(1,2)];
E(1,:,2)=[Y{1}(2,3),Y{4}(1,2)];
E(1,:,3)=[Y{1}(1,2),Y{5}(1,2)];
E(1,:,4)=[Y{1}(2,1),Y{6}(1,2)];
%����E
E(1,:,5)=[Y{6}(2,3),Y{3}(2,1)];
E(1,:,6)=[Y{3}(2,3),Y{4}(2,1)];
E(1,:,7)=[Y{4}(2,3),Y{5}(2,1)];
E(1,:,8)=[Y{5}(2,3),Y{6}(2,1)];
%����
E(1,:,9)=[Y{3}(3,2),Y{2}(1,2)];
E(1,:,10)=[Y{4}(3,2),Y{2}(2,3)];
E(1,:,11)=[Y{5}(3,2),Y{2}(3,2)];
E(1,:,12)=[Y{6}(3,2),Y{2}(2,1)];

C=zeros(1,3,8);
%����C below
C(1,:,1)=[Y{6}(1,3),Y{1}(3,1),Y{3}(1,1)];
C(1,:,2)=[Y{3}(1,3),Y{1}(3,3),Y{4}(1,1)];
C(1,:,3)=[Y{4}(1,3),Y{1}(1,3),Y{5}(1,1)];
C(1,:,4)=[Y{5}(1,3),Y{1}(1,1),Y{6}(1,1)];
%����C below
C(1,:,5)=[Y{6}(3,3),Y{3}(3,1),Y{2}(1,1)];
C(1,:,6)=[Y{3}(3,3),Y{4}(3,1),Y{2}(1,3)];
C(1,:,7)=[Y{4}(3,3),Y{5}(3,1),Y{2}(3,3)];
C(1,:,8)=[Y{5}(3,3),Y{6}(3,1),Y{2}(3,1)];


S=[];
%������ɵײ�ʮ��
%1
Cross;
sol=[sol,S];
S=[];
%2
rotate;
%��һ��
Cross;
change;
sol=[sol,S];
S=[];
%3
rotate;
%�ڶ���
Cross;
change;
change;
sol=[sol,S];
S=[];
%4
rotate;
%������
Cross;
change;
change;
change;
sol=[sol,S];
S=[];

%��һ������ɵײ�ǿ�ĸ�ԭ
corner1;
change;
change;
change;
sol=[sol,S];
S=[];
%1st
rotate;
%���ĸ��ص�ԭ��
corner1;
sol=[sol,S];
S=[];
%2nd
rotate;
%��һ��
corner1;
change;
sol=[sol,S];
S=[];
%3rd
rotate;
%�ڶ���
corner1;
change;
change;
sol=[sol,S];
S=[];
%4rd


%��������ɵڶ���ĸ�ԭ
%1st
floor2;
change;
change;
sol=[sol,S];
S=[];
rotate;
%������rotate
%2
floor2;
change;
change;
change;
sol=[sol,S];

S=[];
rotate;
%���ĸ�
%3
floor2;
sol=[sol,S];
S=[];
%4
rotate;
%��һ��
floor2;
change;
sol=[sol,S];
S=[];
%��һ��ƴ�Ӷ���ʮ��
S=[];
cross2;
change;
sol=[sol,S];
%��һ����ԭ�ǿ�
S=[];
floor3;
change;
sol=[sol,S];
sol=adjustsolution(sol);
end
