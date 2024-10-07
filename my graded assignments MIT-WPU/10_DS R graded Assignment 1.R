library(dplyr)
library(readxl)
## Q1)a,b
MGD= data.frame(Name = c('Tom', 'Som', 'Dom', 'Bom', 'Gom', 'Rom', 'Jom', 'Aom'),
                Department = c('Assets','Sales','Dormitorys', 'Fanclub', 'Ganjasupply','Heroism','JaneDoe','Karwash'),
                Experience = c(5,8,7,3,6,9,4,0),
                Age = c(22,23,45,54,34,53,43,16),
                Mobile_Number = c(9890200001,9890200002,9890200003,9890200004,9890200005,9890200006,9890200007,9890200008))
MGD
#1c
first= head(MGD,3)
first
last = tail(MGD,3)
last

## Q2)
R = c(11,10,22,-31,-15,8,13)
#2a
Diwakar= R
#2b
length(R)
length(Diwakar)
#2c
sort(R, decreasing = TRUE)
sort(Diwakar, decreasing = TRUE)
#2d
print(R[3])

##Q3)
Apr= read.csv("April Revenue.csv")
May = read.csv("May Revenue.csv")
Jun = read.csv("June Revenue.csv")
#3a
Total_Revenue= rbind(Apr,May,Jun)
df= Total_Revenue
Total_Revenue

#3b
Max_amount=max(Total_Revenue$Amount)
Max_amount
p=Total_Revenue %>% 
  arrange(-Amount) %>% 
  select(Order.ID,Amount)%>%
  filter(Amount==Max_amount)
p

#3c
filter_val= df %>% filter(Order.Total>7000)
View (filter_val)

## Q4)
df1 = read_excel('global_sales.xlsx', sheet=1)
df2 = read_excel('global_sales.xlsx', sheet=2)
df3 = read_excel('global_sales.xlsx', sheet=3)

colnames(df1)
#4a
sa = df1 %>% filter(Region=='Southern Asia') %>% nrow()
sa
#4b
ss = df1%>% group_by(Region)%>% summarise(Total_Sales= sum(Sales))
ss
write.csv(ss, "C:\\Users\\kings\\PGPDS5\\Graded Assingment 1-1\\Graded Assingment 1\\ss.csv", row.names=FALSE)# to copy data in proper format to word file
#4c
t3= df1%>%  group_by(Market)%>% summarise(avg_profit= mean(Profit))%>% arrange(desc(avg_profit)) %>% head(3)
t3
#4d
Location= df1 %>% select(`Customer Name`, 'City', 'State')
View (Location)
