# build stage
ARG GO_VERSION=1.10.1
FROM golang:${GO_VERSION}-alpine AS build-stage
WORKDIR /Temp
COPY ./ /Temp
RUN go build -o main main.go

# production stage
FROM alpine:3.8
WORKDIR /root/
COPY --from=build-stage /Temp/main .
EXPOSE 8080
CMD ["./main"]