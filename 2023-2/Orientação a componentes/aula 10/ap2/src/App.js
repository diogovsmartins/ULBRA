// import logo from './logo.svg';
// import Card from './components/Card';
import { useState } from 'react';
import Gallery from './components/Gallery';
import Header from './components/Header';

function App() {
  const [userList, updateCardsInTheGallery] = useState([]);

  const addUserToGallery = (user) => {
    updateCardsInTheGallery([...userList, user]);
  };

  return (
    <div className="App">
      <Header />
      <Gallery
        userName="Diogo"
        addUserToGalleryFunction={addUserToGallery}
        userListToRender={userList}
      />
    </div>
  );
}

export default App;

// <img src={logo} className="App-logo" alt="logo" />
// <p>
//   Edit <code>src/App.js</code> and save to reload.
// </p>
// <a
//   className="App-link"
//   href="https://reactjs.org"
//   target="_blank"
//   rel="noopener noreferrer"
// >
//   Learn React
// </a>
// </header>
