resim=imread('cameraman.tif');
resim=im2double(resim);

aci=90;
aci=deg2rad(aci);
yenires=zeros(size(resim));
donusum=[cos(aci) sin(aci);-sin(aci) cos(aci)];
indis=1;
for i=1:size(resim,1)
    for j=1:size(resim,2)
        nokta(:,indis)=[i;j];
        nokta(:,indis)=round(donusum*nokta(:,indis));
        indis=indis+1;
        %yenires(nokta(1),nokta(2),:)=resim(i,j,:);
    end
end
if min(nokta(1,:))<1
nokta(1,:)=nokta(1,:)+(min(nokta(1,:))*-1+1);
end
if min(nokta(2,:))<1
nokta(2,:)=nokta(2,:)+(min(nokta(2,:))*-1+1);
end
indis=1;
for i=1:size(resim,1)
    for j=1:size(resim,2)
       yenires(nokta(1,indis),nokta(2,indis),:)=resim(i,j,:);
       indis=indis+1;
    end
end


figure
subplot(1,2,1);
imshow(resim);
title('Orjinal Resim');
subplot(1,2,2);
imshow(yenires);
title('Yeni Resim');
