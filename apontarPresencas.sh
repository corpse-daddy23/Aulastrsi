#!/bin/bash

# Nome do arquivo de saída para armazenar os nomes dos alunos presentes
arquivo_saida="nomes_presentes.txt"

# Inicializa um array para armazenar os nomes dos alunos presentes
alunos_presentes=()

# Loop para pedir o nome de cada aluno presente
while true; do
  echo "Digite o nome do aluno presente (ou 'fim' para encerrar):"
  read nome

  # Verifique se o usuário digitou "fim" para encerrar.
  if [ "$nome" == "fim" ]; then
    break
  fi

  # Adicione o nome à lista de alunos presentes
  alunos_presentes+=("$nome")
done

# Crie o arquivo de saída e adicione os nomes dos alunos presentes
echo "Nomes dos alunos presentes:" > "$arquivo_saida"
for aluno in "${alunos_presentes[@]}"; do
  echo "$aluno" >> "$arquivo_saida"
done

echo "Lista de presenças foi registrada em $arquivo_saida."
