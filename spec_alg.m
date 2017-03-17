function idx=spec_alg(B,sigma)
[a,~]=size(B);
A=zeros(a,a);
%disp(A);
%sigma=5;
for i = 1:a
    for j = 1:a
        num=norm(B(i,:)-B(j,:))^2;
        res=exp(-num/(2*(sigma^2)));
        A(i,j)=res;
    end
end
[m,n]=size(A);
D=zeros(m,n);
for i = 1:m
    sum=0;
    for j = 1:n
        sum=sum+A(i,j);
    end
    D(i,i)=sum;
end
L=D-A;
k=2;
[Vec,~]=eig(L);
V=Vec(:,1:k);
idx=kmeans(V,k);
end