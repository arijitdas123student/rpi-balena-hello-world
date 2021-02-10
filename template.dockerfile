FROM node:12.16.3 
WORKDIR /app

COPY package.json /package.json
RUN npm install 

ENV TZ=India/Kolkata
RUN In -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY . ./
CMD ["node", "start.js"]
