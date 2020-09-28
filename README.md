# Projeto restaurante saboroso

*Implementação de um site para gereciamento das rotinas administrativas de um restaurante.*

![Página Inicial restaurante saboroso](https://raw.githubusercontent.com/Fefefx/Restaurante_saboroso/master/resources/site.png "Página Inicial restaurante saboroso")

O projeto restaurante saboroso é um sistema online de gerenciamento para restaurantes feito em Node.js. Desenvolvido durante o curso completo de JavaScript da [Hcode](https://hcode.com.br/ "Hcode"), ele permite fazer reservas, gerenciar menus, inscrever clientes em listas de e-mail, contatar os donos do estabelecimento, gerenciar usuários, ver gráficos de reservas e acompanhar em tempo real o andamento do negócio, graças a Websocket.

O dashboard dos administradores foi implementado na rota /admin, usando como base o template Admin Lte 2. Para garantir o controle de acesso foi desenvolvido um middleware, que acomplado ao módulo express-session gerencia as sessões ativas dos usuários, salvando-as em um banco de dados NoSql Redis.

![Painel de Controle](https://raw.githubusercontent.com/Fefefx/Restaurante_saboroso/master/resources/image-admin.png "Painel de Controle")

Para persistência de dados o projeto usa do MySql, utilizando de funções nativas para agilizar consultas e gerar paginição de um grande volume de dados. Dentro da pasta *resources* no diretório *database*, você encontra exemplos das querys utilizadas no projeto. Caso queira ver como a paginação foi implementada, veja a classe *Pagination.js* dentro do diretório *inc*.

### Tecnologias utilizadas

1. **Gerenciador de dependências Bower** - disponível em: [https://bower.io/](https://bower.io/ "https://bower.io/")
2. **Banco de dados MySQL** - disponível em: [https://www.mysql.com/](https://www.mysql.com/ "https://www.mysql.com/")
3. **Biblioteca de datas Moment.js** - disponível em: [https://momentjs.com/](https://momentjs.com/ "https://momentjs.com/")
4. **Biblioteca de gráficos Chart.js** - disponível em: [https://www.chartjs.org/](https://www.chartjs.org/ "https://www.chartjs.org/")
5. **Módulo Socket.io** - disponível em: [https://socket.io/](https://socket.io/ "https://socket.io/")
6. **Banco de dados Redis** - disponível em: [https://redis.io/](https://redis.io/ "https://redis.io/")
7. **Gerenciador de sessão express-session** - disponível em: [https://www.npmjs.com/package/express-session](https://www.npmjs.com/package/express-session "https://www.npmjs.com/package/express-session")
8. **Template Admin Lte 2** - disponível em: [https://adminlte.io/themes/AdminLTE/index2.html](https://adminlte.io/themes/AdminLTE/index2.html "https://adminlte.io/themes/AdminLTE/index2.html")
9. **Conector mysql2** - disponível em: [https://www.npmjs.com/package/mysql2](https://www.npmjs.com/package/mysql2 "https://www.npmjs.com/package/mysql2")
10. **Embedded JavaScript templating** - disponível em: [https://ejs.co/](https://ejs.co/ "https://ejs.co/")
11. **Módulo de execução Nodemon** - disponível em: [https://www.npmjs.com/package/nodemon](https://www.npmjs.com/package/nodemon "https://www.npmjs.com/package/nodemon")

## Execução

Para executar o projeto. Abra o diretório principal e execute os seguintes comandos:

`npm install`

`npm install --only=dev`

Isso irá resolver as dependências do Back-End instalando os módulos necessários para o funcionamento do aplicação. A gestão das dependências do Front-End é feita pelo Bower, assim caso não o tenha instalado, você pode fazê-lo pelo seguinte comando:

`npm install -g bower`

Para restaurar as dependência do Front-End acesse a pasta *public* e em seguida o diretório *admin*. Nessa pasta execute o comando:

`bower install`

Após isso é chegada a hora de configurar o banco de dados. Crie um arquivo chamado .env com o mesmo conteúdo do arquivo .env-example. Atribua as propriedades de conexão do seu banco de dados as variáveis de ambiente, mantendo apenas o nome do banco como saboroso. Dentro da pasta *resources -> database*  existe o arquivo *database_structure.sql* com a modelagem do banco de dados. Basta executar esse arquivo em uma query do MySQL para criar o banco. Caso queira povoar a tabela de reservas para teste da paginação, você deve executar o arquivo *reserve_test_data.sql*.  

Os dados de sessão são salvos no database Redis, porém como esse banco apresenta certa incompatibilidade com o Microsoft Windows, nesse sistema instale o arquivo *Redis-x64-3.2.100.msi* presente na pasta *resources* para fazer funcionar a aplicação.

Por fim, dentro do diretório principal rode o seguinte comando para iniciar o app:

`npm start`

O servidor será inicializado. Para testar o site acesse a url *localhost:3000*, que levará a parte pública da aplicação. A parte privada pode ser acessada pelo endereço *localhost:3000/admin*, cadastre um usuário manualmente na tabela tb_users do banco de dados para fazer login na aplicação.