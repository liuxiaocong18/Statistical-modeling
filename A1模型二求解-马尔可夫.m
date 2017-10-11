clc, clear, format rat
a=xlsread('共享.xlsx');
a=a'; a=a(:)'; %把矩阵a逐行展开成一个行向量
for i=1:10
   for j=1:10
      f(i,j)=length(findstr([i j],a)); %统计子串‘ij’的个数
   end
end
ni=sum(f,2);  %计算矩阵f的行和
phat=f./repmat(ni,1,size(f,2))  %求状态转移的频率
