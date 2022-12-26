FROM squidfunk/mkdocs-material:8.5.11
LABEL maintainer="Michael Hausenblas, hausenbl@amazon.com"

RUN pip install --upgrade pip

COPY action.sh /action.sh

RUN apk add --no-cache bash && chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
