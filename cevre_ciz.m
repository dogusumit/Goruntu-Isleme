function yeni= cevre_ciz()
resim=imread('cevre_ciz.jpg'); %resim oku
resim=im2bw(resim); %siyah-beyaza cevir
yeni=ones(size(resim)); %bembeyaz yeni resim olustur
    for i=1:size(resim,1)
        for j=1:size(resim,2)
            piksel=resim(i,j);%i,j konumundaki piksel degerini aldik
            if piksel==0 % 0 ise objenin parcasidir
                for k=i-1:i+1 
                    for m=j-1:j+1
                        komsu=resim(k,m); %komsu piksellerin degerlerini sýrayla aldik
                        if komsu==1 %komsu beyaz ise kenardir
                            yeni(i,j)=0; %yeni resme kenari yazdir 
                        end
                    end
                end
            end
        end
    end

figure %yeni pencere ac
subplot(1,2,1);% 1 satir 2 sutundan olusan ciktinin 1. parcasini yazacam
imshow(resim);
subplot(1,2,2);
imshow(yeni);

end