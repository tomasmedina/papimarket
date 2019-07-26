/**
 * @file Card component.
 */

import React from 'react';

const Card = product => {
  const { name } = product;
  return (
    <div>
      <h1>{name}</h1>
    </div>
  );
};

export default Card;
