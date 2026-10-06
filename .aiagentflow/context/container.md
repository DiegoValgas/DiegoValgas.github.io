# Especificação do Ambiente Docker

## Requisitos básicos
- Usar `ubuntu:26.04` como imagem base
- Instalação de nodejs e npm em suas versões LTS mais recentes

## Regras do Dockerfile
- Usar `COPY` em vez de `ADD` (exceto quando precisar de URL remota ou descompactação automática)
- Combinar instruções `RUN` com `&&` e limpar cache no final
- Adicionar LABEL com informações do projeto
- Fixar a imagem base em digest para reprodutibilidade

## Requisitos do Compose
- Incluir serviço da aplicação e dependências necessárias

## Entregáveis
1. `Dockerfile`
2. `docker-compose.yml`