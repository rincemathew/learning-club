import React from "react";
import ReactDOM from "react-dom";

const headingOne = React.createElement("h1",{},"hello world");
const headdingTwo = React.createElement("h2",{},"hello world");
const div = React.createElement("div",{},[headingOne,headdingTwo]);

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(div)
