class GameController < ApplicationController
 
   def user_plays_scissors
     render("move_templates/played_scissors.html.erb")
     
     options = ["rock","paper","scissors"]
      @computer_move = options.sample
       
      if @computer_move == "scissors"
         @outcome = "tied"
         elsif @computer_move == "rock"
         @outcome = "lose"
         else @outcome = "won"
      end
   end
   
   def user_plays_rock
       
      options = ["rock","paper","scissors"]
      @computer_move = options.sample
       
      if @computer_move == "rock"
         @outcome = "tied"
         elsif @computer_move == "paper"
         @outcome = "lose"
         else @outcome = "won"
      end
       render("move_templates/played_rock.html.erb")
   end
   
   def user_plays_paper
      
      options = ["rock","paper","scissors"]
      @computer_move = options.sample
       
      if @computer_move == "paper"
         @outcome = "tied"
         elsif @computer_move == "scissors"
         @outcome = "lose"
         else @outcome = "won"
      end
       render("move_templates/played_paper.html.erb")
   end
end