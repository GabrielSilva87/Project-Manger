#!/bin/bash

PROJECT_NAME="$1"
PROJECT_DIR="projects/$PROJECT_NAME"

if [[ -z "$PROJECT_NAME" ]]; then
    echo "Uso: $0 <nome_do_projeto>"
    exit 1
fi

mkdir -p "$PROJECT_DIR"
touch "$PROJECT_DIR/tasks.txt"
touch "$PROJECT_DIR/notes.txt"

echo "Projeto '$PROJECT_NAME' criado com sucesso."