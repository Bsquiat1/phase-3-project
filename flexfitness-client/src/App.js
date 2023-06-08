import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';


import Home from './components/Home';
import Workouts from './components/Workouts';
import Exercises from './components/Exercises'
import Login from './components/Login';
import Register from './components/Register';


const App = () => {
  

  return (
    <Router>
      <div className="App">
        <Routes>
          <Route exact path="/" component={<Home />} />
          <Route exact path="/workouts" component={<Workouts />} />
          <Route exact path="/exercises" component={<Exercises />} />
          <Route exact path="/login" component={<Login />} />
          <Route exact path="/register" component={<Register />} />
          
        </Routes>
      </div>
    </Router>
  );
};

export default App;
