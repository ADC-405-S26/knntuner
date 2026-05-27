## code to prepare `student_knn_data` dataset goes here

set.seed(405)
n <- 100
base_score <- 45

age <- sample(18:22, n, replace = TRUE)
study_hours <- sample(0:15, n, replace = TRUE)
score <- base_score + 4 * study_hours + rnorm(n, 0, 10)
score <- pmin(pmax(score, 0), 100)

student_knn_data <- data.frame(
  id = 1:n,
  age = age,
  study_hours = study_hours,
  score = score,
  private_tutoring = factor(sample(c("YES", "NO"), n, replace = TRUE)),
  pass = factor(ifelse(score >= 70, "YES", "NO"))
)

usethis::use_data(student_knn_data, overwrite = TRUE)
