# ベースイメージとしてNginxの公式イメージを使用
FROM nginx:alpine

# Nginxの設定ファイルを削除
RUN rm /etc/nginx/conf.d/default.conf

# 新しいNginxの設定ファイルを追加
COPY nginx.conf /etc/nginx/conf.d/

# カレントディレクトリの内容をNginxのwebrootディレクトリにコピー
COPY . /usr/share/nginx/html

# ポート80を開放
EXPOSE 80
