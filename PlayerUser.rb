# In this class, I'm gonna display the logic to make the game for the person
require_relative 'Characters'
class PlayerUser 

    attr_accessor :characters_instance
    # initialize class characters that has the colors to play
    def initialize
        @ins_characters = Characters.new
        @user_combination = user_combination
        
    end

    def start_user_game(state)
        if state
            
            handler_validations
            
        end
    end
    # instance of the array taht will be the secrect combination to the user to figure out
    def setting_characters
        list_to_play = @ins_characters.return_list_to_play(1)
        # puts list_to_play 
        list_to_play
    end

    # create a new array where it receives the user combination that want to play in any turn
    def user_combination
        array_user = Array.new(4)
        array_users_mapped = array_user.map.with_index do |_, index|
        puts "Ingrese un valor para la posición #{index}:"
        input = gets.chomp
        input_return = input.delete(" ").downcase
        input_return
        end
        # puts array_users_mapped.inspect
        array_users_mapped
     
    end
  
    # validacion del input del usuario
    def handler_validations
        turnos=2
        # --------------------------------------------------
        flag=true

        while turnos>0
            
            # instancio la lista de colores elegida aleatoriamente
        array_to_compare = setting_characters
        # instancio la lista que recibo del usuario
        puts "Combinacion:: #{array_to_compare}".green
        array_input_user = user_combination
        # first validation that the user input is ok! What he wrote is correctly the same as the options for him to choose
        validated_array= array_input_user.map.with_index do |element,index|

            if array_to_compare.include?(element)
                true
            else false    
            end
        end   
        puts validated_array
        if validated_array.include?(false)
            flag= false
            flag
        else flag
        end
        puts "Estado de la madre::#{flag}"
        
        # second validation w/ position. 
        aciertos = []
        array_input_user.each_with_index do |element, index|
          if element == array_to_compare[index]
            aciertos << index
          end
        end
        
        if aciertos.empty?
          puts "No acertaste ninguna combinacion, mejor suerte en el siguiente turno!."
        else
          aciertos_texto = aciertos.map { |index| "posición #{index + 1}" }.join(" y ")
          puts "El usuario acertó la #{aciertos_texto} de la combinación a adivinar en el array_to_compare."
        end

        puts aciertos.length

        if (flag) && (aciertos.length === array_to_compare.length)
            puts "You win!"
        else  turnos-=1
        end

        # the users need to pass both validation to win else it continue till the last turn o till the win
        

        end
        
    end
    
  
    
    
end


        