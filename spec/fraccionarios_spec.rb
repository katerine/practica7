require 'fraccionarios'

describe Fraccionario do
  before :each do
    @numero = Fraccionario.new(3,4)
  end

  
#-------------------------------------------------------------------------------
  it "Debe de estar en su forma reducida" do
    @aux = Fraccionario.new(10,5)
    @aux.imprimirFraccion.should == "2/1"
  end


#-------------------------------------------------------------------------------
  it "Debe existir un numerador" do
    @numero.num.is_a?(Numeric).should == true
  end

#-------------------------------------------------------------------------------
  it "Debe existir un denominador" do
    @numero.den.is_a?(Numeric).should == true
  end

#-------------------------------------------------------------------------------
  it "Se debe invocar al metodo num() para obtener el numerador" do
    @numero.num.should == 3
  end

#-------------------------------------------------------------------------------
  it "Se debe invocar al metodo den() para obtener el numerador" do
    @numero.den.should == 4
  end

#-------------------------------------------------------------------------------
  it "Se debe mostrar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
    @numero.imprimirFraccion.should == "3/4"
  end

#-------------------------------------------------------------------------------
  it "Se debe mostrar por la consola la fraccion en formato flotante" do
    @numero.imprimirFlotante.should == 0.75
  end


#-------------------------------------------------------------------------------
  it "Se debe comparar si dos fracciones son iguales con ==" do
    @numero == Fraccionario.new(3,4)
  end


#-------------------------------------------------------------------------------
  it "Se debe calcular el valor absoluto de una fraccion con el metodo abs (Prueba denominador negativo)" do
    @aux = Fraccionario.new(3,-4)
    @aux = @aux.abs
    @aux.imprimirFraccion.should == "3/4"
  end


#-------------------------------------------------------------------------------
  it "Se debe calcular el valor absoluto de una fraccion con el metodo abs (Prueba denominador y numerador negativo)" do
    @aux = Fraccionario.new(-3,-4)
    @aux = @aux.abs
    @aux.imprimirFraccion.should == "3/4"
  end


#-------------------------------------------------------------------------------
  it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal)" do
    @numero.reciprocal.imprimirFraccion.should == "4/3"
  end


#-------------------------------------------------------------------------------
it "Se debe calcular el opuesto de una fraccion con -" do
    @numero.-@.imprimirFraccion.should == "-3/4"
end
  

#-------------------------------------------------------------------------------
it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
    (@numero + Fraccionario.new(13,4)).imprimirFraccion.should == "4/1"
end


#-------------------------------------------------------------------------------
it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
    (@numero - (Fraccionario.new(13,4))).imprimirFraccion.should == "-5/2"
end

#-------------------------------------------------------------------------------
it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
    (@numero * (Fraccionario.new(4,3))).imprimirFraccion.should == "1/1"
end

#-------------------------------------------------------------------------------
it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
    (@numero / (Fraccionario.new(2,2))).imprimirFraccion.should == "3/4"
end

#-------------------------------------------------------------------------------
it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
    (@numero % (Fraccionario.new(3,4))).imprimirFraccion.should == "0/1"
end


#-------------------------------------------------------------------------------
it "Se debe de poder comprobar si una fracion es menor que otra" do
    (@numero < (Fraccionario.new(3,2))).should == true
end

#-------------------------------------------------------------------------------
it "Se debe de poder comprobar si una fracion es mayor que otra" do
    (@numero > (Fraccionario.new(1,2))).should == true
end

#-------------------------------------------------------------------------------
it "Se debe de poder comprobar si una fracion es menor o igual que otra" do
    (@numero <= (Fraccionario.new(3,4))).should == true
end


#-------------------------------------------------------------------------------
it " Se debe de poder comprobar si una fracion es mayor o igual que otra" do
    (@numero >= (Fraccionario.new(1,2))).should == true
end



end
