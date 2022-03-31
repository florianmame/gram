import React from 'react';
import { useState, useEffect } from 'react';

function Search() {

    const [ datas, setDatas ] = useState([]);
    const [ searchTerm, setSearchTerm ] = useState("");

    // Ajax : on utilise une requête PHP dans du JavaScript
    useEffect(() => {
        fetch("/api")
            .then((response) => response.json())
            .then((json) => setDatas(json));
    }, []);

    const handleSearchTerm = (event) => {
        console.log(event.target.value);
        let value = event.target.value;
        setSearchTerm(value);
    }

    // Grâce à ce console.log, on peut voir que le DOM récupère bien la saisie de l'utilisateur
    // console.log(searchTerm);

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
                        return val.name.toLowerCase().startsWith(searchTerm.toLowerCase());
                    }
                }).map((val) => {
                    return (
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
