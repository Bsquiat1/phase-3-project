import React, { useEffect, useState } from 'react';

const Exercises = () => {
  const [exercises, setExercises] = useState([]);

  useEffect(() => {
    // Fetch exercises from the backend
    fetch('http://localhost:9292/exercises')
      .then((response) => response.json())
      .then((data) => setExercises(data))
      .catch((error) => console.log(error));
  }, []);

  return (
    <div>
      <h2>Exercises</h2>
      <ul>
        {exercises.map((exercise) => (
          <li key={exercise.id}>
            <h3>{exercise.name}</h3>
            <p>{exercise.description}</p>
            <p>Muscle Group: {exercise.muscleGroup}</p>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default Exercises;
