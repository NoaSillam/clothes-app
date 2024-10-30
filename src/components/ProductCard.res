// ProductCard.res
@react.component
let make = (~name: string, ~price: string, ~description: string, ~image: string) => {
  <div className="card" >
    <img className="card-img-top" src=image alt=name />
    <div className="card-body">
      <h5 className="card-title"> {React.string(name)} </h5>
      <p className="card-text"> {React.string(description)} </p>
      <div className="d-flex justify-content-between align-items-center">
        <span className="text-success"> {React.string(price ++ " €")} </span>
        <button className="btn btn-primary">
          {React.string("Acheter")}
        </button>
      </div>
    </div>
  </div>
}
