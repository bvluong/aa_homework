import merge from 'lodash/merge';

const initialState = {
  baseCurrency: "Please select",
  rates: {}
};

const reducer = (state = initialState, action) => {
  switch(action.type) {
    case "SWITCH_CURRENCY":
      delete action["type"];
      return action;
    default:
      return state;
  }
};

window.reducer = reducer;
export default reducer;
