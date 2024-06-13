FROM debian
RUN apt-get update -y && apt-get install -y \
    apache2 \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
COPY ./rtaparay.github.io /var/www/html/
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

#docker build -t cv_raul/web:v1 .
# docker run -p 80:80 web