#  PADRÕES E BOAS PRÁTICAS - FLUTTER

# Introdução

O objetivo deste documento é definir e apresentar os padrões e melhores práticas do time de Flutter. O objetivo é que este documento seja usado como guia para o desenvolvimento de projetos, estabelecendo de forma comum a todo time as práticas, metodologias, arquiteturas, padrões, frameworks etc. que podem/devem ser usados.

Este ponto é importante, pois uma vez que estabelecido um "Potocolo" entre todo o time, pontos como controle de qualidade, alinhamento técnico do time, manutenibilidade, etc. são favorecidos, por isso é de extrema importância contar com a colaboração de todos para que o que aqui estabelecido seja seguido.

Outro aspecto importante, o conteúdo deste guia não será estático, ou seja, podendo ser alterado a medida que novas tecnologias e necessidades surgirem, por isso o time está sempre aberto a escutar propostas e melhorias que possam ser agregadas a este documento.

Para tal basta editar este documento e submeter um  _pull request_  com alteração ou abrir uma  _issue_ neste repositório.

# Versão flutter
A Versão do flutter que é utilizada neste projeto foi a 2.12.1

# Apresentação geral da arquitetura 
A arquitetura do projeto é dividia de forma modular subdividido em micro apps, onde tem o menor índice de acoplamento possível.

Cada módulo contem seu próprio ecossistema de arquitetura e a proposta adotada foi a do clean dart.
Veja a documentação sobre CLEAN [aqui](./doc/CLEAN_ARCHITECTURE.md)

## Proposta estrutural
Seguindo o conceito de monorepo, ou seja, cada projeto ficara em um repositorio diferente, assim facilitando a manutenção por modulos separados.

 - [MONOREPO](./doc/MONOREPO.md)

# Pull Requests
Veja a documentação sobre Pull Request [aqui](./doc/PULL_REQUESTS.md)

# Git Flow
Veja a documentação sobre Git Flow [aqui](./doc/GIT_FLOW.md)

# Testes
Veja a documentação sobre Testes [aqui](./doc/TESTES.md)

## Recursos de terceiros

É importante que o time esteja alinhado sobre quais recursos de terceiros (libraries, frameworks, SDK's) podem ser utilizadas nos projetos do time de flutter, uma vez que essas dependências podem ter um impacto significativo no desenvolvimento e manutenção de um projeto (depreciação, bugs em aberto, incompatibilidades etc.). 

Antes de adicionar um recursos que não esteja na lista abaixo, observar os seguintes itens:

- Issues abertas Github
- Likes, Pub Points, Popularity
- Data ultima alteração
- Resolução de bugs encontrados
- Atualização para recursos mais novos do Flutter/Dart, ex. Null Safety

# Boas práticas de desenvolvimento
Para garantir que as boas práticas de desenvolvimento seguindo a [guia oficial do Dart](https://dart.dev/guides/language/effective-dart) utilizamos o package [flutter_lints](https://pub.dev/packages/flutter_lints) 
Isso ira gerar Avisos de linhas que não  condiz com as boas praticas do Flutter

# Dicas

Abaixo há alguns links de documentações, artigos e trilhar de estudos

-  [Testes](https://medium.com/cristiano-cunha/testes-automatizados-dart-cf9df0e741ab)
-  [White Label Apps](https://itnext.io/white-label-apps-in-flutter-613b2d0a80ce)
-  [White Label in Flutter](https://medium.com/@ramiechaarani/how-to-make-a-white-label-app-in-flutter-6c3ea40fd7d5)
-  [Modular](https://medium.com/flutterando/quais-os-problemas-que-o-flutter-modular-veio-resolver-deaed96b71b3)

Trilha recomendada de estudos:

##### Iniciando:
Trila de estudos disponibilizadas pelo canal Flutterando, nivel iniciante mais detalhada 
https://www.youtube.com/watch?v=9m3PvcQ18Hk&list=PLlBnICoI-g-cqwYgp3uBiphS4KC3daJ-R

Trila de estudos disponibilizadas pelo canal Flutterando, com uma abordagem um pouco mais rápida
https://www.youtube.com/watch?v=XeUiJJN0vsE&list=PLlBnICoI-g-d-J57QIz6Tx5xtUDGQdBFB 

ou curso pago na udemy nivel iniciante para médio 
https://www.udemy.com/course/curso-completo-flutter-app-android-ios/learn/lecture/11038094?start=15#overview

##### Uso do flutter_modular:
https://www.youtube.com/watch?v=cIO1im9sLb0&list=PLlBnICoI-g-cVJ2sfu65-HjDtQepbrvjS
##### documentação flutter modular
https://modular.flutterando.com.br/docs/flutter_modular/start/

##### trilha de estudos: Clean Architecture
https://www.youtube.com/watch?v=VacEeKvY2bg&list=PLlBnICoI-g-d-v_fWlkZX2HRgHHPnJx9s

##### trilha de estudos: Conceitos mais avançados e entendimento de monolito, monorepo e multirepo
https://www.youtube.com/watch?v=5rjQ5ooWDoY&list=PLRpTFz5_57cufduUDgiZZqA_k5Q7UV_50