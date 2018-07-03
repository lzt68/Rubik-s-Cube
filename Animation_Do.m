function Animation_Do
    global on_off;
    global shelterrotatecube sheltercube;
    global integralcube;
    global camera;
    global stablecubenumber;
    stablecubenumber=0;
    shelterrotatecube=CubeWithoutColor(Point(3,-3,-1),Point(3,3,-1),Point(-3,3,-1),Point(-3,-3,-1),Point(3,-3,-3),Point(3,3,-3),Point(-3,3,-3),Point(-3,-3,-3));
    sheltercube=CubeWithoutColor(Point(3,-3,3),Point(3,3,3),Point(-3,3,3),Point(-3,-3,3),Point(3,-3,-1),Point(3,3,-1),Point(-3,3,-1),Point(-3,-3,-1));
    if on_off==false
        on_off=true;
        clf;
        if camera(1,3)<-1
           for i=2:1:3
              for j=1:1:3
                 for k=1:1:3
                    DrawSingleCube(camera,integralcube(k,j,i),sheltercube,true,false,[]);
                 end
              end
           end
        else
            for i=2:1:3
              for j=1:1:3
                 for k=1:1:3
                    MarkStableCube(camera,integralcube(k,j,i),sheltercube);
                 end
              end
           end
        end
        tdo=timer;%����timer�ṹ��
        tdo.ExecutionMode = 'fixedSpacing';%����ѭ��ִ��
        tdo.Period =0.001;%ѭ�����1��
        tdo.TasksToExecute = 6;%ѭ������4��
        tdo.TimerFcn =@TimeStartFcnDo;
        tdo.StopFcn=@TimerStopFcnDo;
        start(tdo);
    end

end