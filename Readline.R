name <- readline(prompt = "Enter your name: ")
cat("Hello, ", name,"!\n")

age <- as.integer(readline(prompt = "Enter you age: "))
cat("Next year you will be", age+1, "Years old.")

num1 <- as.numeric(readline(prompt = "Enter first number: "))
num2 <- as.numeric(readline(prompt = "Enter second number: "))

sum <- num1 + num2
cat("The sum is",  sum)

try <- scan()