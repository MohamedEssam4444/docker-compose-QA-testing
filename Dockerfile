# Build stage for React app
FROM node:14 AS react-builder
WORKDIR /app
COPY ../react-repo1/package*.json ./
RUN npm install
COPY ../react-repo1 .
RUN npm run build

# Production stage for Playwright tests with React app
FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
COPY --from=react-builder /app/build ./build
CMD ["npm", "test"]
