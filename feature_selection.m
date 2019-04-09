function [X_final] = feature_selection(X,Y)
[X_norm, mu, sigma] = featureNormalize(X);
[ranks,weights] = relieff(X_norm,Y,10);
z=find(weights>0);
feature=ranks(z);

X_final=X_norm(:,feature);


end