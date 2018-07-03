function TimeStartFcnF(~,~)
%用来响应执行F操作后的计时器，按理说每一个操作都应有对应的计时器和响应函数
    global canvashandle;
    global camera;
    global integralcube;
    global shelterrotatecube;
    global stablecubenumber;
    global stablecube;
    shelterrotatecube=RotateCube(shelterrotatecube,'f');
    figure(canvashandle);
    cla;
    if camera(1,1)<=1
      for i=1:1:3
          for j=1:1:3
             integralcube(3,i,j)=RotateCube(integralcube(3,i,j),'f');
             DrawSingleCube(camera,integralcube(3,i,j),shelterrotatecube);
          end
      end
      %上面这个循环完成转动部分绘图
      for i=1:stablecubenumber
          fill(stablecube{i}(1,1:4),stablecube{i}(2,1:4),stablecube{i}(3,1:3));
      end
      %上面这个循环完成未转动部分画图
    end
    if camera(1,1)>1  
      for i=1:1:3
          for j=1:1:3
             integralcube(3,i,j)=RotateCube(integralcube(3,i,j),'f');
             DrawSingleCube(camera,integralcube(3,i,j),shelterrotatecube);
          end
      end
    end
    axis([-2 2 -2 2]);
    axis square;
    axis off;
end