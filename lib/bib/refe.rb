class Bbl
  include Comparable
  attr_reader :autores, :titulo, :fecha
  
  def initialize(autores, titulo, publicacion)
    @autores = Array.new(autores)
    @titulo = titulo
    @fecha = publicacion
  end
  
 
  def <=>(other)
      
      @autores <=> other.autores 
  end
    
  def ==(other)
      if other.is_a?Bbl
        @autores == other.autores
      else
        false
      end
  end 
end
    
  class Libro < Bbl
    attr_accessor :editorial, :serie, :edicion, :numero_ISBN
    def initialize(autores, titulo, editorial, serie, edicion, publicacion, isbn)
      super(autores,titulo,publicacion)
      @editorial = editorial
      @serie = serie
      @edicion = edicion
      @numero_ISBN = Array.new(isbn)
    end
    def to_s
      "#{@autores}, #{@numero_ISBN},#{@titulo},#{@editorial},#{@serie},#{@edicion},#{@fecha}"
    end
  end
  
  class Articulo < Bbl
  attr_accessor :numero_ISSN
  
  def initialize(autores, titulo, publicacion, issn)
      super(autores,titulo,publicacion)
      @numero_ISSN = Array.new(issn)
  end
  
   def to_s
    "#{@autores}, #{@titulo},#{@fecha},#{@numero_ISSN}"
   end
  end 
  class Doc_electronico < Bbl
  attr_accessor :url
  def initialize(autores, titulo, publicacion, url)
      super(autores,titulo,publicacion)
      @url = url
  end
  
  def to_s
    "#{@autores},#{@titulo},#{@fecha},#{@url}"
  end
  end 
class Periodico < Bbl
  attr_accessor :titular, :categoria
  def initialize(autores, titular, fecha, publicacion, categoria)
      super(autores,fecha,publicacion)
      @titular =titular
      @categoria = categoria
  end
    
    def to_s
    
       "#{@autores},#{@titular},#{@fecha},#{@categoria}"
       
    end end
