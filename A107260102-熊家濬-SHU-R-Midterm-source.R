#2020/12/11(五), 109學年第一學期 資料科學應用 R期中考

#學號:A107260102       姓名:熊家濬
#ex1(a)
study(x,y)
data.frame(x,y, U , Tuition, Fit)
list(Eng.hr=x, Comp.hr=y, Tuition=Tuition, U=U )
study <- function(x,y){
  #  x <-c(13:17)
  #  y <-c(8:12)
  a <-matrix(0, 25, 5)
  for(x in 13:17){
     for(y in 8:12){
       U <- x*(0.5)*y*(0.5)
       Tuition <- 400*x+600*y
       fit <- ifelse(Tuition <= 12000, "*", "")
       cat(x,y, Tuition, U)
     }
      cat("\n")
  }
}


library(readxl)
readxl_example()
#ex2(a)
xlsx_file<- "Score-109.xlsx"
excel_sheets(xlsx_file)
mydata2<-read_excel(xlsx_file,sheet="score",na="NA",skip=1)
x<-as.data.frame(head(mydata2, 5))
y<-as.data.frame(tail(mydata2, 5))
x
y

#ex2(b)
mydata2[is.na(mydata2)] <- 0
ss <- which(mydata2[,2] < 60 & mydata2[,3] < 60)
mydata2[ss,]

# ex2(c)
x1 <- sum(mydata2[,2])/75
y1 <- sum(mydata2[,3])/75
my.cor <-for(i in 1:75){
  k <- (mydata2[i,2] - x1)*(mydata2[i,3] - y1)
  g <- (mydata2[i,2] - x1)*2*0.5
  m <- (mydata2[i,3] - y1)*2*0.5
  p <- k/(g*m)
  p
}


# ex2(d)
cor(mydata2[,2:3])




