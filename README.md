# Automacao-API-com-Karate
Automação de API com Karate DSL + Relatório Cucumber


- Estrutura basica para criar testes para uma API Rest
- Como manipular diferentes aspectos de requisições
	- GET / POST / PUT / DELETE
	- Headers
	- Query params
	- Payload
- Como garantir diferentes aspectos de respostas
	- Status
	- Response payload
- Como estruturar um projeto


## Ferramenta - Karate DSL:

O Karate DSL é uma ferramenta desenvolvida em Java que permite o desenvolvimento de testes de APIs utilizando uma sintaxe semelhante à do Gherkin. 
> Importante: Karate não é BDD!

> Importante: Neste repositorio estamos utilizando o modo standalone.

## documentação - Karate DSL:

https://github.com/karatelabs/karate?tab=readme-ov-file#path


Para o desenvolvimento dos testes, a ferramenta dispõe de alguns comandos pré-definidos, que são descritos no formato de *steps*. Os principais comandos que serão utilizados no treinamento são:

- [url 'parametro'](https://intuit.github.io/karate/#url "url 'parametro'")
- [path 'parametro'](https://intuit.github.io/karate/#path "path 'parametro'")
- [request 'payload'](https://intuit.github.io/karate/#request "request 'payload'")
- [method 'método http'](https://intuit.github.io/karate/#method "method 'método http'")
- [status 'status http'](https://intuit.github.io/karate/#status "status 'status http'")
- [param 'nome query param' = 'valor do query param'](https://intuit.github.io/karate/#param "param 'nome query param' = 'valor do query param'")
- [header 'nome header' = 'valor do header'](https://intuit.github.io/karate/#header "header 'nome header' = 'valor do header'")
- [response](https://intuit.github.io/karate/#response "response")
- [match 'expressao'](https://intuit.github.io/karate/#match "match 'expressao'")
- [set payload.valor](https://intuit.github.io/karate/#set "set payload.valor")
- [remove payload.valor](https://intuit.github.io/karate/#remove "remove payload.valor")
- [def 'nome da variavel' = 'valor da variavel'](https://intuit.github.io/karate/#def "def 'nome da variavel' = 'valor da variavel'")
- [print 'conteudo'](https://intuit.github.io/karate/#print "print 'conteudo'")
- [read](https://intuit.github.io/karate/#reading-files "read")
- [call read](https://intuit.github.io/karate/#call "call read")

> Em caso de dúvidas, cada tópico possui link direto para a sua explicação.

Uma vez criadas features com os cenários de testes, podemos executá-las com a ajuda do karate.jar. O comando base para execução dos testes é:

`java -jar karate.jar features/demo/post.feature -e dev`

Explçicação:
-Padrão - java -jar karate.jar
-Caminho dda pasta - features/demo/post.feature
-Ambiente a ser executado - -e dev

Neste formato de execução, podemos utilizar outros comandos em conjunto, para:
- filtrar os testes desejados por tags: `-t` ou `--tags`
- executar os testes em paralelo: `-T` ou `--threads`
- dentre outros (confira o -h ou [aqui](https://intuit.github.io/karate/karate-netty/#standalone-jar "aqui"))


Finalizada a execução dos testes, será gerado um relatório com o resultado dos testes no diretório ***target/cucumber-html-reports***. Por padrão, o nome do arquivo é ***overview-features.html*** e deve ser aberto no navegador.


## Sugestão de estrutura de projeto:
```
.
├── data
│   ├── payload1.json
│   └── payload2.json
├── features
│   ├── MinhaFuncionalidade.feature
│   ├── NossaFuncionalidade.feature
│   ├── VossaFuncionalidade.feature
│   └── BossaFuncionalidade.feature
├── karate.jar
