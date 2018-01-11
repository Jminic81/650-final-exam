gutenberg_works(str_detect(title,'Heart of Darkness'))

heart<-gutenberg_download(219)

heart_words<-unnest_tokens(heart,word,text)

heart_words$gutenberg_id<-NULL

heart_words<-heart_words%>%
  filter(!(word %in% stop_words$word))

word_freq<-heart_words%>%
  group_by(word)%>%
  summarize(count=n())

wordcloud2(word_freq)
