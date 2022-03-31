import React from 'react';
import { useState, useEffect } from 'react/cjs/react.production.min';

function Search() {

    const [ datas, setDatas ] = useState([]);
    const [ searchTerm, setSearchTerm ] = useState("");

    useEffect(() => {
        fetch("")
            .then((response) => response.json())
            .then((json) => setDatas(json));
    }, []);

    const handleSearchTerm = (event) => {
        console.log(event.target.value);
        let value = event.target.value;
        setSearchTerm(value);
    }

    console.log(searchTerm);

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
                    return val.title.toLowerCase().includes(searchTerm.toLowerCase());
                }).map((val) => {
                    return (
                        <div className='search-result' key={val.id}>
                            {val.title}
                        </div>
                    );
                })}
            </div>
        </>
    );
}

const domContainer = document.querySelector('#research-bar');ReactDOM.render(e(LikeButton), domContainer);

export default Search
