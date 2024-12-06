# Use the official Golang image
FROM golang:1.23

WORKDIR /app

# Copy dependency files first
COPY go.mod go.sum ./

# Download dependencies
RUN go mod tidy

# Copy the source code
COPY . ./

# Build the application
RUN go build -o app main.go

# Expose the application port
EXPOSE 8000

# Run the application
CMD ["./app"]
