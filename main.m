function [ output_args ] = main(  )
%��ԭ������
global Y
load Y.mat
%��ɵײ�ʮ��
location=[16,0,0];
Y=Cross(Y);
rotate;
location=[0,16,0];
Y=Cross(Y);
rotate;
location=[16,0,0];
Y=Cross(Y);
rotate;
loaction=[-16,0,0];
Y=Cross(Y);
rotate;
end

