#Effect of two drugs on sleep of the same 10 people

#H0: Mean difference in extra sleep between Drug 1 and Drug 2 is 0.
#H1: Mean difference is not 0 (two-sided).

data(sleep)
str(sleep)

# Paired t test: Drug 1 vs Drug 2
t.test(
  sleep$extra[sleep$group == 1],
  sleep$extra[sleep$group == 2],
  paired = TRUE
)




