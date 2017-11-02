library(stringr)
setwd("/Users/xiwenchen/Dropbox/DSO 545 statistical computing and data visualization/week 11")
email = readRDS("email.rds")

#1
print("\"")
#\ 说明特殊符号没有特殊意义，转意。
cat("\"")
#cat去掉了两边的“” 只显示中间的
cat("ab\ncd")
#换行是\n
cat("a\tb\nc\td")
#\t 约等于 tab

#2
cat(":-\\")
cat("(^_^\")")
cat("@_\'-\'")
cat("\\m/")

#3
?str_locate
fruit <- c("apple", "banana", "pear", "pineapple")
str_locate(fruit, "$")
str_locate(fruit, "a")
str_locate(fruit, c("a", "b", "p", "p"))

#4
s = c("great","fantastic","super")
str_locate(s,"a")#告诉你a在哪里，从哪里开始，从哪里结束
str_locate_all(s, "a")#告诉你所有的a在哪里

occurance = str_locate_all(s, "a")

occurance[[1]]
#occurance 的第一个元素是一个dataset也就是1，1。第二个元素是2，2
#                                                           5，5

occurance[[1]][1]#这样就可以找到第一个dataset的第一个元素

#5
str_sub("testing", start = 1, end = 3)#取出testing第一个元素到第三个元素
str_sub("testing", end = 3)
str_sub("testing", start = 4)
str_sub("testing", start = 4, end = str_length("testing"))#end = str_length 在你有很长的元素的时候，就不用数了

length("testing")
#cf
nchar("testing")

#6
input = c("abc","degf","edede","wwwse")
str_sub(input, c(2,3))#让第一个character从第二个开始，让第二个character从第三个开始

#7
cat(email[1])
str_locate(email[1], "\n\n")
#只有一个\n只是一个回车，有两个\n\n就是一个空行，就可以分离body和header

#8
header1 = str_sub(email[1], start = 1, end = 843)#第842，843，844...都是空行
body1 = str_sub(email[1], start = 842, end = str_length(email[1]))

#9
str_split(header1,"\n")#按行分

#10
breaks = str_locate(email, "\n\n")
header = str_sub(email,1, breaks[,1])
body = str_sub(email, start = breaks[,2])





