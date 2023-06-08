puts "🌱 Seeding spices..."

# Clear existing data
User.destroy_all
Workout.destroy_all
Exercise.destroy_all

# Create Users
user1 = User.create(name: 'John Doe', email: 'john@example.com', password: 'password1')
user2 = User.create(name: 'Jane Smith', email: 'jane@example.com', password: 'password2')

# Create Exercises
exercise1 = Exercise.create(name: 'Push-ups', description: 'Classic upper body exercise', muscle_group: 'Chest')
exercise2 = Exercise.create(name: 'Squats', description: 'Lower body compound exercise', muscle_group: 'Legs')
exercise3 = Exercise.create(name: 'Sit-ups', description: 'Core exercise targeting abdominal muscles', muscle_group: 'Abs')

# Create Workouts for User 1
user1.workouts.create(date: Date.today, duration: 45)
user1.workouts.create(date: Date.today - 1, duration: 30)

# Create Workouts for User 2
user2.workouts.create(date: Date.today - 2, duration: 60)
user2.workouts.create(date: Date.today - 3, duration: 45)


puts "✅ Done seeding!"
