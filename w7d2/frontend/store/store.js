import { createStore } from 'redux';
import RootReducer from '../reducers/root_reducer';
import { applyMiddleware } from 'redux';

const configureStore = (preloadedState = {}) => {
  const store = createStore(RootReducer, preloadedState, applyMiddleware( addLoggingToDispatch));
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
};

const addLoggingToDispatch = store => next => action => {
    const dispatch = store.dispatch;
    console.log(dispatch);
    console.log(store.getState());
    console.log(action);
    let result = action;
    console.log(store.getState());
    return result;
};



export default configureStore;
