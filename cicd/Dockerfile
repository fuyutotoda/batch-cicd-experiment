FROM php:8.2-apache


# COPY ./html/ /var/www/html/

# ドキュメントルート作成
RUN mkdir -p /site/page1

# デフォルトのサイト設定を無効化
RUN a2dissite 000-default

# ページ1の設定を追加し有効化
COPY ./src/page1/ /etc/apache2/sites-available/
RUN a2ensite 001-site1

# html,phpファイル用意
COPY ./src/html/ /site/page1/


# 最初のディレクトリ指定
WORKDIR /etc/apache2
