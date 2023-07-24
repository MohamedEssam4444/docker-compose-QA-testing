# Build stage for React app
FROM mcr.microsoft.com/playwright:v1.36.1
RUN apt-get update && apt-get -y install libnss3 libatk-bridge2.0-0 libdrm-dev libxkbcommon-dev libgbm-dev libasound-dev libatspi2.0-0 libxshmfence-dev
COPY . .
RUN npm install 