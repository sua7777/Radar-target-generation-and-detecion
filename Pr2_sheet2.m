d = 1:30;
vrel = -60:5:-5;
[X1,X2]= meshgrid(d,vrel);
%feature size N and samples M
N = 2;
M = size(X1,1)*size(X1,2);
X = nan(M,N);
Y = nan(M,1);
X3 = nan(M,N);
idxpattern = 1;

for idxDim1 = 1:size(X1,1)
    for idxDim2 = 1:size(X1,2)
        if X2(idxDim1,idxDim2) >=0
            TTC = 60;
        else
            TTC = X1(idxDim1,idxDim2)/-(X2(idxDim1,idxDim2)/3.6);
        end
        X3(idxDim1,idxDim2)=TTC;
        Y(idxpattern)= TTC; 
        idxpattern = idxpattern+1;
    end
end 
