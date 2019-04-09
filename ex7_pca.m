

%% Initialization
clear ; close all; clc
%% ================== Part 1: Load Dataset  ===================
data=xlsread('Data_Feature Selection.xlsx');
X=data(:,2:end);
Y=data(:,1);

%% ================== Part 2: Feature Selection  ===================
X_final=feature_selection(X,Y);

%% =============== Part 2: Principal Component Analysis ===============
    
[U, S] = pca(X_final);
K = 3;
Z = projectData(X_final, U, K);
%% Multilinear Regression 
mdl = fitlm(Z,Y)
%end