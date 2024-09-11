import {BrowserRouter,Routes,Route} from 'react-router-dom';
import Home from './home';
import About from './about';
import Contact from './contact';
import Layout from './layout';

function App() {
  return (
    <BrowserRouter>
    <Routes>
      <Route path="/" element = {<Layout />}>
        <Route path="/home" element = {<Home />}></Route>
        <Route path="/about" element = {<About />}></Route>
        <Route path="/contact" element = {<Contact />}></Route>
      </Route>
    </Routes>
  </BrowserRouter>
  );
}

export default App;