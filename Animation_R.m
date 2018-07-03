function Animation_R
    global on_off;
    global shelterrotatecube sheltercube;
    global integralcube;
    global camera;
    global stablecubenumber;
    if on_off==false
        stablecubenumber=0;
        shelterrotatecube=CubeWithoutColor(Point(3,3,3),Point(-3,3,3),Point(-3,1,3),Point(3,1,3),Point(3,3,-3),Point(-3,3,-3),Point(-3,1,-3),Point(3,1,-3));
        sheltercube=CubeWithoutColor(Point(3,-3,3),Point(3,1,3),Point(-3,1,3),Point(-3,-3,3),Point(3,-3,-3),Point(3,1,-3),Point(-3,1,-3),Point(-3,-3,-3));
        on_off=true;
        clf;
        if camera(1,2)>1
           for i=1:1:2
              for j=1:1:3
                 for k=1:1:3
                    DrawSingleCube(camera,integralcube(j,i,k),sheltercube,true,false,[]);
                 end
              end
           end
        else
            for i=1:1:2
              for j=1:1:3
                 for k=1:1:3
                    MarkStableCube(camera,integralcube(j,i,k),sheltercube);
                 end
              end
           end
        end
        tr=timer;%创建timer结构体
        tr.ExecutionMode = 'fixedSpacing';%启用循环执行
        tr.Period =0.001;%循环间隔1秒
        tr.TasksToExecute = 6;%循环次数4次
        tr.TimerFcn =@TimeStartFcnR;
        tr.StopFcn=@TimerStopFcnR;
        start(tr);
    end
end