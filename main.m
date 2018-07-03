function [ output_args ] = main(  )
%复原主函数
global Y
load Y.mat
%完成底层十字
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

