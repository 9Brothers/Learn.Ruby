class Relatorio
  def initialize(biblioteca)
    @biblioteca = biblioteca
  end

  def total
    # soma = 0.0

    # @biblioteca.livros.each do |livro|
    #   soma += livro.preco
    # end

    # soma

    # @biblioteca.livros.inject(0) { |soma, livro| soma += livro.preco }

    # @biblioteca.livros.map(&:preco).inject(0) { |soma, valor| soma += valor }

    @biblioteca.livros.map(&:preco).inject(:+)
  end

  def titulos
    # titulos = []

    # @biblioteca.livros.each do |livro|
    #   titulos << livro.titulo
    # end

    # titulos

    # @biblioteca.livros.map { |livro| livro.titulo }
    @biblioteca.livros.map &:titulo
  end
end