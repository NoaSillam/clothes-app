// Category.res
@react.component
let make = (~name: string, ~description: string, ~image: string) => {
  <div className="card text-center" >
    <img src=image alt=name className="card-img-top"  />
    <div className="card-body">
      <h5 className="card-title">{React.string(name)}</h5>
      <p className="card-text">{React.string(description)}</p>
    </div>
  </div>
}
