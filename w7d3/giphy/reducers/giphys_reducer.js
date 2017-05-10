import { RECEIVE_SEARCH_GIPHYS } from '../actions/giphy_actions';
import merge from 'lodash/merge';

const GiphysReducer = (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SEARCH_GIPHYS:
      let newState = merge({},state);
      return action.giphys;
    default:
      return state;
  }
};

export default GiphysReducer;
