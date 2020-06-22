data {
    real alpha;
    real beta;
}

generated quantities {
    real y = gamma_rng (alpha, beta);
}