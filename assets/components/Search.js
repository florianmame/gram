import React from 'react';
import { useState, useEffect } from 'react';

function Search() {
    
    // useState est un hook permettant de gérer les states
    // Avec setDatas, on peut vérifier que la donnée existe
    // Ceci va nous permettre d'effectuer une recherche en temps réel (asynchrone)
    const [ datas, setDatas ] = useState([]);
    const [ searchTerm, setSearchTerm ] = useState("");

    // Ajax : on utilise une requête PHP dans du JavaScript
    useEffect(() => {
        fetch("/api")
            .then((response) => response.json())
            .then((json) => setDatas(json));
    }, []);

    // Ecouteur d'événement faisant le lien entre 
    const handleSearchTerm = (event) => {
        let value = event.target.value;
        setSearchTerm(value);
    }

    return (
        <>
            <div className='search'>
                <input
                    type="text"
                    name="search-bar"
                    id="search-bar"
                    placeholder='Rechercher un restaurant'
                    onChange={handleSearchTerm}
                ></input>
            </div>
            <div className='search-results'>
                { datas.filter((val) => {
                    if(searchTerm.length != 0) {
                        // Le toLowerCase sert à forcer le minuscules dans la barre de saisie pour faciliter la recherche
                        // startsWith est préférable à includes, car il ne gardera que les résultats commençant par notre saisie
                        return val.name.toLowerCase().startsWith(searchTerm.toLowerCase());
                    }
                // La méthode map() crée un nouveau tableau avec les résultats de l'appel d'une fonction
                }).map((val) => {
                    return (
                        // Dans notre API, on va chercher l'objet correspondant à l'id concerné
                        // Puis plus précisément la valeur correspondant à la clé nom, qui s'affichera à l'intérieur de la div du résultat
                        <div className='search-result' key={val.id}>
                            {val.name}
                        </div>
                    );
                })}
            </div>
        </>
    );
}

export default Search
