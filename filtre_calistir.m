
%sobel filtresi sobel.m dosyasinda

resim=imread('rice.png');
resim=im2double(resim);
figure
subplot(2,3,1);
imshow(resim);
title('Orjinal Resim');

filtre=ones(3,3);
filtre=filtre.*1/9;
yeni=filtrele(resim,filtre,'ortalama');
subplot(2,3,2);
imshow(yeni);
title('Ortalama Filtresi');

filtre=ones(5,5);
yeni=filtrele(resim,filtre,'ortanca');
subplot(2,3,3);
imshow(yeni);
title('Ortanca Filtresi');

filtre=eye(7,7); %birim matris
filtre=filtre.*1/5;
yeni=filtrele(resim,filtre,'hareketli');
subplot(2,3,4);
imshow(yeni);
title('Hareketlendir');

filtre=[-1 -1 -1;-1 9 -1;-1 -1 -1];
yeni=filtrele(resim,filtre,'koseli');
subplot(2,3,5);
imshow(yeni);
title('Koseler Belirgin');

filtre=[-1 -1 -1;-1 17 -1;-1 -1 -1];
filtre=filtre.*1/9;
yeni=filtrele(resim,filtre,'yumusak');
subplot(2,3,6);
imshow(yeni);
title('Koseler Yumusak');


resim=imread('eight.tif');
resim=im2double(resim);
resim=imnoise(resim,'salt & pepper',0.1);
figure, subplot(2,2,1);
imshow(resim);
title('Gürültülü Resim');

filtre=ones(3,3);
yeni=filtrele(resim,filtre,'ortanca');
subplot(2,2,2);
imshow(yeni);
title('Ortanca Filtresi');

filtre=ones(3,3);
yeni=filtrele(resim,filtre,'min');
subplot(2,2,3);
imshow(yeni);
title('Min Filtresi');

filtre=ones(3,3);
yeni=filtrele(resim,filtre,'max');
subplot(2,2,4);
imshow(yeni);
title('Max Filtresi');