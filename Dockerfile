FROM golang:1.16.3-alpine

WORKDIR /app
COPY go.sum go.mod ./
RUN go mod download 
COPY *.go .
RUN go build -o /activity-generator

WORKDIR /
CMD ["/activity-generator"]