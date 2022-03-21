import  React  from "react"; //IMPORTATION DE MODULE REACT 

import { Hello } from "./components/Hello"; // Import de component qu'on a crée
import { ButtonCounter } from "./components/ButtonCounter";




const cities = ['paris', 'abidjan', 'monaco', 'instabul', 'phoenix'];

export function App extends React.Component () {
  
  //Création 
  state = // Le state est l'état de notre composant (données surveillées par React)
  {
    counter: 0,  //déclaration d'un état "compteur", au démarrage il est à 0
    city : '',
    suggestion: '' //déclaration d'un état "city", 
  };
  
  
  onChangeInput = (event) => {    
    
    let suggestions = [];

    if (event.target.value == '') 
    {
      this.setState({city: event.target.value,
        suggestion:''
      });
      return;
    }



    // Parcours de toutes les villes à la recherche de la saisie
    for (let city of cities) 
    {
      //Est ce que la ville contient la saisie ?
      if (city.includes(event.target.value.toLowerCase()) == true) 
      // if (city.startsWith(event.target.value) == true) 
      //startsWith() permet de rechercher les villes qui COMMENCENT par la saisie
          {
            // Oui, enregistrement de la ville dans les suggestions.
            suggestions.push(city)
          }
    }
    console.table(suggestions);
    this.setState({city: event.target.value,
      suggestion: suggestions.join()
      });
  }


  onClickButton = () => {

  // Création du nouveau state (variable locale)
    let state = 
    {
      counter: this.state.counter + 1
    }

// ==> INTERDIT DE FAIRE : this.state.counter++;
this.setState(state); // Transmision à React du nouveau state
  }

  render(){

    return (
      <div className="App">
        <header className="App-header">

      <label htmlFor="city">Quelle ville ?</label>
      <input type="text" id="city" value={this.state.city} onChange={ this.onChangeInput }/>
      <p>{this.state.suggestion}</p>

      <ButtonCounter>Clique moi dessus !</ButtonCounter>
  
        </header>
      </div>
    );
  }
}

export default App;
