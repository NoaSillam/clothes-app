// Header.res
@react.component
let make = (~categories) => {
  <nav className="navbar navbar-expand-lg navbar-light bg-light">
    <a className="navbar-brand" href="#">
      {React.string("Boutique")}
    </a>
    <button
      className="navbar-toggler"
      type_="button" // Type de bouton
      ariaControls="navbarNav"
      ariaExpanded=false // Booléen, sans guillemets
      ariaLabel="Toggle navigation"
    >
      <span className="navbar-toggler-icon"></span>
    </button>
    <div className="collapse navbar-collapse" id="navbarNav">
      <ul className="navbar-nav ml-auto">
        {categories
          ->Array.map(category =>
            <li className="nav-item">
              <a className="nav-link" href={"#" ++ category["name"]}>
                {React.string(category["name"])}
              </a>
            </li>
          )
          ->React.array
        }
      </ul>
    </div>
  </nav>
}
