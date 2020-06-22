data {
  vector[4] mu;
  matrix[4,4] sigma;
}

generated quantities {
    vector[4] y = multi_normal_rng(mu,sigma);
}