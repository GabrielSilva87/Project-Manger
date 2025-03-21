#!/bin/bash

# Este script lista todos os projetos disponíveis

echo "Lista de Projetos:"
for project in projects/*; do
    if [ -d "$project" ]; then
        echo " - $(basename "$project")"
    fi
done