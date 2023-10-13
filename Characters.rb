# ----------------------------------------------Disclaimer--------------------------------------------------------
# This is the class that will contain the characters that will be displayed in the game board and also in the 
# instructios for the users.
# When I wrote "characters" two lines before, I mean that this will not only be played with colors, but also
# further on will be letters and numbers, the idea is to introduce levels, but not regular levels like in the
# general version of the most MasterMind. Let me clarify that there no problem with the most of the version of the 
# game but I want to make a different one in the future.
# ----------------------------------------------Disclaimer--------------------------------------------------------

class Characters
    
    def list_colors
        # From beggining 
        list_colors = ["verde","amarillo","rojo","azul"]
        list_colors
    end

    def return_list_to_play(game_mood = 2,level)
        # instance the list of colors
        array_colors = list_colors
        array_colors_sample= array_colors.sample(level +4)
        array_colors_sample
    end

   
end

