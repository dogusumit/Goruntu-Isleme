resim=imread('cameraman.tif');
k=4; %katsayi (logaritmik icin)
gama=5; %ussel donusum degeri 1'den buyuk deger olabilir
figure
subplot(2,2,1);
imshow(resim);
title('Orjinal Resim');

a=im2uint8(resim);
for i=1:size(a,1)
    for j=1:size(a,2)
        a(i,j)=255-a(i,j);
    end
end
subplot(2,2,2);
imshow(a);
title('Lineer Donusum');



b=im2double(resim);
for i=1:size(b,1)
    for j=1:size(b,2)
        b(i,j)=k*log(1+b(i,j));
    end
end
subplot(2,2,3);
imshow(b);
title('Logaritmik Donusum');



c=im2double(resim);
for i=1:size(c,1)
    for j=1:size(c,2)
        c(i,j)=(c(i,j)^(1/gama));
    end
end
subplot(2,2,4);
imshow(c);
title('Ussel Donusum');