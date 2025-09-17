print("SIGNALS: Red, Yellow, Green")
Signal <- readline(prompt = "Enter Signal: ")

Signals <- switch(tolower(Signal),
                  red = "Stop",
                  yellow = "Ready",
                  green = "Go",
                  "Invalid Signal")

print(Signals)