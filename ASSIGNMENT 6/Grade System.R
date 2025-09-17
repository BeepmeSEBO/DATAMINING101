print("GRADES: A, B, C, D, F")
input <- readline(prompt = "Enter Grade: ")

Meaning <- switch(tolower(input),
                  a = "Excellent", 
                  b = "Good",
                  c = "Average",
                  d = "Poor",
                  f = "Fail",
                  "Invalid Input"
                  )

print(Meaning)