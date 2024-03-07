# Use uma imagem base que tenha Go instalado
FROM golang:alpine

# Desativar o suporte a módulos Go
ENV GO111MODULE=off

# Copie o código fonte da sua aplicação para dentro do container
COPY . /app

# Defina o diretório de trabalho dentro do container
WORKDIR /app

# Compile a aplicação
RUN go build -o main .

# Comando padrão para executar a aplicação
CMD ["./main"]
