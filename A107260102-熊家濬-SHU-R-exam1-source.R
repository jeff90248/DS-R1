#2020/11/20(五), 109學年第一學期 資料科學應用 R小考(1)
#學號：a107260102  姓名：熊家濬
#ex1.(a)
my.data <- read.csv("Calculus-score-A.csv")
xlsx_file <- "Calculus-score-B.xls"
excel_sheets(xlsx_file)
my.data1 <- read_excel(xlsx_file, sheet = "工作表1", na = "NA", skip = 1)
my.data[c(1:5, 38:42), ]
as.data.frame(head(my.data1, 5))
as.data.frame(tail(my.data1, 5)) 

#ex2.(a)
b <- c(123456)
g <- c(sample(LETTERS[1:5], 20, replace=T))

b <- c("A", "B", "C", "D", "E"　)
g <- c("1", "3", "2", "3", "1"　)

levels(b )
sat.f <- factor(b )
levels(sat.f)
levels(sat.f) <- c("1", "3", "2", "3", "1")
sat.f