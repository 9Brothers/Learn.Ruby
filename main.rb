require './loja_virtual/lib/livro'

teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 60.9
teste_e_design.preco = 89.9

# puts teste_e_design.preco
puts teste_e_design.instance_variable_get "@preco"