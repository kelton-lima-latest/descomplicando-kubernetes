# Day 02 - Pods e Recursos no Kubernetes

Neste segundo dia, aprendemos sobre:
- O que é um Pod no Kubernetes
- Comandos básicos com `kubectl get pods` e `kubectl describe pods`
- Utilização do `kubectl attach` e `kubectl exec`
- Criação de Pods multicontainers através de manifestos
- Limitação de consumo de recursos de CPU e memória
- Configuração de volumes do tipo `EmptyDir`

## Arquivos

- `pod-multicontainer.yaml`: Exemplo de Pod com múltiplos containers
- `pod-limitado.yaml`: Exemplo de Pod com limites de CPU e memória
- `pod-volume-emptydir.yaml`: Exemplo de Pod com volume `EmptyDir`

## Como Usar

Criar um Pod multicontainer:
```bash
kubectl apply -f pod-multicontainer.yaml
```

Criar um Pod limites de CPU e memória:
```bash
kubectl apply -f pod-limitado.yaml
```

Criar um Pod com volume EmptyDir:
```bash
kubectl apply -f pod-volume-emptydir.yaml
