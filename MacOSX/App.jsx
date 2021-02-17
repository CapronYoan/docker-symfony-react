import React from "react";
import ReactDOM from "react-dom";
import {
    BrowserRouter as Router,
    Switch,
    Route,
    Link,
    Redirect
} from "react-router-dom";
import Lien from "./Lien";
import Text from "./Text";
import Home from "./Home";

class App extends React.Component {
    render() {
        return (
            <Router>
                <div style={{ height: '100%'}}>
                    <Switch>
                        <Redirect exact from="/" to ="/home" />
                        <Route exact path="/home"><Home/></Route>
                        <Route exact path="/Lien"><Lien/></Route>
                        <Route exact path="/Text"><Text/></Route>
                        <Route path="/*">Error 404 page Non trouvé</Route>
                    </Switch>
                </div>
            </Router>
        );
    }
}

const root = document.querySelector('#root');
ReactDOM.render(<App/>, root);
