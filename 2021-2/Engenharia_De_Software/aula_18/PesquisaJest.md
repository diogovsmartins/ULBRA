Para poder configurar o ambiente de testes com jest primeiro é necessário que o usuário tenha instalado o gerenciador de pacotes do Node que podem ser baixados no site oficial do Node https://nodejs.org/en/, ao instalar o Node o pacote de gerenciamento de dados já é instalado automaticamente junto.

Agora que já temos o node e o npm instalado, é recomendado criar um arquivo package.json onde ficarão onde será injetada as dependencias do framework.

Após isso podemos prosseguir com a instalação do framework, para instalar o jest usando o seguinte comando no terminal: **npm install --save-dev jest** , usando este comando o gerenciador de pacotes do node irá importar os arquivos necessários para a utilizaçao do framework. 

Depois de instalar o npm e o jest é  possivel criar seu primeiro teste já utilizando o jest, basta criar um arquivo.js por exemplo: 



```js
Exemplo de codigo para testar.
//Função que será testada pelo jest
function multiply(num1, num2){
    return num1*num2;
}

module.exports = multiply; //apelido que será dado para chamar esse teste no arquivo de testes do jest
```



Depois de  criar o arquivo que contém a função que será testada é preciso criar um um arquivo onde serão rodados os testes, esse arquivo normalmente segue o seguinte padrão: nomeDoTeste.test.js.

```js
Exemplo do arquivo de test do jest.

//aqui voce irá importar o arquivo que será testado, basta colocar o nome do apelido que você deu para ele lá no arquivo que contém a função, no modulo.exports.
const multiply = require('./multiply');

//aqui vc pode dar uma idéia do que é esperado que aconteça, nesse caso por exemplo estamos testando com os valores 2 e 5 e o resultado esperado é 10.
test('Multiplica o numero 2 pelo 5 para devolver o numero 10', () => {
    expect(multiply(2, 5)).toBe(10); //aqui os valores que você espera que sejam passados na função para fazer testes com diversos valores.
  });
```

Após isso é só abrir o terminal da IDE que estiver sendo utilizada e digitar:  npm run test o jest vai te devolver o resultaod do teste.

```
 PASS  ./multiply.test.js
  ✓ Multiplica o numero 2 pelo 5 para devolver o numero 10 (4 ms)

Test Suites: 1 passed, 1 total
Tests:       1 passed, 1 total
Snapshots:   0 total
Time:        0.359 s, estimated 1 s
Ran all test suites.
```









