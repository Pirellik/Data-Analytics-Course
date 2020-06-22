data {
  real freedom;
  real mu;
  real sigma;
}

generated quantities {
    real y = student_t_rng(freedom, mu,sigma);
}