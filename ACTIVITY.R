USERS <- read.csv("C:/Users/sabad/OneDrive/Desktop/DM101/ACTIVITY.csv")
print(USERS)



mean <- mean(USERS$AGE)
print(mean)

#Display the names and gender
display = subset(USERS, select = c(NAME, GENDER))
print(display)

#Display all age
age = subset(USERS, select = (AGE))
print(age)USERS <- read.csv("C:/Users/sabad/OneDrive/Desktop/DM101/ACTIVITY.csv")
print(USERS)



mean <- mean(USERS$AGE)
print(mean)

#Display the names and gender
cat("\n")
display = subset(USERS, select = c(NAME, GENDER))
print(display)

#Display all age
cat("\n")
age = subset(USERS, select = (AGE))
print(age)

#Display all male 
cat("\n")
gender = subset(USERS, GENDER == "MALE", select = c(NAME, GENDER))
print(gender)

#TXT
cat("TXT", "\n")
TXT = read.table("C:/Users/sabad/OneDrive/Desktop/DM101/ACTIVITY.txt", header=TRUE)
print(TXT)

#mean
cat("\n")
means <- as.numeric(mean(TXT$SCORE))
print(means)

#print all
cat("\n")
all = subset(TXT, select = c(NAME, GAME, SCORE))
print(all)

#print name

cat("\n")
NAMES = subset(TXT, select = (NAME))
print(NAMES)

#print game
cat("\n")
GAMES = subset(TXT, select = (GAME))
print(GAMES)

#display bb
cat("\n")
GEYM = subset(TXT, GAME == "BB")
print(GEYM)

cat("\n")
GAYM = subset(TXT, GAME == "BB", select =(GAME))
print(GAYM)



#Display all male 
gender = subset(USERS, GENDER == "MALE", select = c(NAME, GENDER))
print(gender)

#TXT
TXT = read.table("C:/Users/sabad/OneDrive/Desktop/DM101/ACTIVITY.txt", header=TRUE)
print(TXT)

#mean
means <- as.numeric(mean(TXT$SCORE))
print(means)

#print all
all = subset(TXT, select = c(NAME, GAME, SCORE))
print(all)

#print name
NAMES = subset(TXT, select = (NAME))
print(NAMES)

#print game
GAMES = subset(TXT, select = (GAME))
print(GAMES)

#display bb
GEYM = subset(TXT, GAME == "BB")
print(GEYM)

GAYM = subset(TXT, GAME == "BB", select =)
print(GAYM)

