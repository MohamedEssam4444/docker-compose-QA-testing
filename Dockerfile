# Build stage for React app
FROM mcr.microsoft.com/playwright:v1.36.1
COPY . .
RUN npm install
RUN echo $GITHUB_TOKEN
