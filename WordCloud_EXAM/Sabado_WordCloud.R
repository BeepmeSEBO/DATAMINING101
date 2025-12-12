# Packages allowed: tm, SnowballC, wordcloud, RColorBrewer

library(tm)
library(SnowballC)
library(wordcloud)
library(RColorBrewer)

# ---------- Part 1 ----------
setwd("C:/Users/sabad/OneDrive/Desktop/DM101/WordCloud_EXAM")  # adjust path as needed
feedback <- readLines("Feedback.txt.txt", encoding = "UTF-8", warn = FALSE)

feedback <- feedback[nchar(trimws(feedback)) > 0]

corpus <- VCorpus(VectorSource(feedback))

corpus <- tm_map(corpus, content_transformer(tolower))                   
corpus <- tm_map(corpus, removeNumbers)                                     
corpus <- tm_map(corpus, removePunctuation)                               
corpus <- tm_map(corpus, removeWords, stopwords("english"))                
corpus <- tm_map(corpus, stripWhitespace)                              
corpus <- tm_map(corpus, stemDocument, language = "english") 

# ---------- Part 2 ----------
tdm <- TermDocumentMatrix(corpus)
m <- as.matrix(tdm)
word_freq <- sort(rowSums(m), decreasing = TRUE)
df <- data.frame(word = names(word_freq), freq = word_freq)

top10 <- head(df, 10)
print("Top 10 Most Frequent Words:")
print(top10)

png("top10_freq.png", width = 800, height = 600)
par(mar = c(10,5,4,2) + 0.1)
barplot(height = top10$freq, names.arg = top10$word, las = 2,
        main = "Top 10 Most Frequent Words", ylab = "Frequency", cex.names = 0.9)
dev.off()

interpretation <- c(
  "Interpretation:",
  paste0("The top words (", paste(top10$word, collapse = ", "), ") highlight common themes in feedback."),
  "Many comments relate to staff, service quality, and wait times, indicating key customer concerns.",
  "Restaurant feedback emphasizes food and ambiance; government-office feedback emphasizes processes and efficiency.",
  "Insights from these frequent words can guide improvements in staff performance and queue management."
)
writeLines(interpretation, con = "interpretation.txt")

# ---------- Part 3 ----------
freq_for_wc <- df[df$freq >= 2, ]
if (nrow(freq_for_wc) < 1) freq_for_wc <- head(df, 50)

png("wordcloud_exam.png", width = 800, height = 600)
set.seed(1126)
pal <- brewer.pal(8, "Dark2")
wordcloud(words = freq_for_wc$word,
          freq = freq_for_wc$freq,
          min.freq = 2,
          max.words = 1000,
          random.order = FALSE,
          rot.per = 0.35,
          scale = c(4, 0.5),
          colors = pal)
dev.off()

# ---------- Part 4 ----------
df_rare <- df[df$freq == 1, ]
if (nrow(df_rare) >= 5) {
  df_rare <- head(df_rare, 5)
} else {
  df_rare <- tail(df, 5)
}

png("wordcloud_rare.png", width = 800, height = 600)
set.seed(709)
wordcloud(words = df_rare$word,
          freq = df_rare$freq,
          min.freq = 1,
          max.words = 5,
          random.order = FALSE,
          rot.per = 0.1,
          scale = c(3, 0.7),
          colors = pal)
dev.off()

message("All outputs created: wordcloud_exam.png, wordcloud_rare.png, top10_freq.png, interpretation.txt")
