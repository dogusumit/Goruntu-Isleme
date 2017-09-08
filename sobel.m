function yenires=sobel(resim)
resim=im2double(resim);
dikey=[-1 0 1;-2 0 2;-1 0 1];
yatay=[-1 -2 -1;0 0 0;1 2 1];
yenires=zeros(size(resim));
for k=1:size(resim,3)
for i=2:size(resim,1)-1
    for j=2:size(resim,2)-1
        islenecek=resim(i-1:i+1,j-1:j+1,k);
        a=islenecek.*dikey;
        b=islenecek.*yatay;
        c=sum(a(:));
        d=sum(b(:));
        yenires(i,j,k)=sqrt(c^2+d^2);
    end
end
end
end

