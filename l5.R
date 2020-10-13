a <- list(
  name="Automobile",
  exat="ехает", 
  signal="biip-biiip!!!!",
  union=T
)
class(a) <- "Auto"

attributes(a)

a 

print.Auto <- function(wrkr){
  cat(wrkr$name, "\n")
  cat("Круто", a$exat, "\n")
  cat("и сигналит:", a$signal, "\n")
  cat(wrkr$toplivo, "\n")
}

t<-list(
  name="Tesla",
  toplivo="питается электричеством"
)
class(t)<-c("toplivo", "Auto")


l<-list(
  name="Lamba",
  toplivo="кушает много бензина"
)
class(l)<-c("toplivo", "Auto")


d<-list(
  name="Дизельная машина",
  toplivo="из гурманов: питается исключительно соляркой"
)
class(d)<-c("toplivo", "Auto")

choice<-function(){
  v <- readline("О какой машине вы хотите узнать(Tesla - t, Lamba - l, Дизельная машина - d)? ")
  if(v == "Tesla") print.Auto(t)
  if(v == "Lamba") print.Auto(l)
  if(v == "Дизельная машина") print.Auto(d)
}
choice()
