    function yenires=genisletme(resim,yapi)
    yenires=zeros(size(resim));
        for i=2:size(resim,1)-1
            for j=2:size(resim,2)-1
                if resim(i,j)==yapi(2,2)
                    yenires(i-1:i+1,j-1:j+1)=yapi;
                else
                    yenires(i,j)=1-yapi(2,2);
                end
            end
        end
    end