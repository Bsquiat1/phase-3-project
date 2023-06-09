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

  # Get all workouts for a specific user
  get '/users/:user_id/workouts' do
    user = User.find(params[:user_id])
    workouts = user.workouts
    workouts.to_json
  end

  # Get a specific workout for a specific user
  get '/users/:user_id/workouts/:id' do
    user = User.find(params[:user_id])
    workout = user.workouts.find(params[:id])
    workout.to_json
  end

  # Create a new workout for a specific user
  post '/users/:user_id/workouts' do
    user = User.find(params[:user_id])
    workout = user.workouts.new(params[:workout])

    if workout.save
      workout.to_json
    else
      status 422
      { error: "Failed to create workout" }.to_json
    end
  end

  # Update a workout for a specific user
  patch '/users/:user_id/workouts/:id' do
    user = User.find(params[:user_id])
    workout = user.workouts.find(params[:id])

    if workout.update(params[:workout])
      workout.to_json
    else
      status 422
      { error: "Failed to update workout" }.to_json
    end
  end

  # Delete a workout for a specific user
  delete '/users/:user_id/workouts/:id' do
    user = User.find(params[:user_id])
    workout = user.workouts.find(params[:id])

    if workout.destroy
      { message: "Workout deleted successfully" }.to_json
    else
      status 422
      { error: "Failed to delete workout" }.to_json
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
  # Extract the registration data from the request body
  data = JSON.parse(request.body.read)
  name = data['name']
  email = data['email']
  password = data['password']

  # Create a new user using the registration data
  user = User.create(name: name, email: email, password: password)

  if user.valid?
    # Registration successful
    status 201
    { message: 'Registration successful' }.to_json
  else
    # Registration failed
    status 422
    { error: 'Registration failed' }.to_json
  end
end
