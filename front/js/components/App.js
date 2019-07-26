/**
 * @file App component.
 */

import React from 'react';
import { Button } from 'react-bootstrap';

import Timestamp from './Timestamp';

const App = () => {
  return (
    <div>
      <h1>Test</h1>
      <Button>hola</Button>
      <Timestamp />
    </div>
  );
};

export default App;
