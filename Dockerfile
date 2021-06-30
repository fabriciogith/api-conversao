FROM ubuntu:20.10
WORKDIR /app
COPY package*.json ./
RUN apt-get update --yes
RUN apt-get install npm --yes
COPY . . 
EXPOSE 8080
CMD ["node", "index.js"]