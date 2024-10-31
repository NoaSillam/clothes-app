// ClothingList.res

@react.component
let make = () => {
  let (clothingList, setClothingList) = React.useState(() => []);

  React.useEffect(() => {
    let makeRequest = async () => {
      let data = await Api.fetchClothing()
      setClothingList((_) => data)
    }
    let _ = makeRequest()
    None
  }, []);

  <div>
    <h1>{React.string("Liste des vêtements")}</h1>
    <ul>
      {clothingList
      -> Array.map(clothing =>
        <li key={clothing.id->Int.toString}>
          {React.string(`${clothing.name} - ${clothing.price->Float.toString} €`)}
          <img src={clothing.imageUrl} alt={clothing.name} />
        </li>
      )->React.array}
    </ul>
  </div>
};
