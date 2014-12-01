function [featureMatrix] =translate(numberOfProteinSeqs,table)

C = table2cell(table);
mySet=cell(size(C,1),1);
for i=1:size(C,1)
    position=C{i,1};
    length=C{i,2};
    str=strsplit(position,',');
    char1=strcat(num2str(abs(str2double(str(1)))),',',str(3),',', num2str(str2double(str(3))+length-1));
    char2=strcat(num2str(abs(str2double(str(2)))),',',str(4),',', num2str(str2double(str(4))+length-1));
   mySet{i,1}={char1{1},char2{1}};
end

for i=1:size(mySet,1)
    for j=1:size(mySet,1)
        if i==j
            continue;
        else
            
            if isempty(intersect(mySet{i,1},mySet{j,1}))==0
                mySet{min(i,j),1}=union(mySet{i,1},mySet{j,1});
                mySet{max(i,j),1}=[];
            end
            
        end
    end
   
end
for i=1:size(mySet,1)
    for j=1:size(mySet,1)
        if i==j
            continue;
        else
            
            if isempty(intersect(mySet{i,1},mySet{j,1}))==0
                mySet{min(i,j),1}=union(mySet{i,1},mySet{j,1});
                mySet{max(i,j),1}=[];
            end
            
        end
    end
   
end


numOfMotif=0;
for i=1:size(mySet,1)
   if(isempty(mySet{i,1})==1)
       continue;
   end
   numOfMotif=numOfMotif+1;
    
end

featureMatrix=zeros(numberOfProteinSeqs,numOfMotif);
k=1;
for i=1:size(mySet,1)
   if(isempty(mySet{i,1})==1)
       continue;
   end
   for j=1:size(mySet{i,1},2)
       tempstr=mySet{i, 1}{1, j};
       c=strsplit(tempstr,',');
       featureMatrix(str2double(c{1}),k)=1;
   end
   
   k=k+1; 
end



end


