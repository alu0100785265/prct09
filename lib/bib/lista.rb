Node = Struct.new(:value, :next , :prev)
class Lista
    
    attr_accessor :cabeza,:final
    
    def initialize()
        @cabeza = nil
        @final = nil
    end
    
    def extract_inicio()
        if(empty() != true)
            var_ini = @cabeza
            @cabeza = @cabeza.next
            return var_ini
        else
            return nil
        end
    end
     
    def extract_final()
         if(empty() != nil)
            var_ini = @final
            @final = @final.prev
            if (@final == nil)
                @cabeza = nil
                @final = nil
            end
            return var_ini
         else
             return nil
         end
     end
    
    def to_s()
        var_ini = @cabeza
        while(empty() != true) do
            "#{var_ini.value}"
            var_ini = var_ini.next
            if(var_ini == nil)
                break
            end
        end
    end
    
    def empty()
        if(@cabeza != nil)
            return false
        else
            return true
        end
    end
    
    def insertar_nodo(x)
        
        if ((x.instance_of? Node) != true)
             node = Node.new(x,nil,nil)
        else
             node = x
        end
        
        if(empty() == true)
            @cabeza = node
            @cabeza.next = nil
            @cabeza.prev = nil
            @final = @cabeza
        else
            var_ini = @final
            @final = node
            var_ini.next = @final
            @final.prev = var_ini
            @final.next = nil
        end
    end
    
    def arrays(*array)
        array.each do |nodo|
            if(empty() != true)
                var_ini = @final
                @final = nodo
                var_ini.next = @final
                @final.prev = var_ini
            else
                @cabeza = nodo
                
                @final = @cabeza
                
            end
        end
    end
   
  
    
    
end
