FROM ubuntu:latest
LABEL Name=trabajopracticofinal Version=0.0.1
COPY ["blankLinesCounter.sh","findNames.sh", "menu.sh","statsSentences.sh","statsUsageWords.sh","statsWords.sh","texto.txt","./"]
RUN apt update
CMD [ "bash", "menu.sh"]
