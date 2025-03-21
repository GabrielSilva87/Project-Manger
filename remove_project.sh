#!/bin/bash

PROJECT_NAME="$1"
TASK_FILE="projects/$PROJECT_NAME/tasks.txt"

if [[ -z "$PROJECT_NAME" ]]; then
    echo "Uso: $0 <nome_do_projeto>"
    exit 1
fi

if [[ -f "$TASK_FILE" ]]; then
    echo "Tarefas para o projeto '$PROJECT_NAME':"
    cat "$TASK_FILE"
else
    echo "Projeto '$PROJECT_NAME' não encontrado."
fi