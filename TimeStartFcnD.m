function TimeStartFcnD(~,~)
    global canvashandle;
    global camera;
    global integralcube;
    global shelterrotatecube;
    global stablecube stablecubenumber;
    shelterrotatecube=RotateCube(shelterrotatecube,'uo');
    figure(canvashandle);
    cla;
    if camera(1,3)>=-1
      for i=1:1:3
          for j=1:1:3
             integralcube(i,j,1)=RotateCube(integralcube(i,j,1),'uo');
             DrawSingleCube(camera,integralcube(i,j,1),shelterrotatecube);
          end
      end
      %上面这个循环完成转动部分绘图
      for i=1:stablecubenumber
          fill(stablecube{i}(1,1:4),stablecube{i}(2,1:4),stablecube{i}(3,1:3));
      end
    end
    if camera(1,3)<-1   
      for i=1:1:3
          for j=1:1:3
             integralcube(i,j,1)=RotateCube(integralcube(i,j,1),'uo');
             DrawSingleCube(camera,integralcube(i,j,1),shelterrotatecube);
          end
      end
    end
    axis([-2 2 -2 2]);
    axis square;
    axis off;
end