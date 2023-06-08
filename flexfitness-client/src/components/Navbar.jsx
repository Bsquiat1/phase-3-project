import React from 'react';
import { Link } from 'react-router-dom';
import SearchBar from './Searchbar';

const Navbar = () => {
  return (
    <nav>
        < SearchBar />
      <ul>
        <li>
          <Link to="/">Home</Link>
        </li>
        <li>
          <Link to="/workouts">Workouts</Link>
        </li>
        <li>
          <Link to="/exercises">Exercises</Link>
        </li>
        <li>
          <Link to="/login">Login</Link>
        </li>
        <li>
          <Link to="/register">Register</Link>
        </li>
      </ul>
    </nav>
  );
};

export default Navbar;
