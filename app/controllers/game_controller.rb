# use the same name that we used before, but this time because it's a class, Ruby uses capitals, does not use underscore
# This inherits from ApplicationController (something that Ruby gives us immediately)
# class, if, def, do -- all must have an "end"
class GameController < ApplicationController
    
    #to navigate home
    def user_home
        render("move_templates/index.html.erb")
    end
    
    #defines user_plays_rock as specified in routes.rb
    def user_plays_rock
        #we keep as much of our ruby code here as possible
        
        # we first create an array of computer moves
        @computer_move_list = ["rock", "paper", "scissors"]
        
        #randomly choose computer move
        @computer_move = @computer_move_list.sample
        
        # Logic for moves and results

        #initialize result as nil
        @rock_game_result = nil
        
        if (@computer_move == "rock")
            @rock_game_result = "We tied!"
        elsif (@computer_move == "paper")
            @rock_game_result = "We lost!"
        else
            @rock_game_result = "We won!"
        end
        
        render("move_templates/played_rock.html.erb")
    end
    
    #defines user_plays_paper
    def user_plays_paper
        # is there any way to recycle computer_move_list?
        # we first create an array of computer moves
        @computer_move_list = ["rock", "paper", "scissors"]
    
        #randomly choose computer move
        @computer_move = @computer_move_list.sample
        
        # Logic for moves and results
    
        #initialize result as nil
        @paper_game_result = nil
        
        if (@computer_move == "rock")
            @paper_game_result = "We won!"
        elsif (@computer_move == "paper")
            @paper_game_result = "We tied!"
        else
            @paper_game_result = "We lost!"
        end
        
        render("move_templates/played_paper.html.erb")
    end
    
    #defines user_plays_scissors
    def user_plays_scissors
        
        # is there any way to recycle computer_move_list?
        # we first create an array of computer moves
        @computer_move_list = ["rock", "paper", "scissors"]
    
        #randomly choose computer move
        @computer_move = @computer_move_list.sample
        
        # Logic for moves and results
    
        #initialize result as nil
        @scissors_game_result = nil
        
        if (@computer_move == "rock")
            @scissors_game_result = "We lost!"
        elsif (@computer_move == "paper")
            @scissors_game_result = "We won!"
        else
            @scissors_game_result = "We tied!"
        end
        render("move_templates/played_scissors.html.erb")
    end
    
end