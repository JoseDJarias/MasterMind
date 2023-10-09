require 'colorize'
require_relative 'GameBoard'

# Clase principal para el juego MasterMind

class MasterMind

        def initialize
          
        end

        def starting_messages      
        puts "\nBienvenido al juego MasterMind! Por favor escribenos tu nombre".colorize(:cyan)
        nombre_usuario= gets.chomp
        puts  "\n//////////////////////////////////////// Hola #{nombre_usuario}! ////////////////////////////////////////".colorize(:magenta)
    
        # Indicaciones
        puts "\nEl juego consiste en adivinar una serie de codigo de colores en 12 turnos aproximadamente".colorize(:cyan)
        puts "___________________________________________________________________________________________"
        show_game_options
        puts "___________________________________________________________________________________________"
        puts "\nSe mostrará al lado izquiero una retroalimentacion del codigo dado".colorize(:cyan)
        puts "Asterisco significa que algun color esta en un posición correcta".colorize(:cyan)
        puts "Puntito  es que el color existe pero no en la posicion correcta".colorize(:cyan)
        puts "\n BUENA SUERTE EN TU JUEGO!".colorize(:magenta)
    end
    
    def show_game_options
        puts "\nCuenta con dos modos de juego: 
        \n1-La maquina adivina el codigo de colores.
        \n2-Un usuario intenta descrifrar la combinacion de colores"
        puts "\nAclaracion".colorize(:magenta)
        puts "Primera opcion: la computadora seleccionara un codigo especifico de 4 colores al azar que deberás adivinar en 12 turnos exactos o menos.".colorize(:cyan)
        puts "Segunda opcion: tu introduces una combinacion de colores y la compu adivina la combinacion".colorize(:cyan)
        
    end

    def choose_option
        puts "\nAhora que ya avanzamos en la introducciones e indicaciones .Por favor ahora elegi una opcion: entre 1 y 2
        \n1-La maquina adivina el codigo de colores.\n2-Un usuario intenta descrifrar la combinacion de colores".colorize(:cyan)
        option = gets.chomp.to_i
        count= 0
        if option === 1
            puts "Elegiste el modo de juego 1".colorize(:green)
            option
        elsif option===2
            puts "Elegiste el modo de juego 2".colorize(:green)
            option
        elsif (option !=1) || (option!=2)
            while count <1
                puts "Vuelve a elegir un modo de juego".colorize(:red)
                option = gets.chomp.to_i
                if (option === 1) || (option === 2)
                    puts "Ahora si, iniciemos el juego, elegiste la opcion: #{option}".colorize(:green)
                    count =1
                    option
                else puts "Elegi una opcion entre 1 0 2".colorize(:red)    
                end
            end
        end
        option
    end

    def option_selected
        selected = choose_option
        selected
    end


    


    def game
        starting_messages
        option_selected
    end

    

end

master = MasterMind.new
master.game
