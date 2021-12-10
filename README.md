# Projeto AnimaPet

## Nome: Pet Sem Fronteiras

### Conteúdos do repositório

1. Análise de Moscow
2. Diagrama de classes
3. Matriz de rastreabilidade de requisitos;
4. Arquivo '.doc' contendo
	- Conceitos iniciais
		- Objetivos do documento
		- Escopo do produto
		- Missão do produto
		- Missão do produto
		- Benefícios essenciais do produto
		- Stakeholdes
			- Stakeholdes internos
			- Stakeholdes externos
		- Requisitos
			- Requisitos funcionais
			- Requisitos não-funcionais
		- Calendário de atividades
		- Ferramentas à aplicar
		- História de usuário
		- Análise de Moscow
	- Arquivo '.txt' contendo:
		- Funções fechadas do sistema; (requer autenticação por login)
		- Funções abertas do sistema; (não requer autenticação por login)

---

[Projeto Final](https://github.com/ScParis/AnimaPet/tree/main/ProjetoFinal)


---

# Testes Automatizados na API

[Teste](https://github.com/ScParis/AnimaPet/tree/main/ProjetoFinal/Test)

1. GET All
	- Teste realizando GET, sem fitlros, no endpoint /veterinario
		- Impresso json de retorno, no log report;
		- Guardado Status Response em uma variável;
		- Validado status code;

2. GET by ID
	- Teste realizando GET, passando parâmetro ID, no endpoint /veterinario/{id}
		- Impresso json de retorno, no log report;
		- Guardado Status Response em uma variável;
		- Validado status code;

3. POST
	- Teste realizando POST, no endpoint /veterinario
		- Criado discionário de dados, para cadastro de um novo veterinário;
		- Criada validação do status code;
		- Impresso json de retorno, no log report;

4. DELETE
	- Teste realizando DELETE, passando parâmetro ID, no endpoint /veterinario/{id}
		- Impresso json de retorno, no log report;
		- Guardado Status Response em uma variável;
		- Validado status code;

[Tutorial de instalação do Robot](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst)


### Bibliotecas ustilizadas

[RobotFramework](https://github.com/robotframework/robotframework)
[RequestsLibrary](https://github.com/MarketSquare/robotframework-requests#readme)
[Collections](https://robotframework.org/robotframework/latest/libraries/Collections.html)
[OperatingSystem](https://robotframework.org/robotframework/latest/libraries/OperatingSystem.html)
---