library(readxl)
library(dplyr)
## Q1}
df= read_excel('Salary Data.xlsx')
df
#H0: Avg Men Salary = Avg womens Salary
#Ha: Avg Men Salary != Avg womens Salary
# Confidence level= 95% = 0.95
# Significance level = 5% = 0.05
t.test(df$`Men Salary`,df$`Women Salary`,conf.level = 0.95)
# p- Value = 0.001494 which is < Significance level
# we have significant evidence to reject the Null Hypothesis H0
# Business conclusion : there is Salary disparity between men and women in this workplace

##Q2)

df1= read.csv('Prime TV Shows Data set.csv')
colnames(df1)
library(ggplot2)
#2a)Bar graph
sba =  df1 %>% group_by(Age.of.viewers) %>% count()
View (sba)
sba$Age.of.viewers<- as.factor(sba$Age.of.viewers)
ggplot(sba, aes(x=Age.of.viewers, y=n, fill= Age.of.viewers)) + 
  geom_bar(stat = "identity")+
  geom_text(aes(label=n), position=position_dodge(width=0.9), vjust=-0.25)+
  labs(x='Age of Viewers', y='No.of Shows', title = ('Bar Graph of no of shows by age group' ))
 
#2b) Histogram
ggplot(df1, aes(x=IMDb.rating))+
  geom_histogram(fill="blue",alpha=0.5,bins = 100)+ # bins is chosen as 100 because imdb ratings can take 100 possible values between 0 and 10 
  labs(x="IMDb Ratings", title = "Histogram of IMDb Ratings")+
  theme_bw()

#2c) Bar graph
t3= df1%>% arrange (desc(df1$IMDb.rating)) %>% head(3)
t3
ggplot(t3, aes(x=Name.of.the.show, y=IMDb.rating)) + 
  geom_bar(stat = "identity", fill= 'orange')+
  geom_text(aes(label=IMDb.rating), position=position_dodge(width=0.9), vjust=-0.25)+
  labs(x='Name of Show', y='IMDb Rating', title = ('Top 3 Shows by IMDb rating' ))

#2d) Pie chart
pie=df1%>% filter(df1$Year.of.release==2018|df1$Year.of.release==2019|df1$Year.of.release==2020)
pie
pie2= pie%>%group_by(pie$Year.of.release)%>%count() 
pie2

# Create a pie chart using the Year and count columns
ggplot(pie2, aes(x="", y=pie2$n, fill=pie2$`pie$Year.of.release`)) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar(theta = "y")+
  theme_void()+
  theme(legend.position = 'none')+
  labs(title = "Pie Chart of No of Releases in year 2018,2019,2020")+
  geom_text(aes(label = paste(pie2$`pie$Year.of.release`,"\n", pie2$n)), position = position_stack(vjust = 0.5),colour='white')


#3a) Create a line chart using the Date and Close columns
dataa= read_excel('Question 3.xlsx', sheet = 1)
ggplot(dataa, aes(x=Date, y=Close)) +
  geom_line() +
  labs(title="Line Chart of Stock Prices",
       x="Date",
       y="Closing Price") +
  theme(axis.title = element_text(color = "blue"))+
  theme(plot.title = element_text(color = "red"))


# 3b) Create the scatter plot
data1= read_excel('Question 3.xlsx', sheet = 2)
ggplot(data1, aes(x=Sales, y=Profit, color=Region)) +
  geom_point() +
  labs(title="Scatter Plot of Sales vs Profit",
       x="Sales",
       y="Profit")


#3c) attractive bar chart
d3 = read_excel('Question 3.xlsx', sheet = 3)
d3

# Create a data frame with the data
data <- data.frame(Product.Category = c("Technology", "Food and Beverages", "Books"),
                   Sales = c(108, 86, 120))

# Create the bar chart using ggplot2
ggplot(data, aes(x = Product.Category, y = Sales, fill = Product.Category)) + 
  geom_col() +
  geom_text(aes(label = Sales), position = position_dodge(width = 1), vjust = -0.25) +
  labs(title = "Sales by Product Category",
       x = "Product Category",
       y = "Sales (in Millions)",
       fill = "Product Category") +
  
  scale_y_continuous(limits = c(0, 120), breaks = seq(0, 120, by = 20)) +
  theme_bw() + 
  theme(legend.position = "top") +
  theme(plot.background = element_rect(fill = "#FFbb00")) +
  geom_hline(yintercept = 0, color = "grey50") +
  geom_vline(xintercept = 0, color = "grey50") +
  theme(axis.title = element_text(color = "blue"))+
  theme(plot.title = element_text(color = "red"))




#4a) linear regression
data2 = read.csv('advertising.csv')
# Fit linear regression model
model <- lm(formula = Sales ~ TV + Radio + Newspaper, data = data2)
summary(model)
#4b done in word doc

