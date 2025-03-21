#!/bin/bash

# Este script lista todas as tarefas de um projeto específico

if [ $# -eq 0 ]; then
    echo "Uso: $0 <nome_do_projeto>"
    exit 1
fi

PROJECT_NAME=$1
TASKS_FILE="projects/$PROJECT_NAME/tasks.txt"

if [ -f "$TASKS_FILE" ]; then
    echo "Tarefas para o projeto $PROJECT_NAME:"
    cat "$TASKS_FILE"
else
    echo "O projeto '$PROJECT_NAME' não existe ou não tem tarefas."
fi