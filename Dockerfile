FROM sikalabs/hello-world-server:latest
COPY --from=sikalabs/slu:v0.52.0 /usr/local/bin/slu /usr/local/bin/slu
ENV PORT=80
ARG TEXT
ENV TEXT=${TEXT}
RUN slu random string > /random
