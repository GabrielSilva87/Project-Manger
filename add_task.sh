#!/bin/bash

# Verifica se um projeto foi especificado
if [ -z "$1" ]; then
    echo "Uso: $0 <nome_do_projeto> <tarefa>"
    exit 1
fi

# Nome do projeto
PROJECT_NAME="$1"
shift

# Nome da tarefa
TASK="$*"

# Verifica se o diretório do projeto existe
if [ ! -d "projects/$PROJECT_NAME" ]; then
    echo "Projeto '$PROJECT_NAME' não encontrado."
    exit 1
fi

# Adiciona a tarefa ao arquivo tasks.txt
echo "$TASK" >> "projects/$PROJECT_NAME/tasks.txt"
echo "Tarefa adicionada ao projeto '$PROJECT_NAME'."