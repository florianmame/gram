import React from 'react';
import { useState, useEffect } from 'react/cjs/react.production.min';

function Search() {

    const [ datas, setDatas ] = useState([]);

    useEffect(() => {
        fetch("")
            .then((response) => response.json())
            .then((json) => setDatas(json));
    }, [])

    console.log(datas);

    return (
        <>
            <div className='search'>
                <input type="text" name="search-bar" id="search-bar" placeholder='Rechercher un restaurant'></input>
            </div>
            <div className='search-results'>
                <div className='search-result'>Résultats de recherche</div>
                { datas.map(()) }
            </div>
        </>
    )
}

export default Search
