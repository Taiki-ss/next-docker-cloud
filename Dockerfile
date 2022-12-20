FROM node:16

# ワーキングディレクトリを設定
WORKDIR /app

COPY ./src/package.json ./
COPY ./src/package-lock.json ./

# npm パッケージをインストール
RUN npm ci

# コンテナを起動するときに実行するコマンド
# CMD ["npm", "run dev"]