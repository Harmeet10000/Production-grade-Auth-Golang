FROM golang:1.22-alpine AS builder
WORKDIR /app
COPY . .
RUN go mod download && go build -o auth-api server.go

FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/auth-api ./auth-api
COPY certs/ certs/
EXPOSE 8000
CMD ["./auth-api"]
