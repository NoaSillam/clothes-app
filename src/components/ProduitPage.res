// ProduitPage.res
@react.component
let make = (~product) => {
  <div className="container my-4">
    <div className="row">
      <div className="col-md-6">
        <img src=product["image"] alt=product["name"] className="img-fluid rounded" />
      </div>
      <div className="col-md-6">
        <h2 className="font-bold text-3xl">{React.string(product["name"])}</h2>
        <p className="text-muted">{React.string(product["description"])}</p>
        <p className="text-lg font-semibold">{React.string(product["price"] ++ " €")}</p>
        <button className="btn btn-primary mt-4">{"Acheter"->React.string}</button>
      </div>
    </div>
  </div>
}
