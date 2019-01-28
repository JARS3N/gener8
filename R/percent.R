# look at the percent of elements represented
percent<-function(u){
  unlists<-table(unlist(lapply(u,unlist)))
 100* unlists/sum(unlists)
}
