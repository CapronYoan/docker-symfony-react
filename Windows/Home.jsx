import React from 'react';
import '../styles/mysass.scss';

export default class Home extends React.Component {

    render() {
        return (
            <div>
                <h1>Cliquer sur un lien pour être redirigé</h1>
                <a href="Lien">Lien<br/></a>
                <a href="Text">Text</a>
            </div>
        );
    }
}

