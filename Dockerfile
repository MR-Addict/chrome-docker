FROM node:22-slim

WORKDIR /app
COPY src/data/fonts/* /usr/share/fonts/
COPY src/scripts/entry.sh .

RUN chmod +x entry.sh && ./entry.sh
