data {
    real alpha;
    real beta;
}

generated quantities {
    real y = inv_gamma_rng (alpha, beta);
}