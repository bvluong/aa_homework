import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = {result: 0, num1:"", num2:""};
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.clear = this.clear.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);

  }

  setNum1(e) {
    e.preventDefault();
    if (e.target.value === "") {
        this.setState ( { num1: "" } );
    } else {
      this.setState ( { num1: parseInt(e.target.value) } );
    }
  }

  setNum2(e) {
    e.preventDefault();
    if (e.target.value === "") {
        this.setState ( { num2: "" } );
    } else {
      this.setState ( { num2: parseInt(e.target.value) } );
    }
  }

  clear(e) {
    e.preventDefault();
    this.setState ( { num1: "" } );
    this.setState ( { num2: "" } );
    this.setState ( { result: 0 } );
  }

  add(e) {
    e.preventDefault;
    this.setState ( { result: this.state.num1 + this.state.num2 } );
  }

  subtract(e) {
    e.preventDefault;
    this.setState ( { result: this.state.num1-this.state.num2 } );
  }

  multiply(e) {
    e.preventDefault;
    this.setState ( { result: this.state.num1 * this.state.num2 } );
  }

  divide(e) {
    e.preventDefault;
    this.setState ( { result: this.state.num1 / this.state.num2 } );
  }

  render(){
    const {num1, num2} = this.state;
    return (
      <div>
        <h1>{this.state.result}</h1>
        <input onChange={this.setNum1} value={num1}/>
        <input onChange={this.setNum2} value={num2}/>
        <button onClick={this.clear}>Clear!</button>
        <br/>
        <button onClick={this.add}>+</button>
        <button onClick={this.subtract}>-</button>
        <button onClick={this.multiply}>*</button>
        <button onClick={this.divide}>/</button>
      </div>
    );
  }
}

export default Calculator;
