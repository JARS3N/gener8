unique_sets <-
  function(sampledlist, nelements, stratsize) {
    nL <- 0
    sample_all <- NULL
    start <- Sys.time()
    while (nL < nelements * stratsize) {
      sample_all <- lapply(sampledlist, sample, size = stratsize)
      nL <- length(unique(Reduce('append', sample_all)))
    }
    sample_all
  }
