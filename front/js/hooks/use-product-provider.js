/**
 * @file TimestampProvider hook.
 */

import { useState } from 'react';
import axios from 'axios';

import getLogger from '../utils/logger';

const log = getLogger('ProductProvider');

const useProductProvider = () => {
  const [product, setProduct] = useState(null);

  const fetchProduct = async () => {
    try {
      const res = await axios.get('/products');
      // debugger;
      // console.log('response', res);

      setProduct(res.data.products);
    } catch (error) {
      log.error(error);
    }
  };

  return [product, fetchProduct];
};

export default useProductProvider;
