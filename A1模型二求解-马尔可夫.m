clc, clear, format rat
a=xlsread('����.xlsx');
a=a'; a=a(:)'; %�Ѿ���a����չ����һ��������
for i=1:10
   for j=1:10
      f(i,j)=length(findstr([i j],a)); %ͳ���Ӵ���ij���ĸ���
   end
end
ni=sum(f,2);  %�������f���к�
phat=f./repmat(ni,1,size(f,2))  %��״̬ת�Ƶ�Ƶ��
