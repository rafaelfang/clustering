rng(1); % For reproducibility

% load fisheriris
% X = meas(:,3:4);

% figure;
% plot(X(:,1),X(:,2),'k*','MarkerSize',5);
% title 'Fisher''s Iris Data';
% xlabel 'Petal Lengths (cm)';
% ylabel 'Petal Widths (cm)';
[featureMatrix] =translate(5,table)

[idx,C] = kmeans(featureMatrix,3)