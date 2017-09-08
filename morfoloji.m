
resim=imread('coins.png');
resim=im2bw(resim);
yapi=ones(3,3);
asinmis=asindirma(resim,yapi);
genislemis=genisletme(resim,yapi);
acilmis=acma(resim,yapi);
kapanmis=kapama(resim,yapi);
figure
        subplot(2,3,1);
        imshow(resim);
        title('Orjinal Resim');
        subplot(2,3,2);
        imshow(asinmis);
        title('Asinmis');
        subplot(2,3,3);
        imshow(genislemis);
        title('Genislemis');
        subplot(2,3,4);
        imshow(acilmis);
        title('Acilmis');
        subplot(2,3,5);
        imshow(kapanmis);
        title('Kapanmis');