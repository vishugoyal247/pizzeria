FROM node:18.13.0

WORKDIR /app
COPY package.json ./
RUN npm install
COPY . . 
ENV MONGODB_URI=mongodb://127.0.0.1:27017/hello
ENV PORT=8080
ENV SECRET=passwordsecret

EXPOSE 8080
CMD ["npm", "run"]