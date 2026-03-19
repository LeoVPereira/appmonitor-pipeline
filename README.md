# AppMonitor Pipeline

Projeto prático de consolidação de conhecimentos de CI/CD, focado na prática de pipelines, segurança, diagnóstico e monitoramento automatizado.

## O papel do Git na Entrega Contínua (Continuous Delivery)
O Git atua como a espinha dorsal da entrega contínua, servindo como a única fonte de verdade (Single Source of Truth) para o código e para a infraestrutura. Ele permite que qualquer alteração seja rastreada, revisada e revertida, garantindo que o pipeline de CI/CD tenha gatilhos confiáveis (como um push ou pull request) para iniciar processos automatizados de forma segura e consistente.

## A importância de Branches e Tags
* **Branches:** Permitem o desenvolvimento paralelo de novas funcionalidades, correções ou infraestrutura (como a branch `ci/setup`) sem afetar o código principal em produção (a branch `main`). Elas isolam as alterações para testes antes da integração final.
* **Tags:** Funcionam como marcações imutáveis de um momento específico do repositório (ex: `v0.1.0`). No contexto de CI/CD, as tags são essenciais para versionar entregas, rastrear exatamente qual versão está rodando em produção e facilitar rollbacks imediatos em caso de falhas críticas.

## Contextos de Variáveis no GitHub Actions

O gerenciamento de configurações no GitHub Actions é dividido em diferentes contextos de acordo com a sensibilidade e o escopo da informação:

* **Contexto `env` (Ambiente):** Usado para definir variáveis diretamente dentro do arquivo de workflow (`.yml`). Podem ter escopo global (para todo o workflow), de job ou de step. São ideais para valores não sensíveis e específicos daquela execução (ex: caminhos de pastas, flags de compilação).
* **Contexto `vars` (Variáveis de Repositório):** Usado para armazenar configurações não sensíveis a nível de repositório, ambiente ou organização (configuradas pela interface do GitHub). Permitem reutilizar o mesmo valor em vários workflows diferentes sem precisar alterar o código. Ex: `APP_ENV`, URLs de APIs não críticas.
* **Contexto `secrets` (Segredos):** Funciona como as variáveis de repositório, mas os valores são criptografados. É o local obrigatório para armazenar dados sensíveis, como senhas, tokens de acesso e chaves de API. O GitHub Actions tenta ativamente ocultar (mascarar com `***`) o valor dos secrets nos logs de execução para evitar vazamentos.

## Status do Pipeline
[![CI Pipeline](https://img.shields.io/github/actions/workflow/status/LeoVPereira/appmonitor-pipeline/ci.yml?branch=main)](https://github.com/SEU_USUARIO_AQUI/appmonitor-pipeline/actions)

## Observabilidade: Logs e Summaries em Pipelines
A capacidade de depurar rapidamente é essencial em pipelines de integração e entrega contínua.
* **Logs de Debug:** A ativação de logs detalhados (via `ACTIONS_STEP_DEBUG=true`) permite que os engenheiros analisem o tráfego de rede, a resolução de variáveis e os processos internos do runner que normalmente ficam ocultos. Isso é crucial para entender falhas silenciosas ou comportamentos inesperados do ambiente.
* **Job Summaries:** Fornecem um relatório visual, formatado em Markdown, diretamente na página de resumo da execução. Em vez de obrigar o desenvolvedor a ler milhares de linhas de log de terminal, o summary destaca imediatamente os resultados chave, links de artefatos e métricas (como a branch testada e o sistema operacional), agilizando a tomada de decisão.