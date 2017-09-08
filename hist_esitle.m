
%bu fonksiyon tamamen dogru degil, eksikleri var. Ona gore calisin

resim=imread('rice.png');
figure
subplot(2,2,1);
imshow(resim);
subplot(2,2,2);
h=histogram(resim);
toplam=sum(h);
for i=2:size(h,1)
    h(i)=h(i)+h(i-1);
end
for i=1:size(h,1)
    h(i)=round(h(i)*255/toplam);
end
for i=1:size(resim,1)
    for j=1:size(resim,2)
        resim(i,j)=h(resim(i,j)+1);
    end
end
subplot(2,2,3);
imshow(resim);
subplot(2,2,4);
histogram(resim);