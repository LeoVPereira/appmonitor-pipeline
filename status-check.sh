#!/bin/bash
# Script simples para simular a monitoração de uma aplicação web

echo "Iniciando verificação de status da aplicação AppMonitor..."

# Simulação de um retorno HTTP 200 (OK)
HTTP_STATUS=200

if [ "$HTTP_STATUS" -eq 200 ]; then
  echo "Sucesso: Aplicação está online (Status $HTTP_STATUS)."
  exit 0
else
  echo "Erro: Aplicação fora do ar ou com instabilidade."
  exit 1
fi