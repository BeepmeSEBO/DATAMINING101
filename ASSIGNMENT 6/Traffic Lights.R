Signal <- "Yellow"

Signals <- switch(tolower(Signal),
                  red = "Stop",
                  yellow = "Ready",
                  green = "Go",
                  "Invalid Signal")

print(Signals)