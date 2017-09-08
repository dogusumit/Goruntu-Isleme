resim=imread('cameraman.tif');
resim=im2double(resim);

x_kucult=0.5;
y_kucult=0.5;
yenires=zeros(size(resim,1)*x_kucult,size(resim,2)*y_kucult);
donusum=[x_kucult 0 0;0 y_kucult 0;0 0 1];

for i=1:size(resim,1)
    for j=1:size(resim,2)
        nokta=[i j 1];
        nokta=ceil(nokta*donusum);
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
