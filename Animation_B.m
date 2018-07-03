function Animation_B
    global on_off;
    global shelterrotatecube sheltercube;
    global integralcube;
    global camera;
    global stablecubenumber;
    if on_off==false
        stablecubenumber=0;
        shelterrotatecube=CubeWithoutColor(Point(-1,-3,3),Point(-1,3,3),Point(-3,3,3),Point(-3,-3,3),Point(-1,-3,-3),Point(-1,3,-3),Point(-3,3,-3),Point(-3,-3,-3));
        sheltercube=CubeWithoutColor(Point(3,-3,3),Point(3,3,3),Point(-1,3,3),Point(-1,-3,3),Point(3,-3,-3),Point(3,3,-3),Point(-1,3,-3),Point(-1,-3,-3));
        on_off=true;
        clf;
        if camera(1,1)<-1
           for i=2:1:3
              for j=1:1:3
                 for k=1:1:3
                    DrawSingleCube(camera,integralcube(i,j,k),sheltercube,true,false,[]);
                 end
              end
           end
        else
            for i=2:1:3
              for j=1:1:3
                 for k=1:1:3
                    MarkStableCube(camera,integralcube(i,j,k),sheltercube);
                 end
              end
           end
        end
        tb=timer;%����timer�ṹ��
        tb.ExecutionMode = 'fixedSpacing';%����ѭ��ִ��
        tb.Period =0.001;%ѭ�����1��
        tb.TasksToExecute = 6;%ѭ������4��
        tb.TimerFcn =@TimeStartFcnB;
        tb.StopFcn=@TimerStopFcnB;
        start(tb);
    end
end