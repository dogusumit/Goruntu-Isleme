resim=imread('rice.png');
figure
subplot(2,2,1);
imshow(resim);
subplot(2,2,2);
histogram(resim);
yenires=resim;
kucuk=min(resim(:));
carpan=255.0/double(max(resim(:))-min(resim(:)));
    for i=1:size(resim,1)
        for j=1:size(resim,2)
           
                yenires(i,j)=(resim(i,j)-kucuk)*carpan;
           
        end
    end
subplot(2,2,3);
imshow(yenires);
subplot(2,2,4);
histogram(yenires);
