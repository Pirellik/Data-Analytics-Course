data {
    real alpha;
    real beta;
}

generated quantities {
    real nbin = neg_binomial_rng (alpha, beta);
    real poisson = poisson_rng(alpha / beta);
}