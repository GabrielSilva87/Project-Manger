#!/bin/bash

# Obter o nome do projeto e o número da tarefa como argumentos
PROJECT_NAME="$1"
TASK_NUMBER="$2"
TASK_FILE="projects/$PROJECT_NAME/tasks.txt"

# Verificar se os parâmetros foram fornecidos
if [[ -z "$PROJECT_NAME" || -z "$TASK_NUMBER" ]]; then
    echo "Uso: $0 <nome_do_projeto> <número_da_tarefa>"
    exit 1
fi

# Verificar se o arquivo de tarefas existe
if [[ -f "$TASK_FILE" ]]; then
    # Remover a tarefa especificada usando sed
    sed -i.bak "${TASK_NUMBER}d" "$TASK_FILE"
    echo "Tarefa número $TASK_NUMBER removida."
else
    echo "Projeto $PROJECT_NAME não encontrado."
fi