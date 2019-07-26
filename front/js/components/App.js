/**
 * @file App component.
 */

import React from 'react';
import { Card } from 'react-bootstrap';
import { Button } from 'react-bootstrap/Button';

const App = () => {
  const product = { name: 'producto1' };
  return (
    <div>
      <h1>Test</h1>
      <Card style={{ width: '18rem' }}>
        <Card.Body>
          <Card.Title>Card Title</Card.Title>
          <Card.Text>
            Some quick example text to build on the card title and make up the
            bulk of the card's content.
          </Card.Text>
          <Button variant="primary">Go somewhere</Button>
        </Card.Body>
      </Card>
    </div>
  );
};

export default App;
