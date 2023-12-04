Banco de Dados ResiliaData
Visão Geral
Este repositório contém scripts SQL para criar e popular um banco de dados relacional chamado ResiliaData. O banco de dados é projetado para armazenar informações sobre empresas, colaboradores e tecnologias utilizadas por essas empresas. O esquema inclui tabelas para empresas (empresa), colaboradores (colaborador), tecnologias (tecnologias) e o relacionamento entre empresas e tecnologias (tecnologia_empresa).

Esquema do Banco de Dados
Tabela: empresa
id_empresa: Chave primária, inteiro autoincrementado que representa o identificador único da empresa.
nome_empresa: String (até 100 caracteres) representando o nome da empresa.
endereco: String (até 100 caracteres) representando o endereço da empresa.
telefone: String (até 15 caracteres) representando o número de telefone de contato da empresa.
Tabela: colaborador
id_colaborador: Chave primária, inteiro autoincrementado que representa o identificador único do colaborador.
nome: String (até 100 caracteres) representando o nome do colaborador.
cargo: String (até 100 caracteres) representando o cargo ou posição do colaborador.
id_empresa: Chave estrangeira referenciando id_empresa na tabela empresa, estabelecendo um relacionamento entre colaboradores e empresas.
Tabela: tecnologias
id_tecnologias: Chave primária, inteiro autoincrementado que representa o identificador único da tecnologia.
area: String (até 100 caracteres) representando a área ou categoria da tecnologia.
nome_tecnologia: String (até 100 caracteres) representando o nome da tecnologia.
Tabela: tecnologia_empresa
id_emp_tecnologia: Chave primária, inteiro autoincrementado que representa o identificador único para o relacionamento entre uma empresa e uma tecnologia.
id_empresa: Chave estrangeira referenciando id_empresa na tabela empresa, estabelecendo um relacionamento entre empresas e tecnologias.
id_tecnologias: Chave estrangeira referenciando id_tecnologias na tabela tecnologias, estabelecendo um relacionamento entre tecnologias e empresas.
nivel_utilizacao: Inteiro representando o nível de utilização de uma tecnologia por uma empresa.
Relacionamentos no Banco de Dados
A tabela tecnologia_empresa estabelece um relacionamento muitos para muitos entre empresas e tecnologias.
A tabela colaborador tem um relacionamento muitos para um com a tabela empresa, indicando que vários colaboradores podem pertencer à mesma empresa.
Inicialização
Crie um banco de dados chamado ResiliaData.
Utilize o banco de dados ResiliaData.
Execute os scripts SQL para criar as tabelas e estabelecer os relacionamentos de chave estrangeira.
Preencha as tabelas com dados de exemplo usando as instruções INSERT fornecidas.
Dados de Exemplo
As instruções INSERT fornecidas populam as tabelas com dados de exemplo, incluindo informações sobre duas empresas (Umbrella e Xurraskin), duas tecnologias (HTML/CSS e Python) e dois colaboradores (Will Smith e Taylor Swift). A tabela tecnologia_empresa demonstra o relacionamento entre empresas e tecnologias com os respectivos níveis de utilização.

Sinta-se à vontade para modificar e estender o esquema do banco de dados e os dados de acordo com suas necessidades específicas.

Observação: Certifique-se de ter as permissões apropriadas e faça backup dos dados existentes antes de executar os scripts em um ambiente de produção.
