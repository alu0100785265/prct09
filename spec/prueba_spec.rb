require 'spec_helper'
require 'bib'

describe "pruebas" do
    
  before :each do
      
                        @libro1 = Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide. (The Facets of Ruby)", "Pragmatic Bookshelf", "", 4, "(July 7, 2013)", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
                        @libro2 = Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide. (The Facets of Ruby)", "Pragmatic Bookshelf", "", 4, "(July 7, 2013)", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
                        @libro3 = Libro.new(["Have Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide. (The Facets of Ruby)", "Pragmatic Bookshelf", "", 4, "(July 7, 2013)", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])

    
    
    
                        @articulo = Articulo.new(["David Flanagan", "Yukihiro Matsumoto"], "The Ruby Programming Language", "2 de Febrero de 2008", ['ISBN-10: 0596516177', "ISBN-13: 978-0596516178"]) 
                        @articulo1 = Articulo.new(["David Flanagan", "Yukihiro Matsumoto"], "The Ruby Programming Language", "2 de Febrero de 2008", ['ISBN-10: 0596516177', "ISBN-13: 978-0596516178"]) 
                        @articulo2 = Articulo.new(["David Rodriguez", "Yukihiro Matsumoto"], "The Ruby Programming Language", "2 de Febrero de 2008", ['ISBN-10: 0596516177', "ISBN-13: 978-0596516178"]) 
                        @doc_electronico = Doc_electronico.new(["La vista"], "Las metodlogias del futuro","1 de Junio de 2003", "https://lavistadelfuro.com")
                        @periodico = Periodico.new(["Ariano Rajoy"], "La crisis no existe", "20-11-2015","Crisis 2.0", "Politiqueo")

      

    
              @lista1 = Lista.new()
              @lista1.insert_end(@libro1)
              @lista1.insert_end(@libro2)
              @lista1.insert_end(@libro3)
              @lista1.insert_end(@periodico)
            
              @lista2 = Lista.new()
              @lista2.insert_empty(2)
              @lista2.insert_empty(6)
              
              @lista3 = Lista.new()
              @lista3.insert_empty(2)
            
              @lista4 = Lista.new()
              @lista4.insert_empty(0)
              
             @lista5 = Lista.new()
              @lista5.insert_end(2)
              @lista5.insert_end(6)
              @lista5.insert_end(4)
              @lista5.insert_end(1)
              @lista5.insert_end(5)
              
end


  describe 'Prueba Comparación' do

   it "#El libro1 es igual al libro2" do
                expect(@libro1 == @libro2).to eq(true)
            end
            it "#El libro1 es igual al libro2" do
                expect(@libro1 < @libro3).to eq(true)
            end
            it "#El libro1 es igual al libro2" do
                expect(@articulo == @articulo1).to eq(true)
            end
            it "#El libro1 es igual al libro2" do
                expect(@articulo1 < @articulo2).to eq(true)
            end
            it "#El libro1 es igual al libro2" do
                expect(@libro1 > @libro3).not_to eq(true)
            end
            it "#El libro1 es igual al libro2" do
                expect(@articulo2 < @articulo1).not_to eq(true)
            end
            it "#El libro1 es igual al libro2" do
                expect(@libro2 > @articulo1).not_to eq(true)
            end
            it "#El libro1 es igual al libro2" do
                expect(@doc_electronico > @periodico).to eq(true)
            end
            
                
            end

  describe "Prueba Enumerable" do 
   
    
 
    it "prueba metodo count" do
      expect(@lista3.count).to eq(1)
    end  
     it "prueba metodo drop" do
      expect(@lista5.drop(1)).to eq([6,4,1,5])
     
    end
      it "prueba metodo drop" do
      expect(@lista5.drop(0)).to eq([2,6,4,1,5])
    end
    
     it "prueba metodo detect" do
      expect(@lista4.detect {|i| i == 0}).to eq(0)
    end
     
    
    
    
    
  end


end