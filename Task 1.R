data=read.csv("C:/Users/USER1/Desktop/scores.csv")
data
a=data$Hours
b=data$Scores
model=lm(b~a)
summary(model)
predict(model,data.frame(a=9.25))
library(ggplot2)
ggplot(data,aes(x = a, y = b)) + geom_point() +geom_smooth(method = "lm")+ labs(title = "Student Percentage vs Study Hours",
        x = "Study Hours",
        y = "Student Percentage")
res=rstandard(model)
plot(a, res, ylab="Residuals", xlab="Study hours", main="Residual Plot Of percentage marks vs Study Hours")
abline(0,0)
