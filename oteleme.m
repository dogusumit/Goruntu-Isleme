resim=imread('cameraman.tif');
resim=im2double(resim);

x_otele=20;
y_otele=40;
yenires=zeros(size(resim));
donusum=[1 0 0;0 1 0;y_otele x_otele 1];

for i=1:size(resim,1)
    for j=1:size(resim,2)
        nokta=[i j 1];
        nokta=nokta*donusum;
        yenires(nokta(1),nokta(2),:)=resim(i,j,:);
    end
end

figure
subplot(1,2,1);
imshow(resim);
title('Orjinal Resim');
subplot(1,2,2);
imshow(yenires);
title('Yeni Resim');