lass Fraccionario

attr_reader :num,:den

include Comparable
include Enumerable

#-------------------------------------------------------------------------------
def mcd(a,b)
d = a.abs, b.abs
while d.min != 0
d = d.min, d.max%d.min
end
d.max
end
private :mcd

#construccion
def initialize(num, den)
max = mcd(num, den)
@num = num / max
@den = den / max
end


#-------------------------------------------------------------------------------
#Impresion por pantalla
def imprimirFraccion
"#{@num}/#{@den}"
end

def imprimirFlotante
      @num.to_f/@den.to_f
end



#-------------------------------------------------------------------------------
#sobrecarga de operadores
def ==(other)
if (@num == other.num) && (@den == other.den)
true
else
false
end
end

def + (other)
Fraccionario.new(@num* other.den + other.num*@den, @den * other.den)
end

def - (other)
Fraccionario.new(@num* other.den - other.num*@den, @den * other.den)
end

def * (other)
Fraccionario.new(@num* other.num, @den * other.den)
end

def / (other)
Fraccionario.new(@num* other.den, @den * other.num)
end

def % (other)
Fraccionario.new((imprimirFlotante % other.imprimirFlotante*1000).to_i, 1000)
end

def <=> (other)
imprimirFlotante <=> other.imprimirFlotante
end




#-------------------------------------------------------------------------------
#valor absoluto fraccion
def abs
if (@num < 0) ^ (@den < 0)
if @num < 0
Fraccionario.new(@num*-1, @den)
else
Fraccionario.new(@num, @den*-1)
end

elsif (@num < 0) && (@den < 0)
Fraccionario.new(@num*-1, @den*-1)

else
Fraccionario.new(@num, @den)
end
end




#-------------------------------------------------------------------------------
#inverso de una fraccion
def reciprocal
Fraccionario.new(@den, @num)
end




#-------------------------------------------------------------------------------
#opuesta de una fraccion
def -@
Fraccionario.new(@num*-1, @den)
end

end
