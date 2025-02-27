FROM node:16

WORKDIR /app
COPY app.js .
CMD ["node", "app.js"]

EXPOSE 3000