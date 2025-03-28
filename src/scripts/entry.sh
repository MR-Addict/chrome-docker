apt-get update
apt-get install -y fontconfig && fc-cache -vf && \
apt-get install gnupg wget -y && \

wget --quiet --output-document=- https://dl-ssl.google.com/linux/linux_signing_key.pub | gpg --dearmor > /etc/apt/trusted.gpg.d/google-archive.gpg && \

echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list && \

apt-get update && \
apt-get install google-chrome-stable -y --no-install-recommends && \
rm -rf /var/lib/apt/lists/*
