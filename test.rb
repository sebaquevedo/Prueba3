class Car
 @@t_instances = 0
 @@q_instances = 0

def count_t
	@@t_instances += 1
end

def count_q
	@@q_instances += 1
end

def show_t
	puts @@q_instances
end

def show_q
	puts @@q_instances
end


 # def self.count_instances
	# 	@@instances 
	# end
end

class T < Car
	def initialize
		count_t
	end	

	def count_t
		super
	end

	def self.imprimir
		puts @@t_instances
	end
end

class Q < Car
	def initialize
		count_q
	end	
	def count_q
		super
	end
	def self.imprimir
		puts @@q_instances
	end
end

20.times do
	T.new
end

T.imprimir

25.times do
	Q.new
end

Q.imprimir


# Modificar T, Q y Car para que Car pueda contar las
#  instancias respectivas de T y Q,además crear métodos
#   dentro de car para obtener el número de instancias
#    de cada uno.
# Para probar Crear 20 instancias de T y 25 de Q dentro 
# de Main.




