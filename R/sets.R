sets<-function(elements,size,blocksize,rssreps=1000){
  #elements  vector to split and create blocks of samples for
  # per line sample size
  # blocks: number of lines sampled per element
  # rss to find best distribution of elements
  all<-lapply(elements,function(u)(blocks(elements,u,size,blocksize)))
  replicates<-lapply(1:rssreps,function(i){unique_sets(all,length(elements),blocksize)})
  rss<-unlist(lapply(replicates,rss_set))
  replicates[rss==min(rss)][[1]]
}
