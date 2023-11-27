Esse aplicação foi obtida no site de documentação do docker atraves do link: https://docs.docker.com/get-started/02_our_app/

Esta aplicação foi utilizada o NODE12

# Comandos utilizados nessa aplicação DEMO

## Comando para buildar a aplicação
docker build -t app .

## Comando para buildar a aplicação colocando tag na imagem
docker build -t app:v1.0.0 .

## Added Tag a imageo
docker image tag app:latest app:v1.0.0

## Apagar imagem tageada
docker image remove app:v1.0.0    

## Para subir a imagem ao dockerHub
docker push <NOME DO REPOSITORIO>:<TAG VERSION>

## Vincular porta do computador que irá enviar e escutar no docker
docker run -d -p 80:3000   
docker run -d -p 80:3000 --name <NOME DO CONTAINER> <ANOME DA APLICACAO>:<VERSAO>

## Parando um container
docker stop <NOME DO CONTAINER>

## Criando volume
docker volume create <NOME DO VOLUME>

## Verificar o que tem no volume
docker volume inspect <NOME DO VOLUME>

## Associar o volume a imagem
docker run -d -p 80:3000 --name kiwi -v app-dados:/app/dados app:v1
