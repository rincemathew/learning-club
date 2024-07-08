import {createStore} from 'https://cdn.skypack.dev/redux@5.0.1';

const initialState = {
    value: 0
}

//function reducer
function appReducer(prevState = initialState, action) {
    switch(action.type) {
        case 'increment':
            return {
                ...prevState,
                value: prevState.value + 1
            };
        case 'decrement':
            return {
                ...prevState,
                value: prevState.value - 1
            };
        default:
            return prevState;
    }
}

//creating a store
const store = createStore(appReducer);

const state = store.getState();

//subscribe
store.subscribe(()=>{
    document.getElementById('value').innerText = store.getState().value;
});

document.getElementById('value').innerText = state.value;

document.getElementById('increment').onclick = ()=>{
    store.dispatch({
        type:'increment',
    });
}

document.getElementById('decrement').onclick = ()=>{
    store.dispatch({
        type:'decrement'
    });
}
