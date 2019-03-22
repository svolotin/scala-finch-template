FROM dryseawind/java-for-scala

COPY target/universal/finch-example-0.0.1-SNAPSHOT.zip /finch-example.zip
RUN set -e \
   && unzip finch-example.zip \
   && ln -s /finch-example-0.0.1-SNAPSHOT /application \
   && ln -s /finch-example-0.0.1-SNAPSHOT/bin/finch-example /application/bin/boot \
   && rm finch-example.zip

EXPOSE 9090
ENTRYPOINT bash /application/bin/boot
