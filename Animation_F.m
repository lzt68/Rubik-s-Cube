function Animation_F
    global on_off;
    global shelterrotatecube sheltercube;
    global integralcube;
    global camera;
    global stablecubenumber;
    if on_off==false
        stablecubenumber=0;
        shelterrotatecube=CubeWithoutColor(Point(3,-3,3),Point(3,3,3),Point(1,3,3),Point(1,-3,3),Point(3,-3,-3),Point(3,3,-3),Point(1,3,-3),Point(1,-3,-3));
        sheltercube=CubeWithoutColor(Point(1,-3,3),Point(1,3,3),Point(-3,3,3),Point(-3,-3,3),Point(1,-3,-3),Point(1,3,-3),Point(-3,3,-3),Point(-3,-3,-3));
        on_off=true;
        clf;
        if camera(1,1)>1 
           for i=1:1:2
              for j=1:1:3
                 for k=1:1:3
                    DrawSingleCube(camera,integralcube(i,j,k),sheltercube,true,false,[]);
                 end
              end
           end
        else
            for i=1:1:2
              for j=1:1:3
                 for k=1:1:3
                    MarkStableCube(camera,integralcube(i,j,k),sheltercube);
                 end
              end
           end
        end
        tf=timer;%����timer�ṹ��
        tf.ExecutionMode = 'fixedSpacing';%����ѭ��ִ��
        tf.Period =0.001;%ѭ�����1��
        tf.TasksToExecute = 6;%ѭ������4��
        tf.TimerFcn =@TimeStartFcnF;
        tf.StopFcn=@TimerStopFcnF;
        start(tf);
    end
end
