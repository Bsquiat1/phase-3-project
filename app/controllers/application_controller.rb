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

    if user.save
      user.to_json
    else
      status 422
      { error: "Failed to create user" }.to_json
    end
  end

  # Update a user
  patch '/users/:id' do
    user = User.find(params[:id])

    if user.update(params[:user])
      user.to_json
    else
      status 422
      { error: "Failed to update user" }.to_json
    end
  end

  # Delete a user
  delete '/users/:id' do
    user = User.find(params[:id])

    if user.destroy
      { message: "User deleted successfully" }.to_json
    else
      status 422
      { error: "Failed to delete user" }.to_json
    end
  end

  
  

 

  
 

  get '/exercises' do
    exercises = Exercise.all
    exercises.to_json
  end

  get '/exercises/:id' do
    exercise = Exercise.find(params[:id])
    exercise.to_json
  end

  # Create action
post "/workouts" do
  workout = Workout.new(params[:workout])
  workout.image = params[:workout][:image].tempfile if params[:workout][:image]

  if workout.save
    # Success logic
  else
    # Error logic
  end
end

# Update action
patch "/workouts/:id" do
  workout = Workout.find(params[:id])
  workout.assign_attributes(params[:workout])
  workout.image = params[:workout][:image].tempfile if params[:workout][:image]

  if workout.save
    # Success logic
  else
    # Error logic
  end
end


  # Start the Sinatra application
  run if app_file == $0
end

post '/login' do
  email = params[:email]
  password = params[:password]

  # Find the user by email
  user = User.find_by(email: email)

  if user && user.authenticate(password)
    # Authentication successful
    session[:user_id] = user.id
    { message: 'Login successful' }.to_json
  else
    # Authentication failed
    { error: 'Invalid email or password' }.to_json
  end
end

# Protected route (requires authentication)
get '/protected' do
  # Check if user is authenticated
  if session[:user_id]
    { message: 'You are logged in' }.to_json
  else
    { error: 'Unauthorized' }.to_json
  end
end

# Logout route
post '/logout' do
  # Clear the session
  session.clear
  { message: 'Logout successful' }.to_json
end
post '/register' do
  user = User.new(name: params[:name], email: params[:email], password: params[:password])

  if user.save
    status 201
    { message: 'Registration successful' }.to_json
  else
    status 400
    { error: 'Registration failed', errors: user.errors.full_messages }.to_json
  end
end