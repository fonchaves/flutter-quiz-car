<p align="center">
  <img src="https://github.com/leandrochavesf/flutter-quiz-car/blob/master/.github/quizzapp-logo-dark.png?raw=true",>
  <br />
  <br />
  <br />
<p align="center">Discover your knowledge about the car factories&#x27; history.</p>
  <!-- <img src="https://img.shields.io/github/issues/.../...">
  <img src="https://img.shields.io/github/forks/.../...">
  <img src="https://img.shields.io/badge/...">
  <img src="https://img.shields.io/github/stars/.../...">
  <img src="https://img.shields.io/github/license/.../..."> -->

   <p align="center">
      <a href="#sobre-o-desafio">Sobre o desafio</a>
      <strong>|</strong>
      <a href="#recursos-e-funcionalidades">Recursos e Funcionalidades</a>
      <strong>|</strong>
      <a href="#instalação">Instalação</a>
      <strong>|</strong>
      <a href="#project-tree">Project Tree</a>
      <strong>|</strong>
      <a href="#license">License</a>
   </p>

:robot: Challenge - [ Mobile Technical Challenge](#)

</p>

## Sobre o desafio

Desenvolver uma aplicação mobile simples sobre a origem das montadoras (país de origem), onde o usuário deverá responder algumas perguntas e obter seu resultado em forma de porcentagem no final do questionário.

#### Requisitos técnicos

- [x] Quiz App em Flutter com Dart
- [x] API service em C#
  - [Link do repositório][github-quizcar-api]

#### Projeto em funcionamento

- Visualize o funcionamento do app [Link da aplicação][quizcar-live]

## Recursos e Funcionalidades

#### Tecnologias e Libraries usadas neste projeto

- [MobX][mobx]
- [Mobx Codegen][mobx-codegen-pub]
- [Http][http-pub]
- [Build Runner][buildrunner-pub]
- [Json to Dart Convert][json-to-dart]
- [VS Code][vscode] com [EditorConfig][editorconfig].

#### Recursos desenvolvidos e futuros

- [x] Telas obrigatórias do ciclo do usuário
- [x] Quantidade indefinida de perguntas
- [x] Cronometro decrescente para cada pergunta
- [x] Resposta visual imediata para pergunta escolhida
- [x] Tela de apresentação (SplashScreen)
- [ ] Uso de MobX para gerenciamento de estados
- [ ] Carregar perguntas ao iniciar App
- [ ] Cache de elementos da API
- [ ] Tratamento de responsabilidades em MVC
- [ ] Refino de MediaQueries para Responsividade
- [ ] SplashScreen com animações de fadeIn e fadeOut
- [ ] Armazenamento de ranking em localStorage
- [ ] Testes unitários
- [ ] Uso de Environment Variables para CI/CD (Opcional)
- [ ] Imagens aleatórias de API do Unsplash (Opcional)

#### Telas

- [x] Apresentação (SplashScreenPage)
- [x] Principal (HomePage)
- [x] Perguntas(QuizzPage)
- [x] Resultados (ResultPage)
- [ ] Histórico de Ranking (RankingPage)

## Instalação

#### Iniciar App Flutter

Para clonar e executar esta aplicação, você vai precisar do [Git][git], [Android SDK][android-sdk], [Flutter][flutter] e [VSCode][vscode] instalados no seu computador.

Linhas de comando:

```bash
# Clone this repository
$ git clone https://github.com/leandrochavesf/flutter-quiz-car.git

# Go into the repository
$ cd flutter-quiz-car

# Install dependencies
$ flutter pub get

# Run the App
$ flutter run
```

#### Observações

Para facilitar os testes, o APP está consumindo dados JSON via My-Json-Server ([Link do JSON][json-server-web])

Para rodar o App consumindo dados via API própria, siga as instruções do projeto da API ([Link do repositório][github-quizcar-api])

Atente-se também em atualizar a a const `QUESTION_URL` em [consts_api.dart](./lib/shared/consts_api.dart)

#### Insights

Você também pode conferir alguns insights e outros dados relatados durante o desenvolvimento em [Insights.md](./.github/INSIGHTS.md)

## Project Tree

Abaixo uma lista dos arquivos mais relevantes do projeto

```
quiz_car
├─ .github
│  └─ INSIGHTS.md
├─ LICENSE.md
├─ README.md
├─ assets
│  ├─ db.json
│  └─ question.json
├─ fonts
├─ images
├─ lib
│  ├─ interfaces
│  │  └─ question_repository_interface.dart
│  ├─ main.dart
│  ├─ models
│  │  └─ question_model.dart
│  ├─ pages
│  │  ├─ home_page.dart
│  │  ├─ quizz_page.dart
│  │  ├─ result_page.dart
│  │  └─ splash_page.dart
│  ├─ repositories
│  │  └─ question_repository.dart
│  ├─ shared
│  │  └─ consts_api.dart
│  └─ stores
│     ├─ question_store.dart
│     └─ question_store.g.dart
├─ pubspec.yaml
└─ test
   └─ widget_test.dart
```

## License

This project is under the MIT license. See the [LICENSE](./LICENSE.md) for more information.

---

#### Made by Leandro Chaves [Get in touch!](https://leandrochaves.me/linkedin)

<!-- ## Internal Links  -->

[quizcar-live]: https://leandrochaves.me/app/flutter-quiz-car
[github-quizcar-api]: https://github.com/leandrochavesf/csharp-quiz-car-api

<!-- Resources -->

[mobx]: https://pub.dev/packages/mobx
[mobx-codegen-pub]: https://pub.dev/packages/mobx_codegen
[http-pub]: https://pub.dev/packages/http
[buildrunner-pub]: https://pub.dev/packages/build_runner
[json-to-dart]: https://javiercbk.github.io/json_to_dart

<!-- Editor -->

[vscode]: https://code.visualstudio.com/
[editorconfig]: https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig

<!-- Technologies -->

[git]: https://git-scm.com
[android-sdk]: https://developer.android.com/studio
[flutter]: https://flutter.dev/docs/get-started/install
[json-server-web]: https://my-json-server.typicode.com/leandrochavesf/flutter-quiz-car/Questions
