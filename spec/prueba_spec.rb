require 'spec_helper'
require 'bib'

        
         describe "#Pruebas include comparable y enumerable" do
            
            before :each do
                        @libro1 = Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide. (The Facets of Ruby)", "Pragmatic Bookshelf", "", 4, "(July 7, 2013)", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
                        @libro2 = Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide. (The Facets of Ruby)", "Pragmatic Bookshelf", "", 4, "(July 7, 2013)", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
                        @libro3 = Libro.new(["Have Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide. (The Facets of Ruby)", "Pragmatic Bookshelf", "", 4, "(July 7, 2013)", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])

                        @articulo = Articulo.new(["David Flanagan", "Yukihiro Matsumoto"], "The Ruby Programming Language", "2 de Febrero de 2008", ['ISBN-10: 0596516177', "ISBN-13: 978-0596516178"]) 
                        @articulo1 = Articulo.new(["David Flanagan", "Yukihiro Matsumoto"], "The Ruby Programming Language", "2 de Febrero de 2008", ['ISBN-10: 0596516177', "ISBN-13: 978-0596516178"]) 
                        @articulo2 = Articulo.new(["David Rodriguez", "Yukihiro Matsumoto"], "The Ruby Programming Language", "2 de Febrero de 2008", ['ISBN-10: 0596516177', "ISBN-13: 978-0596516178"]) 
        
        
                         @doc_electronico = Doc_electronico.new(["La vista"], "Las metodlogias del futuro","1 de Junio de 2003", "https://lavistadelfuro.com")
                         @periodico = Periodico.new(["Mariano Rajoy"], "La crisis no existe", "20-11-2015","Crisis 2.0", "Politiqueo")
   
        
                                
                         
			    
            end
            
            
            it "#El libro1 es igual al libro2" do
                expect(@libro1 == @libro2).to eq(true)
            end
            it "#El autor de libro1 va antes que el de libro3" do
                expect(@libro1 < @libro3).to eq(true)
            end
            it "#El autor de articulo es igual al autor de articulo1" do
                expect(@articulo == @articulo1).to eq(true)
            end
            it "#El autor de articulo1 va antes que el de articulo2" do
                expect(@articulo1 < @articulo2).to eq(true)
            end
            it "#El autor de libro1 no va antes que el de libro2" do
                expect(@libro1 > @libro3).not_to eq(true)
            end
            it "#El autor de articulo2 no va despues que el de articulo1" do
                expect(@articulo2 < @articulo1).not_to eq(true)
            end
            it "#El autor de libro2 va antes que el de articulo1 " do
                expect(@libro2 > @articulo1).not_to eq(true)
            end
            it "#El autor de doc_electronico no es menor al autor de periodico" do
                expect(@doc_electronico > @periodico).not_to eq(true)
            end
            it "#El autor de doc_electronico es menor al autor de periodico" do
                expect(@doc_electronico < @periodico).to eq(true)
            end
             
                
                
             
            end
    