require './lib/loja_virtual'

biblioteca = Biblioteca.new

teste_e_design = Livro.new "TDD", "Mauricio Aniche", "123454", 247, 60.9, :testes
web_design_responsivo = Livro.new "Design Responsivo", "Tárcio Zemel", "452565", 189, 67.9, :front_end
# jsf_e_jpa = Livro.new "Java Web", "Gilliard Cordeiro", "543465", 234, 64.9, :frameworks_mvc

# hash = {
#   "123454" => teste_e_design,
#   "452565" => web_design_responsivo
# }

# p hash["123454"]

biblioteca.adiciona teste_e_design
biblioteca.adiciona web_design_responsivo

# for categoria, livros in biblioteca.livros
#   p categoria

#   for livro in livros do
#     p livro.preco
#   end
# end

# puts biblioteca.livros

# for livro in biblioteca.livros do
#   puts livro.preco
# end

# hash = { testes: teste_e_design, front_end: web_design_responsivo }
# p hash.values

# hash = { testes: [teste_e_design], front_end: [web_design_responsivo] }
# p hash.values
# p hash.values.flatten

# hash = {}
# hash[:teste] = [ [teste_e_design], [jsf_e_jpa] ]
# hash[:web_design] = [ [web_design_responsivo] ]

# p hash.values.flatten

# hash = {
#   :testes => [teste_e_design, web_design_responsivo],
#   :webs_design => [web_design_responsivo]
# }

# p hash[:testes]

# numero_sem_repeticao = Set.new [1,2,4,2,3,2,1]

# for numero in numero_sem_repeticao
#   p numero
# end

# livros = Set.new [teste_e_design, web_design_responsivo, teste_e_design]

# for livro in livros
#   p livro
# end

# Cap05 - Ruby e a programação funcional
# biblioteca.livros_por_categoria :testes do |livro|
#   p livro.autor
# end

# biblioteca.livros_por_categoria :testes

# relatorio = Relatorio.new biblioteca
# p relatorio.titulos
# p relatorio.total

# imprime_livro_no_console = Proc.new do |livro|
#   p livro.autor
# end

imprime_livro_no_console = lambda do |livro|
  p livro.autor
end

biblioteca.livros_por_categoria :testes, &imprime_livro_no_console

# biblioteca.livros_por_categoria :testes do |livro|
#   p livro.autor
# end