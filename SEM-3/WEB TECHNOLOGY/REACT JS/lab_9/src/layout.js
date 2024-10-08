import {Link,Outlet} from 'react-router-dom';

function Layout() {
  return (
    <>
      <div className='container'>

        <div className='row'>
          <div className='border border-dark col-2'>LOGO</div>
          <div className='border border-primary col'>
            <Link to="/home" className='m-3'>Home</Link> &nbsp;
            <Link to="/about" className='m-3'>About</Link> &nbsp;
            <Link to="/contact" className='m-3'>Contact</Link> &nbsp;
          </div>
        </div>

        <div className='row'>
          <div className='col-3 border border-warning col-1 mt-2'>Sidebar</div>
          <div className='col border border-danger mt-2'><Outlet/></div>
        </div>

        <div className='row'>
          <div className='border border-dark mt-2'>Footer</div>
        </div>

      </div>
    </>
  );
}

export default Layout;