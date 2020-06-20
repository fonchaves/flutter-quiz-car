<!-- <p align="center">
  <img style="max-width:70%; height: 130px;" src="https://www.vagasfloripa.com.br/wp-content/uploads/company_logos/2019/07/zallpy_group_logo_home.png">
</p> -->

<!-- ![alt text](https://github.com/leandrochavesf/flutter-quiz-car/blob/master/images/quizzapp-logo.png?raw=true) -->

<p align="center">
  <img src="https://github.com/leandrochavesf/flutter-quiz-car/blob/master/.github/quizzapp-logo-dark.png?raw=true",>
  <br />
<p align="center">Discover your knowledge about the car factories&#x27; history.</p>
  <br />
  <br />
  <!-- <img src="https://img.shields.io/github/issues/SkullDarth/bootcamp-gostack-challenge-03">
  <img src="https://img.shields.io/github/forks/SkullDarth/bootcamp-gostack-challenge-03">
  <img src="https://img.shields.io/badge/made%20by-SkullDarth-lightgrey">
  <img src="https://img.shields.io/github/stars/SkullDarth/bootcamp-gostack-challenge-03">
  <img src="https://img.shields.io/github/license/SkullDarth/bootcamp-gostack-challenge-03?logoColor=MIT"> -->

   <p align="center">
      <a href="#sobre-o-desafio">Sobre o desafio</a>
      <strong>|</strong>
      <!-- <a href="#resources-and-procedures">Resources and Procedures</a>
      <strong>|</strong> -->
      <!-- <a href="#running-for-first-time">Running for First Time</a>
      <strong>|</strong> -->
      <a href="#project-tree">Project Tree</a>
      <strong>|</strong>
      <!-- <a href="#project-in-function">Project in function</a>
      <strong>|</strong> -->
      <a href="#license">License</a>
   </p>

:robot: Zallpy Challenge - [ Mobile Technical Challenge](#)

</p>

## Sobre o desafio

Desenvolver uma aplicação mobile simples sobre a origem das montadoras (país de origem), onde o usuário deverá responder algumas perguntas e obter seu resultado em forma de porcentagem no final do questionário.

#### Requisitos técnicos

- [x] Quiz App em Flutter com Dart
- [x] API service em C#
  - [Link do repositório](https://github.com/leandrochavesf/csharp-quiz-car-api)
  -

#### Projeto em funcionamento

- Teste o App: [Link da aplicação](https://leandrochaves.me/app/flutter-quiz-car)

<!-- ## Resources and Procedures -->

## Recursos e Procedimentos

#### Recursos Desenvolvidos

-Páginas

- [x] SplashScreenPage
- [x] HomePage
- [x] QuizzPage
- [x] ResultPage

#### Outras melhorias

- [x] Versões mais atualizadas
- [x] Instruções detalhadas de Readme

<!-- ## Running for First Time -->

## Instalação

#### Iniciar App Flutter

Para facilitação dos testes, o APP está consumindo os dados JSON via My-Json-Server ([Link do JSON](https://my-json-server.typicode.com/leandrochavesf/flutter-quiz-car/Questions))

Para rodar o App consumindo dados via API própria, pode-se executar projeto da API ([Link do repositório](https://github.com/leandrochavesf/csharp-quiz-car-api))

Atente-se também em atualizar a a const QUESTION_URL em [Link do arquivo](https://github.com/leandrochavesf/flutter-quiz-car/blob/master/lib/shared/consts_api.dart)

<!-- Do contrario, o arquivo database.js já provê de modo facilitado a lista de produtos -->

<!-- ## Teste

O aplicativo foi desenvolvido com foco no Android, sendo assim conecte um celular no seu computador, ou use um simulador de Android, em seguida rode o comando abaixo:

```bash
react-native run-android
```

Para instruções de como preparar seu ambiente de testes, segui o link abaixo:
[Configuração de Ambiente](https://facebook.github.io/react-native/docs/getting-started) -->

<!-- ## Passos

Você também pode conferir todo o passo a passo de desenvolvimento no link a seguir.
[Passo a Passo](https://github.com/leandrochavesf/crawler-challenge/blob/master/STEPS.md)

ou mesmo conferir alguns insights e problemas durante o desenvolvimento.
[Problemas](https://github.com/leandrochavesf/crawler-challenge/blob/master/TIPS.md) -->

<!-- #### Now you can open [Insomnia][insomnia] and import [Insomnia file](./Insomnia.json) to test routes. -->

## Project Tree

```
quiz_car
├─ LICENSE.md
├─ README.md
├─ TIPS.md
├─ assets
│  ├─ db.json
│  └─ question.json
├─ db.json
├─ fonts
│  └─ Roboto-Regular.ttf
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
├─ pubspec.lock
├─ pubspec.yaml
└─ test
   └─ widget_test.dart
```

<!-- # quizcar

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference. -->

## License

This project is under the MIT license. See the [LICENSE](./LICENSE.md) for more information.

---

#### Made by Leandro Chaves [Get in touch!](https://leandrochaves.me/linkedin)
