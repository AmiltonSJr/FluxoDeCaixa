# 📊 **Fluxo de Caixa --- Sistema Desktop**

Um sistema de **Fluxo de Caixa Desktop**, desenvolvido em **Lazarus
(Free Pascal)**, com o objetivo de ajudar pequenos negócios e usuários
individuais a controlar contas, planos e lançamentos financeiros de
forma simples e eficiente.

------------------------------------------------------------------------

## 🧰 **Tecnologias Utilizadas**

-   **Lazarus / Free Pascal**
-   **MySQL**
-   **Arquivo INI** para configuração do banco
-   **LCL Components**

------------------------------------------------------------------------

## 🏗️ **O que já foi desenvolvido**

### ✔️ **Interface Inicial**

-   Criado o formulário principal com o menu lateral:
    -   **Contas**
    -   **Planos**
    -   **Lançamentos**
    -   **Configuração**
    -   **Sair**

### ✔️ **Tela de Configuração do Banco**

A funcionalidade atual permite: - Criar e editar um arquivo
**config.ini** - Configurar: - Nome do **banco** - **Usuário** -
**Servidor (host)** - **Senha** - **Porta** - Salvamento automático no
arquivo INI para uso posterior na conexão MySQL

### ✔️ **Sistema Visual Ajustado**

-   Uso de cores e layout moderno com Lazarus
-   Fontes personalizadas para títulos (ex.: *FLUXO DE CAIXA* /
    *CONFIGURA BANCO*)

------------------------------------------------------------------------

## 📁 **Estrutura de Arquivos**

    /fluxocaixa
      /backup
      /lib
      /view
      fluxocaixa.exe
      fluxocaixa.lpi
      fluxocaixa.lpr
      config.ini (gerado automaticamente)

------------------------------------------------------------------------

## ⚙️ **Como funciona o arquivo INI**

O sistema cria automaticamente o arquivo **config.ini** contendo:

    [Banco]
    nome=fluxo_caixa
    usuario=root@localhost
    servidor=localhost
    senha=
    porta=3306

Esse arquivo será usado futuramente para: - Conectar ao MySQL - Validar
informações de login - Carregar configurações ao iniciar o sistema

------------------------------------------------------------------------

## 🚀 **Próximos Passos do Desenvolvimento**

-   [ ] Criar módulo de **Contas**
-   [ ] Criar módulo de **Planos de Contas**
-   [ ] Criar módulo de **Lançamentos**
-   [ ] Implementar conexão MySQL usando parâmetros do INI
-   [ ] Criar relatórios com **LazReport**
-   [ ] Criar instalador (opcional)

------------------------------------------------------------------------

## 📸 **Screenshots**

*Adicione aqui depois suas imagens do sistema rodando.*

------------------------------------------------------------------------

## 🤝 Contribuições

Feedbacks, sugestões e melhorias são bem-vindas!\
Sinta-se à vontade para abrir **issues** ou enviar **pull requests**.

------------------------------------------------------------------------

## 📌 Autor

**Amilton Junior**\
Projeto desenvolvido para estudo e prática de Lazarus + MySQL + lógica
financeira.
