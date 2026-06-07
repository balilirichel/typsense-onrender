FROM typesense/typesense:27.1

RUN mkdir -p /typesense-data

EXPOSE 80

CMD ["sh", "-c", "/opt/typesense-server --data-dir=/typesense-data --api-key=${TYPESENSE_API_KEY} --listen-port=80 --enable-cors"]
