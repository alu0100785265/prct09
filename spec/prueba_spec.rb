

require 'date'
require 'spec_helper'
require 'bib'


describe Bibliografia do
    before :each do
        
        #Bibliografia 1 de las pedidas
        nombres = 'Albeto Rodriguez:Juan Gomez:Maria Toledo'.split(':')
        nombres2 = 'Dave Thomas:Andy Hunt'.split(':')
        isbn = { "isbn-10" => " 1937785491", "isbn-13" => " 978-1937785499" }
        
        @b1 = Bibliografia.new(nombres,"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide", Date.new(2013,7,7))
        @test = Revistas.new(nombres2,"Titulo","Serie","Editorial","Edicion",Date.new(2017,12,11),isbn)
        @pub = Revistas.new(nombres,"Titulo","Serie","Editorial","Edicion",Date.new(2017,12,11),isbn)
        @libro = Libros.new(nombres,"Titulo","Serie","Editorial","Edicion",Date.new(2010,12,11),isbn)
        @art = Publicaciones.new(nombres,"Titulo",Date.new(2014,12,11),"http://wwww.android.developers.com")
        @nodo = Node.new(@b1,nil,nil)
        @list = Lista.new(@b1)
        @list = Lista.new(@pub)
       
        
    end #before each

  context "#APA" do
       before :each do
          
        nombres = 'Pepe Asecas:Bonifacio Ventura:Mariano Rajoy'.split(':')
        @art1 = Publicaciones.new(nombres,"Titulo",Date.new(2014,12,11),"http://wwww.android.developers.com")
        @art = Publicaciones.new(nombres,"Titulo",Date.new(2014,12,11),"http://wwww.android.developers.com")
        @a = Apa.new(@art)
        @b = Apa.new(@art1)
       
       end
   
    
        it "comprobar que existe" do
            expect(@a).to be_kind_of(Apa)
   end
        it "Debe existir la clase APA" do
            expect(@a).not_to eq(nil)
        end
        
        it "La clase tiene  una lista enlazada" do
            expect(@a.list).not_to eq(nil)
        end
   
        it "Existe un metodo que formatea y ordena los nombres" do
           aux = 'Rajoy M.:Ventura B.'.split(':')
           expect(@a.getAutores(@art)).to eq(aux)
        end
        
        it "Extraemos la referencia"do
            aux = 'Fowler C.:Hunt A.'.split(':')
            ref = "#{aux} 11/12/2014 Titulo Web http://www.android.developers.com"
            expect(@a.listaBiblios)
        end
    end
end


	