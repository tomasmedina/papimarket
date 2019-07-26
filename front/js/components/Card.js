/**
 * @file Card component.
 */

import React from 'react';
import Card from 'react-bootstrap/Card';
import Button from 'react-bootstrap/Button';
import ListGroup from 'react-bootstrap/ListGroup';
import ListGroupItem from 'react-bootstrap/ListGroupItem';
import FlexView from 'react-flexview';
import { Dictionary } from '../../../lib/assets/dictionary';

const styles = {
  card: {
    width: window.innerWidth * 0.3,
    margin: 5,
  },
  container: {
    paddingLeft: '3.5rem',
  },
};

const CardComponent = props => {
  const cardList = props.props.products.map(product => (
    <Card style={styles.card}>
      <Card.Img
        variant="top"
        src={product.image}
        style={{
          height: window.innerHeight * 0.5,
          width: window.innerWidth * 0.3,
        }}
      />
      <Card.Body>
        <Card.Title>{product.title}</Card.Title>
        <Card.Text>{product.description}</Card.Text>
      </Card.Body>
      <ListGroup className="list-group-flush">
        <ListGroupItem>
          {Dictionary.Card.category} {product.category_id}
        </ListGroupItem>
        <ListGroupItem>
          {Dictionary.Card.seller} {product.user_id}
        </ListGroupItem>
        <ListGroupItem>
          {Dictionary.Card.stock} {product.stock}
        </ListGroupItem>
        <ListGroupItem>
          {Dictionary.Card.expirationDate} {product.expiration_date}
        </ListGroupItem>
      </ListGroup>
      <Card.Body>
        <Button variant="primary">{Dictionary.Card.viewMore}</Button>
      </Card.Body>
    </Card>
  ));

  return (
    <FlexView style={styles.container} wrap>
      {cardList}
    </FlexView>
  );
};

export default CardComponent;
