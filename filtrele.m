
%sobel filtre sobel.m dosyasinda

function yeni = filtrele(resim,filtre,tip)
yeni=resim;
n=(size(filtre,1)-1)/2;
for k=1:size(resim,3)
for i=n+1:size(resim,1)-n
    for j=n+1:size(resim,2)-n
        islenecek=resim(i-n:i+n,j-n:j+n,k);
        
	if strcmp(tip,'ortanca')
	islenecek=sort(islenecek(:));
	yeni(i,j,k)=islenecek((size(islenecek,1)+1)/2);
    
    elseif strcmp(tip,'min')
	yeni(i,j,k)=min(islenecek(:));
    
    elseif strcmp(tip,'max')
	yeni(i,j,k)=max(islenecek(:));
    
    else
    b=islenecek.*filtre;
	yeni(i,j,k)=sum(b(:));

	end
	
	
    end
end
end
end

