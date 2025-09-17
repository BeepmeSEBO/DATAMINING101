print("OPERATIONS: (1)Add, (2)Subtract, (3)Multiply, (4)Divide")
choice <- as.integer(readline(prompt = "Enter choice (1-4): "))

num1 <- as.numeric(readline(prompt = "Enter first number: "))
num2 <- as.numeric(readline(prompt = "Enter second number: "))

result <- switch(choice,
                 num1 + num2,
                 num1 - num2,
                 num1 * num2,
                 if (num2 != 0) num1 / num2 else "Error: Division by zero",
                 "Invalid choice")

print(paste("Result:", result))
