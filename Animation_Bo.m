function Animation_Bo
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
        tbo=timer;%创建timer结构体
        tbo.ExecutionMode = 'fixedSpacing';%启用循环执行
        tbo.Period =0.001;%循环间隔1秒
        tbo.TasksToExecute = 6;%循环次数4次
        tbo.TimerFcn =@TimeStartFcnBo;
        tbo.StopFcn=@TimerStopFcnBo;
        start(tbo);
    end
end