FROM golang:1.20

# Set destination for COPY
WORKDIR /estudos

# Download Go modules
COPY . ./
RUN go mod download

# Build
RUN CGO_ENABLED=1 GOOS=linux go build -o /go-blog

EXPOSE 8005
# Run
CMD ["/go-blog"]