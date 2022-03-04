FROM golang:latest AS builder

WORKDIR /app

COPY hello-world.go .

RUN go build -o ./hello-world hello-world.go

FROM scratch  

COPY --from=builder /app/hello-world /app/hello-world

CMD ["/app/hello-world"]



