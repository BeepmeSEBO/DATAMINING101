input <- readline(prompt = "Enter Grade: ")

Meaning <- switch(tolower(input),
                  a = "Excellent", 
                  b = "Good",
                  c = "Average",
                  d = "Poor",
                  f = "Fail",
                  )

print(Meaning)