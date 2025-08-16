# Day 01 - Introdução ao Kubernetes e Kind

Neste primeiro dia, aprendemos sobre:
- Conceitos básicos do Kubernetes
- Configuração de clusters locais usando Kind
- Diferenças entre nós control-plane e workers

## Arquivos

- `kind/kind-cluster.yaml`: Configuração básica de cluster com 1 control-plane e 1 worker
- `desafio/meu-primeiro-cluster.yaml`: Configuração de cluster desafio com 1 control-plane e 3 workers

## Como Usar

Para criar um cluster com o Kind:

```bash
kind create cluster --config kind/kind-cluster.yaml

```

## Desafio
Criar um cluster com:

1 nó control-plane (gerenciamento)

3 nós workers (execução de cargas)
```bash
kind create cluster --config desafio/meu-primeiro-cluster.yaml