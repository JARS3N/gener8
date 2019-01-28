sets<-function(elements,size,blocksize,rssreps=1000){
  #elements  vector to split and create blocks of samples for
  # per line sample size
  # blocks: number of lines sampled per element
  # rss to find best distribution of elements
  all<-lapply(elements,function(u)(blocks(elements,u,size,blocksize)))
  replicates<-lapply(1:rssreps,function(i){unique_sets(all,length(elements),blocksize)})
  rng<-unlist(lapply(replicates,function(u){diff(range(table(unlist(u))))}))
  rss<-unlist(lapply(replicates,function(u){
    x<-table(unlist(u))-(size*blocksize)
    x2<- sapply(x,function(u)u^2)
    sqrt(sum(x2))
  }))
  replicates[rss==min(rss)][[1]]
}
