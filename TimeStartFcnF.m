function TimeStartFcnF(~,~)
%������Ӧִ��F������ļ�ʱ��������˵ÿһ��������Ӧ�ж�Ӧ�ļ�ʱ������Ӧ����
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
      %�������ѭ�����ת�����ֻ�ͼ
      for i=1:stablecubenumber
          fill(stablecube{i}(1,1:4),stablecube{i}(2,1:4),stablecube{i}(3,1:3));
      end
      %�������ѭ�����δת�����ֻ�ͼ
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