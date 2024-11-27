FROM golang:1.23-bookworm as BUILDER

WORKDIR /app

ADD . .

RUN CGO_ENABLED=0 go build -cover -o ./bin/go-runtime-info cmd/root/main.go

FROM ubuntu:24.04

COPY --from=BUILDER /app/bin/go-runtime-info /usr/bin/go-runtime-info

ENTRYPOINT ["go-runtime-info"]
