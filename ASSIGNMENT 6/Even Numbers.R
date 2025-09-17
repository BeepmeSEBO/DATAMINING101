nums <- c(2,4,5,8)

if(all(nums %% 2 == 0)){
  print("All nums are even numbers.")
}else if (any(nums %% 2 == 0)){
  print("There is and even number")
}
  