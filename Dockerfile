FROM golang:1.18-alpine as livego
WORKDIR /livego

COPY go.mod .
RUN go mod download
COPY . .

RUN go build -o livego .

EXPOSE 8090
EXPOSE 1935
EXPOSE 7002
CMD ["./livego"]