

module Bib
	class Referencia
		attr_reader :titulo, :autores, :fecha
		include Comparable
		def initialize(autores, titulo, fecha, pais=nil)
			raise ArgumentError, "El autor no es un array" unless autores.is_a?(Array)
			str=""
			autores.each do |a|
				raise ArgumentError, "Uno de los autores no es un string" unless a.is_a?(String)
				raise ArgumentError, "Se especifica unicamente el nombre o el apellido" unless a.split(' ').length > 1
				separado = a.split(/\W+/)
				str+=separado[1]
				str+=", "
				unless separado[2].nil?
					str+=separado[2][0]
					str+=". "
				end
				str+=separado[0][0]
				str+="."
				str+=" & " unless a == autores.last
			end
			@autores = str
			raise ArgumentError, "El titulo no es un string" unless titulo.is_a?(String)
			raise ArgumentError, "La fecha no es de tipo Date" unless fecha.is_a?(Date)
			raise ArgumentError, "El pais no es string o nulo" unless pais.nil? or pais.is_a?(String)

			titarr = titulo.split(' ')
			titarr.each do |palabra|
				if palabra.length > 3
					palabra.capitalize!
				else
					palabra.downcase!
				end
				if palabra == titarr[0]
					palabra.capitalize!
				end
			end

			@titulo = titarr.join(' ')

			@fecha = fecha
			@pais = pais
		end
		

		def <=>(other)
			if(@autores == other.autores)
				if(@fecha == other.fecha)
					if(@titulo == other.titulo)
						return 0 #Son iguales
					else
						arr = [@titulo, other.titulo]
						arr.sort_by!{|t| t.downcase}
						if(arr.first == @titulo)
							return 1
						end
						return -1
					end
				elsif fecha > other.fecha
					return -1
				else
					return 1
				end
			else
				arr = [@autores, other.autores]
				arr.sort_by!{|t| t.downcase}
				if(arr.first == @autores)
					return -1
				end
				return 1
			end
		end
	end
end