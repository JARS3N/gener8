blocks<- function(vec, x, size, n) {
  prob_vec <- rep(1 / length(vec), length(vec))
  prob_vec[which(vec == x)] <-  n* 1.5
  samples_list <-
    lapply(1:ceiling(n * 1.5), function(u) {
      sample(vec, size, prob = prob_vec)
    })
  unique(samples_list)
}