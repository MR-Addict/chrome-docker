# Chrome Docker ![badge](https://github.com/MR-Addict/chrome-docker/actions/workflows/docker.yml/badge.svg?branch=main)

## 1. Installed packages

| Name                 | Version |
| :------------------- | :------ |
| google-chrome-stable | latest  |
| node:22-slim         | latest  |

## 2. Build Image

```bash
docker build -t chrome .
```

## 3. Example

```yaml
FROM mraddict063/chrome
WORKDIR /app
COPY . .
RUN npm install -ci
RUN npm run build

CMD ["npm", "run", "start"]
```
