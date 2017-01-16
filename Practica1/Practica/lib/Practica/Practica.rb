
  class Receta
    attr_accessor :Nombre_ ,:Porciones_ ,:Tiempo_preparacion_, :Ingredientes_, :Instrucciones_
    def initialize(*args)
        if(args.count()==0)
          @Nombre_ = "Vacio"
          @Porciones_ = 0
          @Tiempo_preparacion_ = 0
          @Ingredientes_ = []
          @Instrucciones_ = []
        elsif(args.count()==5)
          @Nombre_ = args[0]
          @Porciones_ = args[1]
          @Tiempo_preparacion_ = args[2]
          @Ingredientes_ = args[3]
          @Instrucciones_ = args[4]
        else
          puts "ERROR, NUMERO DE PARAMETROS INCORRECTOS"
        end
    end

  end

