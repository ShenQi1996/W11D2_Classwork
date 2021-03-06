import React from 'react';
import ReactDOM from 'react-dom';
import { fetchAllPokemon } from "./util/api_util";
import { receiveAllPokemon} from "./actions/pokemon_actions";
import configureStore  from  "../frontend/store/store"

document.addEventListener('DOMContentLoaded', () => {
  const rootEl = document.getElementById('root');
  const store = configureStore()
  window.fetchAllPokemon = fetchAllPokemon;
  window.receiveAllPokemon = receiveAllPokemon;
  window.store = store;
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  ReactDOM.render(<h1>Pokedex</h1>, rootEl);
});