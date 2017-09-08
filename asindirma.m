    function yenires=asindirma(resim,yapi)
    yenires=zeros(size(resim));
        for i=2:size(resim,1)-1
            for j=2:size(resim,2)-1
                islenecek=resim(i-1:i+1,j-1:j+1);
                if islenecek==yapi
                    yenires(i,j)=yapi(2,2);
                else
                    yenires(i,j)=1-yapi(2,2);
                end
            end
        end
    end