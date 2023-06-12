class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # set :public_folder, File.dirname(__FILE__) + '/public'


  # Welcome route
  get '/' do
    'Welcome to the fitness app'
  end

 
  get '/users' do
    users = User.all
    users.to_json
  end

 
  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end

  
  post '/users' do
    user = User.new(params[:name], params[:password])
    user.to_json

    
  end

  
  get '/login' do
    user = User.find(params[:user])
    user.to_json
  end

 
  patch '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end

 
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

post '/workouts' do
  workouts = Workout.create(
    name: params[:name],
    sets: params[:sets],
    reps: params[:reps],
    duration: params[:duration]

  )
  workouts.to_json
end

get '/workouts' do
  
  workouts = Workout.all
  workouts.to_json
end



end
