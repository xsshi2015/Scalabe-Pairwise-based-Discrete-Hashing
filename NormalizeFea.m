function fea=NormalizeFea(fea)
[nSmp,nFea] = size(fea);
for i = 1:nSmp
     fea(i,:) = fea(i,:) ./ max(1e-12,norm(fea(i,:)));
end


%-------��һ����[0,1]------%
% maxValue = max(max(fea));
% fea=fea/maxValue;

%------ÿ��ͼ�񶼹�һ����[0,1]-------%
% for i=1:size(fea,1)
%     fea(i,:)=fea(i,:)/max(fea(i,:));
% end;