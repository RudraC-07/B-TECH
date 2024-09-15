import {Link,Outlet} from 'react-router-dom';

function Layout(){
  return(
    <>
      <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">

          <a class="navbar-brand" href="#">
            <img src="./images/gym2.png" alt="Logo" width="30" height="30" class="d-inline-block align-text-top mx-2" />
            XYZ Gym
          </a>

        {/* <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button> */}

          <div class="collapse navbar-collapse d-flex justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item">
                <Link to="/" className='nav-link'>Home</Link> &nbsp;
              </li>
              <li class="nav-item">
                <Link to="/about" className='nav-link pt-2'>About</Link> &nbsp;
              </li>
              <li class="nav-item">
                <Link to="/memberlist" className='nav-link pt-2'>Members List</Link> &nbsp;
              </li>
              <li class="nav-item">
                <Link to="/addmember" className='nav-link pt-2'>Add member</Link> &nbsp;
              </li>

              {/* <li class="nav-item">
                <a class="nav-link" href="#">Pricing</a>
              </li>
              <li class="nav-item">
                <a class="nav-link disabled" aria-disabled="true">Disabled</a>
              </li> */}

            </ul>
          </div>
        </div>
      </nav>  

        <div className='row'>
          <div className='col mt-2'><Outlet/></div>
        </div>
    </>
  );
}

export default Layout;