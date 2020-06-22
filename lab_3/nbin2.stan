data {
    real mu;
    real phi;
}

generated quantities {
    real nbin2 = neg_binomial_2_rng (mu, phi);
    real poisson2 = poisson_rng(mu);
}