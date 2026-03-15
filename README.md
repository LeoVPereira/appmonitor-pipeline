# AppMonitor Pipeline

Projeto prático de consolidação de conhecimentos de CI/CD, focado na prática de pipelines, segurança, diagnóstico e monitoramento automatizado.

## O papel do Git na Entrega Contínua (Continuous Delivery)
O Git atua como a espinha dorsal da entrega contínua, servindo como a única fonte de verdade (Single Source of Truth) para o código e para a infraestrutura. Ele permite que qualquer alteração seja rastreada, revisada e revertida, garantindo que o pipeline de CI/CD tenha gatilhos confiáveis (como um push ou pull request) para iniciar processos automatizados de forma segura e consistente.

## A importância de Branches e Tags
* **Branches:** Permitem o desenvolvimento paralelo de novas funcionalidades, correções ou infraestrutura (como a branch `ci/setup`) sem afetar o código principal em produção (a branch `main`). Elas isolam as alterações para testes antes da integração final.
* **Tags:** Funcionam como marcações imutáveis de um momento específico do repositório (ex: `v0.1.0`). No contexto de CI/CD, as tags são essenciais para versionar entregas, rastrear exatamente qual versão está rodando em produção e facilitar rollbacks imediatos em caso de falhas críticas.