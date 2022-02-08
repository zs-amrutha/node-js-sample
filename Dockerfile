FROM        node
RUN         mkdir /app
WORKDIR     /app
COPY        . .
RUN         npm install
RUN         npm install cors --save
CMD         ["npm", "start"]
