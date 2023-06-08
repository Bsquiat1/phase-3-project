import React, { useEffect, useState } from 'react';

const Exercises = () => {
  const [exercises, setExercises] = useState([]);
  const [selectedBodyPart, setSelectedBodyPart] = useState('');

  useEffect(() => {
    // Fetch exercises from the backend
    fetch('http://localhost:9292/exercises')
      .then((response) => response.json())
      .then((data) => setExercises(data))
      .catch((error) => console.log(error));
  }, []);

  const handleBodyPartChange = (e) => {
    setSelectedBodyPart(e.target.value);
  };

  const filteredExercises = selectedBodyPart
    ? exercises.filter((exercise) => exercise.muscle_group === selectedBodyPart)
    : exercises;

  return (
    <div>
      <h2>Exercises</h2>
      <div>
        <label>Select Body Part:</label>
        <select value={selectedBodyPart} onChange={handleBodyPartChange}>
          <option value="">All</option>
          <option value="Chest">Chest</option>
          <option value="Legs">Legs</option>
          <option value="Abs">Abs</option>
          <option value="Back">Back</option>
          <option value="Arms">Arms</option>
          <option value="Triceps">Triceps</option>
          <option value="Shoulders">Shoulders</option>
          
          
        </select>
      </div>
      <ul>
        {filteredExercises.map((exercise) => (
          <li key={exercise.id}>
            <h3>{exercise.name}</h3>
            <p>{exercise.description}</p>
            <p>Muscle Group: {exercise.muscle_group}</p>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default Exercises;
