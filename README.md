# Projeto IaC – Gerenciamento de Usuários, Grupos e Permissões no Linux

## Descrição

Este projeto implementa um **Infrastructure as Code (IaC)** em **Shell Script** para automatizar a criação e configuração de usuários, grupos, diretórios e permissões em um sistema Linux.

O objetivo é garantir:
- Padronização
- Segurança
- Reprodutibilidade
- Facilidade de auditoria

Todo o controle de acesso é feito **via grupos**, mantendo o usuário `root` como dono de todos os diretórios, conforme boas práticas de administração Linux.

---

## Estrutura Criada

### Diretórios

```text
/projeto_iac
├── public
├── adm
├── ven
└── sec
```
## Método de Execução

### Pré-requisitos
- Sistema Linux
- Usuário com privilégios de root
- Bash
- OpenSSL instalado

### Execução do Script

```bash
chmod +x script.sh
sudo ./script.sh
```

---

```markdown
## Grupos e Usuários

| Grupo      | Usuários                              |
|------------|---------------------------------------|
| GRP_ADM    | carlos, maria, joao                   |
| GRP_VEN    | debora, sebastiana, roberto            |
| GRP_SEC    | josefina, amanda, rogerio              |
| GRP_PUBLIC | Todos os usuários do projeto           |
```
## Referência

Projeto desenvolvido como parte dos estudos na plataforma **DIO Pro**.
- [DIO Pro](https://www.dio.me/)

