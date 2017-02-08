#ejercicio 1
class T
 def method1()

 end
end
T.method1


class T
 def method1(algo)
 	puts algo
 end
end
ins = T.new
ins.method1("hola viteh!")

#ejercicio 2
#Se tiene el siguiente código que no funciona,
# para arreglarlo se pide que método1
#funcione como método de clase.

class T
 def method1(algo)
 	puts algo
 end
end

T.method1("estoy inicializando")

#3 Se tiene el siguiente código, 
#se pide convertir la clase en un módulo

class Prueba
 	@@A = 5
	def self.A
	 	@@A
	end
end

module Prueba
	A = 5
	def A
		A	
	end
end

#4 Se tiene el siguiente objeto.

class Complejo
 def initialize(x, y)
 @x = x
 @y = y
 end

 def +(complejo)
 Complejo.new(@x + complejo.x, @y + complejo.y)
 end
end

#Pero tiene un problema menor, arreglarlo.

#respuesta
class Complejo
 def initialize(x, y)
 @x = x
 @y = y
 end

 def complejo
 	Complejo.new(@x + complejo.x, @y + complejo.y)
 end
end
# 
# #5 Se tienen los siguientes objetos:
class T
 	def method1
	end
end
class Q
end

# Se pide que:
# Q herede de T
# Q al hacer inicializado llame a method1
# method1 debe devolver un número al azar
# El método devuelto debe ser guardado en una 
# variable de instancia de Q
#respuesta
class T
	def initialize
		method1
	end

 	def method1
 		return rand(0..2)
	end
end
class Q < T
	def initialize
		puts super
	end
end

 random_generado = Q.new
# puts random_generado

#6 Dado los siguientes objetos:
module Priceable
 attr_accessor :price
 def discoutend_price(discount)
 @price - @price * discount
 end
end
class Product
 include Priceable
 def initialize(price)
 @price = price
 end
end
#Crear el módulo Stockable, este módulo introduce 
#la variable stock y debe tener un método llamado 
#has_stock?, que devuelva true si el stock es mayor 
#que cero.

#respuesta
module Priceable
 attr_accessor :price
	 def discoutend_price(discount)
	 @price - @price * discount
	 end
end

module Stockable
	attr_accessor :stock
	def initialize(stock)
		@stock = stock
	end
	def has_stock?(stock)
		if stock > 0
			return true
		end

		return false
	end
end

class Product
 include Priceable
 include Stockable
	 def initialize(price)
	 @price = price
	 end

	 P = Product.new(86)
	 puts P.has_stock?(6)
end

# 7 Dado el siguiente código

# Modificar T, Q y Car para que Car pueda contar las
#  instancias respectivas de T y Q,además crear métodos
#   dentro de car para obtener el número de instancias
#    de cada uno.
# Para probar Crear 20 instancias de T y 25 de Q dentro 
# de Main.

class Car
 @@t_instances = 0
 @@q_instances = 0
end

class T
end

class Q
end

#respuesta

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



