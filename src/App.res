// // App.res
// @react.component
// let make = () => {
//   let (count, setCount) = React.useState(() => 0)

//   <div className="p-6">
   

//     <HelloWorld name="Mika" />
//   </div>
// }

// @react.component
// let make = () => {
// let url = RescriptReactRouter.useUrl()

// switch url.path{

//   // | list{"user", id} => <User id />
//    | _ => <Home />
// }}
// open HelloWorld
// open ProduitPage

// // Exemple de données pour les produits
// let simulatedProducts = [
//   { "name": "Veste en Jean", "price": "59.99", "description": "Veste en jean stylée pour toutes les saisons.", "image": "https://via.placeholder.com/150" },
//   { "name": "Robe d'été", "price": "39.99", "description": "Robe légère et confortable pour les jours ensoleillés.", "image": "https://via.placeholder.com/150" },
//   { "name": "T-shirt classique", "price": "19.99", "description": "T-shirt basique en coton, disponible en plusieurs couleurs.", "image": "https://via.placeholder.com/150" }
// ]

// @react.component
// let make = () => {
//   <Router>
//     <Switch>
//       <Route path="/" exact>
//         <HelloWorld name="Mika" />
//       </Route>
//       <Route path="/produit" exact>
//         <ProduitPage product=simulatedProducts[0] />
//       </Route>
//     </Switch>
//   </Router>
// }



// // App.res
// @react.component
// let make = () => {
//   let (count, setCount) = React.useState(() => 0)

//   <div className="p-6">


//     <HelloWorld name="Mika" />
//   </div>
// }


@react.component
let make = () => {
let url = RescriptReactRouter.useUrl()

switch url.path{

  // | list{"user", id} => <User id />
   | _ => <Home />
}}