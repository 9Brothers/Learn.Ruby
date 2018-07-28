class Livro
  # attr_writer :preco
  # attr_reader :preco
  attr_accessor :preco
  attr_accessor :categoria
  def initialize(autor, numero_de_paginas, isbn = 1, preco, categoria)
    @autor = autor
    @isbn = autor;
    @numero_de_paginas = autor
    @preco = preco
    @categoria = categoria
  end

  def to_s
    "Autor: #{@autor}, ISBN: #{@isbn}, Páginas: #{@numero_de_paginas}, Categoria #{@categoria}"
  end

  # def preco
  #   @preco
  # end

  # def preco=(preco)
  #   @preco = preco    
  # end
end