function [  ] = change(  )
%��rotate������ɺ󣬶�S��Ĳ�����е���
global S
for i=1:length(S)
    if S(i)=='F'
        S(i)='R';
        continue
    end

    if S(i)=='R'
        S(i)='B';
        continue
    end

    
    if S(i)=='B'
        S(i)='L';
        continue
    end

    if S(i)=='L'
        S(i)='F';
        continue
    end

end
end

