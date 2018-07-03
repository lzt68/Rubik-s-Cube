function [ s ] = adjust( s )
%删除输出语句中的重复步骤
global t
t=length(s);
temp=[];
i=0;
while i<=(t-8)
    temp=[s(1+i),s(2+i),s(3+i),s(4+i),s(5+i),s(6+i),s(7+i),s(8+i)];
    if temp=='U,U,U,U,'
        for m=1:8
        s(1+i)=[];
        end
        
    end
    
    if temp=='F,F,F,F,'
        for m=1:8
        s(1+i)=[];
        end
    end
    
    if temp=='R,R,R,R,'
        for m=1:8
        s(1+i)=[];
        end
    end
    i=i+1;
    t=length(s);
end
temp=[];
t=length(s);
i=0;
while i<=(t-5)
    temp=[s(1+i),s(2+i),s(3+i),s(4+i),s(5+i)];
    if temp=='R,R1,'
      for m=1:5
        s(1+i)=[];
      end
    end
    if temp=='R1,R,'
      for m=1:5
        s(1+i)=[];
      end
    end
    if temp=='F,F1,'
       for m=1:5
        s(1+i)=[];
      end
    end
    if temp=='F1,F,'
      for m=1:5
        s(1+i)=[];
      end
    end
    if temp=='U,U1,'
      for m=1:5
        s(1+i)=[];
      end
    end
    if temp=='U1,U,'
        for m=1:5
           s(1+i)=[];
        end
    end
    if temp=='B,B1,'
      for m=1:5
        s(1+i)=[];
      end
    end
    if temp=='B1,B,'
      for m=1:5
        s(1+i)=[];
      end
    end
    i=i+1;
    t=length(s);

end
temp=[];
t=length(s);
i=0;
while i<=(t-6)
    temp=[s(1+i),s(2+i),s(3+i),s(4+i),s(5+i),s(6+i)];
    if temp=='U,U,U,'
      for m=1:3
        s(1+i)=[];
      end
      s(1+i)='U';
      s(2+i)='1';
      s(3+i)=',';
      
    end
    if temp=='B,B,B,'
      for m=1:3
        s(1+i)=[];
      end
      s(1+i)='B';
      s(2+i)='1';
      s(3+i)=',';
      
    end
    if temp=='R,R,R,'
      for m=1:3
        s(1+i)=[];
      end
      s(1+i)='R';
      s(2+i)='1';
      s(3+i)=',';
      
    end
    if temp=='L,L,L,'
      for m=1:3
        s(1+i)=[];
      end
      s(1+i)='L';
      s(2+i)='1';
      s(3+i)=',';  
    end
    if temp=='F,F,F,'
      for m=1:3
        s(1+i)=[];
      end
      s(1+i)='F';
      s(2+i)='1';
      s(3+i)=',';  
    end
    i=i+1;
    t=length(s);

end
while i<=(t-9)
    temp=[s(1+i),s(2+i),s(3+i),s(4+i),s(5+i),s(6+i),s(7+i),s(8+i),s(9+i)];
    if temp=='U1,U1,U1,'
      for m=1:7
        s(1+i)=[];
      end
      s(1+i)='U';
      s(2+i)=',';
    end
    i=i+1;
    t=length(s);
end

end

