# Market List

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)

## Demo

https://github.com/user-attachments/assets/e7469549-1a51-4cba-899d-fb9d28c06a33

App mobile em Flutter para gerenciar listas de compras com persistencia local (offline), sem backend.

## O que o app faz hoje

- Cria listas de compras com nome customizado.
- Mostra todas as listas salvas localmente.
- Exibe em cada lista:
	- nome;
	- progresso de itens concluidos;
	- total de itens;
	- barra de progresso.
- Abre os detalhes de uma lista para gerenciar os itens.
- Adiciona itens em uma lista.
- Marca e desmarca itens como comprados.
- Remove item por swipe (arrastar para a esquerda).
- Remove lista por swipe (arrastar para a esquerda).
- Remove automaticamente os itens vinculados quando uma lista e apagada.
- Atualiza os contadores da lista automaticamente ao:
	- adicionar item (`totalItems +1`);
	- remover item (`totalItems -1`);
	- marcar/desmarcar item (`completedItems +/-1`);
	- remover item comprado (`completedItems -1` tambem).
- Ordena os itens da lista para priorizar nao comprados no topo.
- Mostra estados de carregamento, vazio e erro nas telas principais.
- Mantem os dados apos fechar e abrir o app (Hive local).

## Fluxo das telas

### 1) Tela de listas

Na tela inicial o usuario consegue:

- ver todas as listas;
- criar nova lista por bottom sheet;
- abrir uma lista para ver detalhes;
- excluir uma lista por swipe.

### 2) Tela de itens da lista

Dentro de uma lista o usuario consegue:

- adicionar item por bottom sheet;
- tocar no item para marcar/desmarcar como comprado;
- usar o checkbox para marcar/desmarcar;
- excluir item por swipe.

Ao voltar para a tela anterior, os totais ja refletem o estado atual da lista.

## Stack

- Flutter
- Dart
- Provider (gerenciamento de estado)
- GetIt + Injectable (injecao de dependencias)
- GoRouter (navegacao)
- Hive CE + Hive CE Flutter (persistencia local)
- Freezed + Freezed Annotation (entidades e estados imutaveis)
- Fpdart (tratamento funcional de resultado/erro)
- Google Fonts (tipografia)

## Arquitetura

Estrutura inspirada em Clean Architecture:

- `presentation`: paginas e providers
- `domain`: entidades, contratos e casos de uso
- `data`: models, datasources e implementacoes de repositorio
- `core`: DI, roteamento, tema, falhas e utilitarios globais
- `shared`: componentes reutilizaveis

Features atuais:

- `market_lists`: criar, listar e excluir listas
- `list_details`: listar, adicionar, alternar status e excluir itens

## Persistencia de dados

- Banco local com Hive.
- `MarketListModel` representa listas.
- `MarketItemModel` representa itens.
- Adapters registrados na inicializacao do app.
- Funciona sem internet.

## Navegacao

Rotas principais:

- `/` -> tela de listas
- `/details` -> tela de itens da lista selecionada

## Tema

- Tema claro e escuro com `ThemeMode.system`.
- Tipografia com `GoogleFonts.dmMonoTextTheme()`.

## Estrutura de pastas

```text
lib/
	core/
		db/
		di/
		failures/
		router/
		theme/
		usecase/
		utils/
	features/
		list_details/
		market_lists/
	shared/
		widgets/
```

## Como rodar

### Requisitos

- Flutter instalado
- Dart SDK compativel
- Android Studio ou VS Code com suporte Flutter
- Emulador ou dispositivo configurado

### Instalar dependencias

```bash
flutter pub get
```

### Rodar em debug

```bash
flutter run
```

## Geracao de codigo

Projeto usa geracao para `injectable`, `freezed` e adapters do Hive.

Gerar arquivos:

```bash
dart run build_runner build --delete-conflicting-outputs
```

Modo watch:

```bash
dart run build_runner watch --delete-conflicting-outputs
```

## Build APK

### Release padrao

```bash
flutter build apk --release
```

Saida:

```text
build/app/outputs/flutter-apk/app-release.apk
```

### Split por arquitetura

```bash
flutter build apk --release --split-per-abi
```

## Testes

```bash
flutter test
```

## Limitacoes atuais

- Nao edita nome de lista.
- Nao edita nome de item.
- Nao possui busca/filtro.
- Nao possui sincronizacao em nuvem.
