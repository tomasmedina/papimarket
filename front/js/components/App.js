/**
 * @file App component.
 */

import React, { useEffect, useState } from 'react';
import axios from 'axios';
import CardComponent from './Card';

const App = () => {
  const [products, setProducts] = useState({
    products: null,
  });

  const fetchProducts = async () => {
    await axios.get('/products').then(response => {
      const { data } = response;
      setProducts(oldProducts => ({ ...oldProducts, products: data }));
    });
  };

  useEffect(() => {
    fetchProducts();
  }, []);

  return (
    <div>
      <h1>Test</h1>
      {products.products ? (
        <CardComponent props={products.products} />
      ) : (
        console.log('NANI')
      )}
    </div>
  );
};

export default App;
