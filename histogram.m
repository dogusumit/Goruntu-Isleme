function h=histogram(a)
h=zeros(256,1);
for i=1:size(a,1)
    for j=1:size(a,2)
        h(a(i,j)+1)=h(a(i,j)+1)+1; %a(i,j)  piksel degeri 0 gelince indis 
%hatasi vereceginden indisleri 1 kaydirdim
    end
end
bar(h);
end

