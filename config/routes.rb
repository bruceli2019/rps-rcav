Rails.application.routes.draw do
  
  # this sets up the routes for users to naviagate the page
  # page to /rock, we can set controller, action anything but just stay consistent. controller => "game" goes into the controllers file and refers to game_controller.rb (a file we created and named)
  get("/rock", { :controller => "game", :action => "user_plays_rock"})
  
  #set up scissors page
  get("/scissors", { :controller => "game", :action => "user_plays_scissors"})
  
  #set up paper page
  get("paper", { :controller => "game", :action => "user_plays_paper"})
  
  #set up index page
  get("/", { :controller => "game", :action => "user_home"})
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
