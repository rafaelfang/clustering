function [ featureMatrix ] = generateFeatureMatrix( proteinSeqs,motifCell )
%generate feature matrix for unsupervised learning usage 

n=size(proteinSeqs,1);
k=size(motifCell,1);
featureMatrix=size(n,k);
for i=1:n
    for j=1:k
        p=strfind(proteinSeqs{i,1},motifCell{k,1});
        if(size(p)==0)
            featureMatrix(i,j)=0;
        else
            featureMatrix(i,j)=1;
        end
        
    end
    
end



end

