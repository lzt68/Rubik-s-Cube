function TimeStartFcnUo(~,~)
    global canvashandle;
    global camera;
    global integralcube;
    global shelterrotatecube;
    global stablecubenumber;
    global stablecube;
    shelterrotatecube=RotateCube(shelterrotatecube,'uo');
    figure(canvashandle);
    cla;
    if camera(1,3)<=0
      for i=1:1:3
          for j=1:1:3
             integralcube(i,j,3)=RotateCube(integralcube(i,j,3),'uo');
             DrawSingleCube(camera,integralcube(i,j,3),shelterrotatecube);
          end
      end
      %�������ѭ�����ת�����ֻ�ͼ
      for i=1:stablecubenumber
          fill(stablecube{i}(1,1:4),stablecube{i}(2,1:4),stablecube{i}(3,1:3));
      end
    end
    if camera(1,3)>0   
      for i=1:1:3
          for j=1:1:3
             integralcube(i,j,3)=RotateCube(integralcube(i,j,3),'uo');
             DrawSingleCube(camera,integralcube(i,j,3),shelterrotatecube);
          end
      end
    end
    axis([-2 2 -2 2]);
    axis square;
    axis off;
end