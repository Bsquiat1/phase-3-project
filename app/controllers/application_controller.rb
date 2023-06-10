class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Welcome route
  get '/' do
    'Welcome to the fitness app'
  end

  # Get all users
  get '/users' do
    users = User.all
    users.to_json
  end

  # Get a specific user
  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end

  # Create a new user
  post '/users' do
    user = User.new(params[:user])
    user.to_json

    
  end

  # log in
  get '/login' do
    user = User.find(params[:user])
    user.to_json
  end

  # Update a user
  patch '/users/:id' do
    user = User.find(params[:id])
    user.to_json

    
  endgit@github.com:Bsquiat1/phase-3-project.gitgit@github.com:Bsquiat1/phase-3-project.git

  # Delete a user
  delete '/users/:id' do
    user = User.destroy(params[:id])
    user.to_json

   
  end

  
  

 

  
 

  get '/exercises' do
    exercises = Exercise.all
    exercises.to_json
  end

  get '/exercises/:id' do
    exercise = Exercise.find(params[:id])
    exercise.to_json
  end

  


post '/register' do
  
  user = User.create(
    name: params[:name],
     email: params[:email],
      password: params[:password]
    )
  user.to_json

 
end
end
