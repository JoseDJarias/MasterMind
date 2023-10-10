# In this class, I'm gonna display the logic to make the game for the person
class PlayerUser 

    def initial_colors
        list_colors = ["verde","amarillo","rojo","azul"]
    end

    def start_user_game(state)
        handler_colors
    end

    def handler_colors
        state_validation = handler_validations
        # si no pasa la validacion del input se encicla hasta que el usuario inserte correctamente
        unless state_validation
        counter= 0
            while counter<1
                list_colors= initial_colors
                joined_list=list_colors.join(", ")
                puts "Escribiste incorrectamente las opciones, recuerda que solo tienes disponibles los siguientes colores!".colorize(:red)
                puts "#{joined_list}".colorize(:red)
                state_validation = handler_validations
                if state_validation
                    counter=1
                    puts "Opciones validas! Hurra!".colorize(:green)
                    true
                    
                end
            end
        else true    
       end
    end

    def asking_colors
        puts "\nTendras que digitar uno por uno los colores a adivinar!".colorize(:black)
        puts "Escribe la combinacion a acertar por favor".colorize(:magenta)
    end
    # manejador de validaciones del usuario
    def handler_validations
        asking_colors
        color1 = gets.chomp.downcase.delete(" ")
        color2 = gets.chomp.downcase.delete(" ")
        color3 = gets.chomp.downcase.delete(" ")
        color4 = gets.chomp.downcase.delete(" ")
        array = Array.new
        array.push(color1,color2,color3, color4)
        validate_color_position(array)
        validation1= validate_user_input(color1,color2,color3,color4)
        validation1
    end
    # alidacion del input del usuario
    def validate_user_input(c1,c2,c3,c4)
        # inicializo la lista de colores elegida aleatoriamente
        list_colors_selected = select_random_list
        puts "#Lista de colores elegidos: #{list_colors_selected}"
        # en caso de insertar un valor vacio o escribir mal el color o insertar un caracter random no pasaria la validacion
        if ((c1 != "") && (c2!= "") && (c3 != "") && (c4 != "")) && ((list_colors_selected.include?(c1)) && (list_colors_selected.include?(c2)) && (list_colors_selected.include?(c3)) && (list_colors_selected.include?(c4)))
            true             
        else false    
        end
        
    end
    
    # metodo el cual tomo en un array los input del usuario para comenzar a validar la posicion de los colores
    def validate_color_position(array)
     
        
        
    end

    def select_random_list
        colors_array= initial_colors
        rand = colors_array.sample(4)
        rand
    end

    
    
end


        