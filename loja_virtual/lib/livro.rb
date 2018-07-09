class Livro
  # attr_writer :preco
  # attr_reader :preco
  attr_accessor :preco

  def initialize(autor, numero_de_paginas, isbn = 1, preco)
    @autor = autor
    @isbn = autor;
    @numero_de_paginas = autor
    @preco = preco
  end

  def to_s
    "Autor: #{@autor}, ISBN: #{@isbn}, Páginas: #{@numero_de_paginas}"
  end

  # def preco
  #   @preco
  # end

  # def preco=(preco)
  #   @preco = preco    
  # end
end