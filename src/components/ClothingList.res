// ClothingList.res
open React

@react.component
let make = () => {
  let (clothingList, setClothingList) = React.useState(() => []);

  React.useEffect1(() => {
    Api.fetchClothing()
    |> Js.Promise.then_(data  => {

      setClothingList(data);
      Js.Promise.resolve();
    });
  }, []);

  <div>
    <h1>{React.string("Liste des vêtements")}</h1>
    <ul>
      {clothingList
      |> Array.map(clothing =>
        <li key={clothing.idProduit}>
          {React.string(`${clothing.libelleProduit} - ${clothing.prixProduit} €`)}
          <img src={clothing.imageUrl} alt={clothing.name} />
        </li>
      )}
    </ul>
  </div>
};
