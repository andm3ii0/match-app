# Imagem base
FROM node:20-alpine

# Diretório de trabalho
WORKDIR /usr/src/app

# Copia arquivos do projeto
COPY ../../backend/package*.json ./

# Instala dependências
RUN npm install

# Copia o resto do código
COPY ../../backend .

# Compila o código TypeScript
RUN npm run build

# Expõe a porta padrão do NestJS
EXPOSE 3000

# Comando de inicialização
CMD ["npm", "run", "start:prod"]
