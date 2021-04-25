# Projeto FizzBuzz em Elixir (estudo)

### Instalação

- Instalar o Elixir: https://elixir-lang.org/install.html

### Comandos

- Compilar a aplicação
  - `mix compile`
- Rodar os testes
  - `mix test`
- Rodar a plicação
  - `iex -S mix`
  - `FizzBuzz.build(nome_do_arquivo.txt)` (ex: numbers.txt)
- Formata o código
  - `mix format`

### Extensão VSCode

- ElixirLS: Elixir support and debugger

### Regras

- Múltiplos de 3 devem ser substituidos por **Fizz**
- Múltiplos de 5 devem ser substituidos por **Buzz**
- Múltiplos de 3 e 5 devem ser substituidos por **FizzBuzz**

### Exemplos

- [1, 2, 3, 4, 5, 10, 15, 20] resultado deve ser {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzBuzz, :buzz]}
- [1, 2, 4, 8, 10] resultado deve ser {:ok, [1, 2, 4, 8, :buzz]}

### Teste

- Realizado testes unitários na função publica "build"
