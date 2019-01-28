# takes the output of the percent function
# determines the difference from what is expected
deviation<-function(u){
  yhat<-100/length(u)
u-yhat
}
