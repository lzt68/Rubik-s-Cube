function Animation_D
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
        td=timer;%创建timer结构体
        td.ExecutionMode = 'fixedSpacing';%启用循环执行
        td.Period =0.001;%循环间隔1秒
        td.TasksToExecute = 6;%循环次数4次
        td.TimerFcn =@TimeStartFcnD;
        td.StopFcn=@TimerStopFcnD;
        start(td);
    end

end