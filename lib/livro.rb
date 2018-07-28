class Livro
  attr_accessor :preco
  attr_reader :categoria, :autor, :isbn, :titulo  

  def initialize(titulo, autor, numero_de_paginas, isbn = 1, preco, categoria)
    @titulo = titulo
    @autor = autor
    @isbn = isbn
    @numero_de_paginas = numero_de_paginas
    @preco = preco
    @categoria = categoria
  end

  def to_s
    "Título: #{@titulo}}, Autor: #{@autor}, ISBN: #{@isbn}, Páginas: #{@numero_de_paginas}, Categoria #{@categoria}, Preço: #{@preco}"
  end

  # def preco
  #   @preco
  # end

  # def preco=(preco)
  #   @preco = preco    
  # end

  def eql?(outro_livro)
    @isbn == outro_livro.isbn
  end

  def hash
    @isbn.hash
  end
end