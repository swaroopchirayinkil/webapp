FROM golang:1.12.0-alpine3.9
RUN mkdir /app
ADD . /app
WORKDIR /app
#RUN go build -o main .
RUN CGO_ENABLED="0" go build -ldflags="-s -w" -o app main.go
CMD ["./app -listen 0.0.0.0:80"]
