import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import Square from './square';

class App extends Component {
    constructor(props){
        super(props)
        this.state={
            player:"X",
            newArr:['', '', '', '', '', '', '', '', '']

        }
        console.log(this.state.player);
    }

    handleClick=(e)=>{
        this.updateArray(e);
        this.playerChange();
    }

//
// storeinfo = ()=>{
//     let targetArray=this.state.newArr
//         targetArray.push()
//     console.log(targetArray)
// }


playerChange =() =>{
    // debugger
    let playerstate=this.state.player
    if (playerstate==="X"){
      playerstate="O"
    }else{
        playerstate="X"
    }
    this.setState({player: playerstate
    })
}

updateArray=(e)=>{
    console.log(e.target.id)

    let arr = this.state.newArr

    // console.log('before', arr);
    arr[e.target.id] = this.state.player
    // console.log('after', arr);

this.setState({newArr: arr})

}

  render() {
      // debugger
    console.log(this.state.player);
    console.log(this.state.newArr);

    return (
      <div className="App">
        <div className="flex-container">
            <Square
            squareNum={0}
            playerChange={this.playerChange}
            // storeinfo={this.storeinfo}
            player={this.state.newArr[0]}
            viewarr={this.updateArray}
            handleClick={this.handleClick}

            />

            <Square
            squareNum={1}
            playerChange={this.playerChange}
            // storeinfo={this.storeinfo}
            clickEvent= {this.clickEvent}
            player={this.state.newArr[1]}
            viewarr={this.updateArray}
            handleClick={this.handleClick}

            />
            <Square
            squareNum={2}
            playerChange={this.playerChange}
            // storeinfo={this.storeinfo}
            clickEvent= {this.clickEvent}
            player={this.state.newArr[2]}
            viewarr={this.updateArray}
            handleClick={this.handleClick}

            />
            <Square
            squareNum={3}
            playerChange={this.playerChange}
            // storeinfo={this.storeinfo}
            clickEvent= {this.clickEvent}
            player={this.state.newArr[3]}
            viewarr={this.updateArray}
            handleClick={this.handleClick}

            />
            <Square
            squareNum={4}
            playerChange={this.playerChange}
            // storeinfo={this.storeinfo}
            clickEvent= {this.clickEvent}
            player={this.state.newArr[4]}
            viewarr={this.updateArray}
            handleClick={this.handleClick}

            />
            <Square
            squareNum={5}
            playerChange={this.playerChange}
            // storeinfo={this.storeinfo}
            clickEvent= {this.clickEvent}
            player={this.state.newArr[5]}
            viewarr={this.updateArray}
            handleClick={this.handleClick}

            />
            <Square
            squareNum={6}
            playerChange={this.playerChange}
            // storeinfo={this.storeinfo}
            clickEvent= {this.clickEvent}
            player={this.state.newArr[6]}
            viewarr={this.updateArray}
            handleClick={this.handleClick}

            />
            <Square
            squareNum={7}
            playerChange={this.playerChange}
            // storeinfo={this.storeinfo}
            clickEvent= {this.clickEvent}
            player={this.state.newArr[7]}
            viewarr={this.updateArray}
            handleClick={this.handleClick}

            />
            <Square
            squareNum={8}
            playerChange={this.playerChange}
            // storeinfo={this.storeinfo}
            clickEvent= {this.clickEvent}
            player={this.state.newArr[8]}
            viewarr={this.updateArray}
            handleClick={this.handleClick}

            />


          </div>
      </div>
    );
  }
}

export default App;
