Workout App

The Workout App is a web application that allows users to create custom workouts and track their exercises. It consists of a Sinatra API backend and a React frontend.

Features


User Registration: Users can register an account with their name, email, and password.
User Login: Registered users can log in to their accounts using their email and password.
Workouts: Users can create custom workouts by adding exercises to their workouts.
Exercises: Users can browse through a list of exercises categorized by body parts and view exercise details.
CRUD Operations: Users can perform CRUD (Create, Read, Update, Delete) operations on their workouts and exercises.

Technologies Used


Sinatra: A lightweight Ruby web framework used to build the API backend.
Active Record: An Object-Relational Mapping (ORM) library for database interaction in Ruby.
SQLite: A lightweight, file-based database used to persist data for the application.
React: A JavaScript library for building user interfaces.
React Router: A routing library for handling navigation in the React frontend.
Bootstrap: A popular CSS framework for styling the frontend components.
Installation


Backend Setup


Fork and clone the repository for the Sinatra backend.
Navigate to the backend directory: cd workout-app-backend.
Install the required gems: bundle install.
Set up the database by running migrations: rake db:migrate.
Start the server: bundle exec rake server.
The backend API will be available at http://localhost:9292.

Frontend Setup


Create a new repository for the React frontend.
Set up the basic React app using create-react-app.
Replace the contents of the src folder with the frontend code.
Install the required dependencies: npm install.
Start the React development server: npm start.
The frontend app will be available at http://localhost:3000.


API Endpoints


GET /exercises: Retrieve a list of all exercises.
GET /exercises/:id: Retrieve details of a specific exercise
POST /workouts: Create a new workout.
GET /workouts/:id: Retrieve details of a specific workout.
PUT /workouts/:id: Update details of a specific workout.
DELETE /workouts/:id: Delete a specific workout

Contributing

Contributions to the Workout App project are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

Here's a link to the front-end.
https://github.com/Bsquiat1/phase-3-project-frontend

