################################�򵥵Ķ����Ͷ��Է���#############################

x1 = c(71,56.5,56,61,65,62,53,53,65,71,65,57,66.5,59.1,64,69.5,64,56.5,60.2,55,57,55,57,58,59.5,61,57,57.5,70,64,74,72,62.5,68,63.4,68,69,73)
x2 = c(1629,1569,1561,1619,1566,1639,1494,1568,1610,1572,1540,1530,1622,1486,1578,1645,1648,1521,1534,1536,1547,1505,1473,1538,1513,1653,1566,1580,1630,1640,1647,1620,1637,1528,1647,1605,1625,1615)

# ��������---�����ܶȣ����ͼ
hist(x1)
plot(x1,x2)

age = c(12,12,11,11,13,13,12,12)
sex = c('F','M','M','F','F','M','M','F')
result = c(98,96,89,96,90,98,97,89)
A = cbind(age,sex,result)

# ���Է���----������
table(age)
barplot(table(age))
pie(table(result))

table(age,sex)  # ��ά������
barplot(table(age,sex),beside = F,col = 7)
barplot(table(age,sex),beside = T,col = 7)

ftable(age,sex,result)  # ��ά��������ע�����˳��
ft = ftable(sex,result,age)
rowSums(ft)
colMeans(ft)
sum(ft)

# ����ͼ����ͼ������ͼ������ͼ������ͼ
X = matrix(1:16,4,4)
barplot(apply(X,1,mean))
barplot(apply(X,2,median))

pie(apply(X,2,median))

boxplot(X)
boxplot(X,horizontal = T)

stars(X)
stars(X,full = T)
stars(X,full = F)
stars(X,full = T,draw.segments = T)
stars(X,full = F,draw.segments = T)

library(aplpack)
faces(X,ncol.plot = 1)
faces(X,nrow.plot = 2)
faces(X[c(1,8,9,14,17,19),])



        