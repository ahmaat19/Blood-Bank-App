import {
  GET_INVENTORIES_DASHBOARD,
  GET_INVENTORIES,
  ADD_INVENTORY,
  DELETE_INVENTORY,
  UPDATE_INVENTORY,
} from '../actions/types';

const initialState = {
  inventories: [],
  inventories_filter: [],
};

export default function (state = initialState, action) {
  switch (action.type) {
    case GET_INVENTORIES_DASHBOARD:
      return {
        ...state,
        inventories_filter: action.payload,
      };
    case GET_INVENTORIES:
      return {
        ...state,
        inventories: action.payload,
      };
    case ADD_INVENTORY:
      return {
        ...state,
        inventories: [...state.inventories, action.payload],
      };
    case UPDATE_INVENTORY:
      const inventoriesExisted = state.inventories.filter(
        (transfusion) => transfusion.id !== action.payload.id
      );
      return {
        inventories: [action.payload, ...inventoriesExisted],
      };

    case DELETE_INVENTORY:
      return {
        ...state,
        inventories: state.inventories.filter(
          (transfusion) => transfusion.id !== action.payload
        ),
      };
    default:
      return state;
  }
}
