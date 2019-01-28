rss_set<-function(u){
  n1<-length(u)
  n2<-length(u[[1]])
  n3<-length(u[[1]][[1]])
  expected<-n2*n3
  unlists<-table(unlist(lapply(u,unlist)))
  sqrt(sum(unlists^2))
}
