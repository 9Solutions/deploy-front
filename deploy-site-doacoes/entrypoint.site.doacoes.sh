#!/bin/sh

# Diretório onde o código será clonado
REPO_DIR="Site-Doacoes/"

# Verifica se o repositório já foi clonado
if [ -d "Site-Doacoes/.git" ]; then
    echo "Atualizando repositório existente..."
    cd "$REPO_DIR"
    git pull origin $GIT_BRANCH
else
    echo "Clonando repositório..."
    npm install react
    git clone -b $GIT_BRANCH $GIT_REPO
    cd "$REPO_DIR"
fi

npm i

npm start
