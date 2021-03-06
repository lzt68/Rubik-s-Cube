function Animation_U
    global on_off;
    global shelterrotatecube sheltercube;
    global integralcube;
    global camera;
    global stablecubenumber;
    
    if on_off==false
        stablecubenumber=0;
        shelterrotatecube=CubeWithoutColor(Point(3,-3,3),Point(3,3,3),Point(-3,3,3),Point(-3,-3,3),Point(3,-3,1),Point(3,3,1),Point(-3,3,1),Point(-3,-3,1));
        sheltercube=CubeWithoutColor(Point(3,-3,1),Point(3,3,1),Point(-3,3,1),Point(-3,-3,1),Point(3,-3,-3),Point(3,3,-3),Point(-3,3,-3),Point(-3,-3,-3));
        on_off=true;
        clf;
        if camera(1,3)>1
           for i=1:1:2
              for j=1:1:3
                 for k=1:1:3
                    DrawSingleCube(camera,integralcube(k,j,i),sheltercube,true,false,[]);
                 end
              end
           end
        else
            for i=1:1:2
              for j=1:1:3
                 for k=1:1:3
                    MarkStableCube(camera,integralcube(k,j,i),sheltercube);
                 end
              end
           end
        end
        tu=timer;%创建timer结构体
        tu.ExecutionMode = 'fixedSpacing';%启用循环执行
        tu.Period =0.001;%循环间隔1秒
        tu.TasksToExecute = 6;%循环次数4次
        tu.TimerFcn =@TimeStartFcnU;
        tu.StopFcn=@TimerStopFcnU;
        start(tu);
    end
end