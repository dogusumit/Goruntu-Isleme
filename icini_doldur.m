
%bu fonksiyon dogru calismiyor, eksikleri var. ona gore haa

resim=cevre_ciz();
yenires=resim;
for i=1:size(resim,1)
    a=[];
    indis=0;
    for j=1:size(resim,2)
        if resim(i,j)==0
            while true
             if resim(i,j+1)==0
                 j=j+1;
             else
                 break;
             end
            end
        indis=indis+1;
        a(indis)=j;
        j=j+1;
        end
    end
    a=unique(a);
    for l=1:2:size(a,2)-1
        yenires(i,a(l):a(l+1))=0;
    end
end

imtool(yenires);