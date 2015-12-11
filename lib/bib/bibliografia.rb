
    
    class Bibliografia
    
        include Comparable
        attr_accessor :autores, :titulo,  :fecha
        
        
        
        def initialize(autor, titulo,  fecha)
            raise ArgumentError, 'Tiene que haber al menos un autor' if autor.length == 0
            raise ArgumentError if ( (fecha.class != Date) ||
                                    !(Date.valid_date?(fecha.year,fecha.month, fecha.mday)))
            
            @autores = Array.new
            @titulo = titulo
            @fecha = fecha
            autor.each do |item|
            @autores.push "#{item}"
            end #bucle each
            
        end #initialize
        
        
        def <=>(other)
        return nil unless other.is_a? Bibliografia
            return @autores[0] <=> other.autores[0]
        end
        
        
        def getReferencia()
            #Imprimimos los nombres formateados
            @autores.each_with_index do |nombre, i|
                print(nombre)
                if (i == (@autores.length-1))
                    puts #Imprimimos el salto de linea
                else
                    print(", ") #Imprimimos la coma
                end #if
            end #do
            puts("#{@titulo}") #Imprimimos el titulo
            puts @fecha
        end #getReferencia

    end #class Bibliografia
#end #modul


class Libros < Bibliografia
    
    attr_accessor  :serie, :editorial, :n_edicion, :isbn, :editorial
    
    def initialize(autor, titulo, serie, ed, nEd, fecha, isbn)
        super(autor, titulo, fecha)
        raise ArgumentError if (isbn.class != Hash)
            @isbn = isbn
            @n_edicion = nEd
            @serie = serie
            @editorial = ed
        end #initialize
        

     def getISBN()
            p @isbn
        end #getISBN
    
    #Invalidamos el getReferencia de Bibliografia
     def getReferencia()
        (" #{@fecha} " + " #{@titulo.uppcase} " + "(#{@n_edicion})" + "(#{serie})" + " (#{@editorial})")
    end #getReferencia

end

class Publicaciones < Bibliografia
    
    attr_accessor :url

    def initialize(autor, titulo, fecha, url)
        super(autor, titulo, fecha)
           @url = url
    end #initialize
    
    
   def getReferencia()
            
            (" #{@fecha} " + " #{@titulo} " + " Web " + " #{@url} ")
            end 
end




class Revistas < Bibliografia
    
    attr_accessor :serie, :n_edicion, :issn, :editorial

    def initialize(autor, titulo, serie, ed, nEd, fecha, issn)
        super(autor, titulo,fecha)
            raise ArgumentError if (issn.class != Hash)
            @issn = issn
            @editorial = ed
            @serie = serie
            @n_edicion = nEd
    end #initialize
    
   def getReferencia()
    (" #{@fecha} " + " #{@titulo.uppcase} " + "(#{@n_edicion})" + "(#{serie})" + " (#{@editorial})")
    end #getReferencia
end



