
# VI - Testes
Teste é algo de grande importância para garantir a qualidade dos projetos, com a implantação do Clean Dart facilita a criação dos testes

## Estrutura de pastas
É importante e bastante eficaz que a estrutura de pastas do testes sigam a mesma estrutura do projeto 
![Estrutura de pasta de testes](https://user-images.githubusercontent.com/2637049/116997874-c342f200-acb3-11eb-8a99-163973ebe84e.png)

## Given-When-Then (Dado-Quando-Então)
![Given-When-Then](https://abap101.com/wp-content/uploads/2014/01/Given-When-Then-300x225.jpg)

O conceito Given-When-Then visa criar um “template” usado em todo e qualquer tipo de documentação escrita. Este template terá sempre 3 palavras já definidas e obviamente nem preciso falar quais são. Veja um exemplo de documentação de requisito escrito neste template

### Given - Dado
O Given é a parte que você define o cenário. Qual a situação atual? O que deve existir/acontecer de antemão para que o problema ou o requisito aconteça?
### When - Quando
When é o “trigger” da situação. Quando o problema é percebido? Quando a nova funcionalidade é chamada?
### Then - Então
Obviamente, o Then descreve a consequência do problema ou o resultado esperado do novo requisito
### Exemplo

    test('''
          Dado uma requisição para buscar empresas
          Quando retorno for sucesso
          Então deve retornar Lista de Empresas
    ''', () async {
    }

## Mocks
Para Mocks utilizaremos o mockito, na versão nova é a utilização do build_runner para geração das classes mockadas.
Para isto basta adicionar a classe a ser mockada na annotation **GenerateMocks**.

    @GenerateMocks([IEnterpriseDatasource])
    void main() {
      late EnterpriseRepository _repository;
      final _datasource = MockIEnterpriseDatasource();
    
      setUp(() {
        _repository = EnterpriseRepository(_datasource);
      });
    
      group('Testes de sucesso', () {
        test('''
              Dado uma requisição para buscar empresas
              Quando retorno for sucesso
              Então deve retornar Lista de Empresas
        ''', () async {
          //prepare
          when(_datasource.get()).thenAnswer((_) async => <EnterpriseModel>[]);
    
          //execute
          final result = await _repository.get();
    
          // assert
          expect(result.fold(id, id), isA<List<EnterpriseEntity>>());
          verify(_datasource.get()).called(1);
          verifyNoMoreInteractions(_datasource);
        });
      });
    }