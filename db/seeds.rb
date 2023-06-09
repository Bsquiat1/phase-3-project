ActiveRecord::Base.connection.execute("PRAGMA foreign_keys = OFF")

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

exercise4 = Exercise.create(name: 'Lunges', description: 'Leg exercise for strengthening quadriceps and glutes', muscle_group: 'Legs')
exercise5 = Exercise.create(name: 'Plank', description: 'Core exercise for strengthening abs and lower back', muscle_group: 'Abs')
exercise6 = Exercise.create(name: 'Bench Press', description: 'Compound exercise for chest, shoulders, and triceps', muscle_group: 'Chest')
exercise7 = Exercise.create(name: 'Deadlifts', description: 'Full-body exercise targeting multiple muscle groups', muscle_group: 'Back')
exercise8 = Exercise.create(name: 'Bicep Curls', description: 'Isolation exercise for strengthening biceps', muscle_group: 'Arms')
exercise9 = Exercise.create(name: 'Shoulder Press', description: 'Exercise for developing shoulder muscles', muscle_group: 'Shoulders')
exercise10 = Exercise.create(name: 'Russian Twists', description: 'Core exercise for obliques and abdominal muscles', muscle_group: 'Abs')
exercise11 = Exercise.create(name: 'Pull-ups', description: 'Upper body exercise targeting back and arms', muscle_group: 'Back')
exercise12 = Exercise.create(name: 'Dips', description: 'Compound exercise for chest, triceps, and shoulders', muscle_group: 'Triceps')
exercise13 = Exercise.create(name: 'Plank Rows', description: 'Compound exercise for core, back, and arms', muscle_group: 'Abs')
exercise14 = Exercise.create(name: 'Leg Press', description: 'Lower body exercise targeting quads, hamstrings, and glutes', muscle_group: 'Legs')
exercise15 = Exercise.create(name: 'Calf Raises', description: 'Isolation exercise for strengthening calf muscles', muscle_group: 'Legs')
exercise16 = Exercise.create(name: 'Tricep Dips', description: 'Isolation exercise for strengthening triceps', muscle_group: 'Arms')
exercise17 = Exercise.create(name: 'Lateral Raises', description: 'Exercise for targeting lateral deltoids', muscle_group: 'Shoulders')
exercise18 = Exercise.create(name: 'Mountain Climbers', description: 'Full-body exercise that targets core, shoulders, and legs', muscle_group: 'Legs')
exercise19 = Exercise.create(name: 'Hamstring Curls', description: 'Isolation exercise for strengthening hamstring muscles', muscle_group: 'Legs')
exercise20 = Exercise.create(name: 'Renegade Rows', description: 'Compound exercise for core, back, and arms', muscle_group: 'Back')
exercise21 = Exercise.create(name: 'Incline Bench Press', description: 'Compound exercise for upper chest, shoulders, and triceps', muscle_group: 'Chest')
exercise22 = Exercise.create(name: 'Bicycle Crunches', description: 'Core exercise targeting abs and obliques', muscle_group: 'Abs')
exercise23 = Exercise.create(name: 'Romanian Deadlifts', description: 'Exercise for targeting hamstrings, glutes, and lower back', muscle_group: 'Back')
exercise24 = Exercise.create(name: 'Chin-ups', description: 'Upper body exercise targeting back and biceps', muscle_group: 'Back')
exercise25 = Exercise.create(name: 'Skull Crushers', description: 'Isolation exercise for targeting triceps', muscle_group: 'Arms')
exercise26 = Exercise.create(name: 'Front Raises', description: 'Exercise for developing front deltoids', muscle_group: 'Shoulders')




# Create Workout Programs
workout_program1 = Workout.create(name: 'Beginner Full Body Workout', description: 'A beginner-level workout program targeting the entire body.')
workout_program2 = Workout.create(name: 'Advanced Upper Body Strength', description: 'An advanced-level workout program focusing on upper body strength.')
workout_program3 = Workout.create(name: 'Intermediate Cardio Workout', description: 'An intermediate-level workout program for cardiovascular fitness.')

# Associate Workouts with Workout Programs
workout_program1.workout.create(name: 'Squat', sets: 3, reps: 12)
workout_program1.workout.create(name: 'Bench Press', sets: 3, reps: 10)
workout_program1.workout.create(name: 'Deadlift', sets: 3, reps: 8)

workout_program2.workout.create(name: 'Barbell Shoulder Press', sets: 4, reps: 8)
workout_program2.workout.create(name: 'Pull-ups', sets: 4, reps: 10)
workout_program2.workout.create(name: 'Dumbbell Rows', sets: 3, reps: 12)

workout_program3.workout.create(name: 'Treadmill Running', sets: 1, reps: 30)
workout_program3.workout.create(name: 'Cycling', sets: 1, reps: 45)
workout_program3.workout.create(name: 'Jumping Rope', sets: 3, reps: 60)



puts "✅ Done seeding!"
