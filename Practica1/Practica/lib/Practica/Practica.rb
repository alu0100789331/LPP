
  class Receta
    attr_accessor :Nombre_ ,:Porciones_ ,:Tiempo_preparacion_, :Ingredientes_, :Instrucciones_
    
    def initialize(*args)               #Construcctor sobrecargado
        if(args.count()==0)             #Sobrecarga sin parametros
          @Nombre_ = "Vacio"
          @Porciones_ = 0
          @Tiempo_preparacion_ = 0
          @Ingredientes_ = []
          @Instrucciones_ = []
        elsif(args.count()==5)          #Sobrecarga con parametros
          @Nombre_ = args[0]
          @Porciones_ = args[1]
          @Tiempo_preparacion_ = args[2]
          @Ingredientes_ = args[3]
          @Instrucciones_ = args[4]
        else                            #Eliminacion de errores
          puts "ERROR, NUMERO DE PARAMETROS INCORRECTOS!"
        end
    end
    
    def mostrar()
      puts                              #Limpiar del resto
      puts @Nombre_
      puts "============"
      puts 
      print "Porciones: ",@Porciones_
      puts
      print "Tiempo de preparacion: ",@Tiempo_preparacion_
      puts puts                         #Doble para el salto de linea + linea vacia
      puts "Ingredientes:"
      @Ingredientes_.each do |ingrediente|
        print ingrediente,","
      end
      puts puts                         #Doble para el salto de linea + linea vacia
      puts "Instrucciones:"
      #contador = 1
      @Instrucciones_.each do |instrucciones|
        print (@Instrucciones_.index(instrucciones))+1,") ",instrucciones
        #contador += 1
        puts
      end
      
    end

  end

