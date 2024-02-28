#' ---
#' title: "Class-04"
#' author: "Mina Wu"
#' date: "January 19, 2024"
#'---

#This is just a text file
x<- 1:50 
plot(x,sin(x))
#type l is line
plot(x,sin(x),typ="l")
#col is color
plot(x,sin(x),typ="l", col="blue")
#lwd makes the lines thicker
plot(x,sin(x),typ="l", col="blue", lwd=2)
plot(x,sin(x),typ="l", col="blue", lwd=2, xlab="hello")



