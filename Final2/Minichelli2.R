base<-read.csv('baseball_greats.csv',header=TRUE)
------------
ruth<-base%>%
  filter(playerID=='ruthba01')%>%
  select(yearID,HR)

ggplot()+
  geom_line(data=ruth,aes(x=yearID,y=HR))
-----------
aaron<-base%>%
  filter(playerID=='aaronha01')%>%
  select(yearID,HR)

ggplot()+
  geom_line(data=aaron,aes(x=yearID,y=HR))
-----------
mays<-base%>%
  filter(playerID=='mayswi01')%>%
  select(yearID,HR)

ggplot()+
  geom_line(data=mays,aes(x=yearID,y=HR))
-----------
bonds<-base%>%
  filter(playerID=='bondsba01')%>%
  select(yearID,HR)

ggplot()+
  geom_line(data=bonds,aes(x=yearID,y=HR))
-----------
compare<-rbind(aaron, bonds, mays, ruth)

ggplot()+
  geom_line(data=compare,aes(x=yearID,y=HR))
  facet_wrap(~HR,scales='free_y')+
  
       