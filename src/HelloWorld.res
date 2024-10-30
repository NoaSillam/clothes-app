// HelloWorld.res
open Header
open ProductCard
open Category
open Footer

// Exemple de données pour les catégories
let simulatedCategories = [
  { "name": "Hommes", "description": "Découvrez notre collection pour hommes", "image": "https://via.placeholder.com/100" },
  { "name": "Femmes", "description": "Mode pour femmes tendance", "image": "https://via.placeholder.com/100" },
  { "name": "Enfants", "description": "Habits pour les petits", "image": "https://via.placeholder.com/100" }
]

// Exemple de données pour les produits
let simulatedProducts = [
  { "name": "Veste en Jean", "price": "59.99", "description": "Veste en jean stylée pour toutes les saisons.", "image": "https://via.placeholder.com/150" },
  { "name": "Robe d'été", "price": "39.99", "description": "Robe légère et confortable pour les jours ensoleillés.", "image": "https://via.placeholder.com/150" },
  { "name": "T-shirt classique", "price": "19.99", "description": "T-shirt basique en coton, disponible en plusieurs couleurs.", "image": "https://via.placeholder.com/150" }
]

@react.component
let make = (~name: string) => {
  <div className="bg-gray-50">
    // <Header />
     <Header categories=simulatedCategories /> 
    <main className="container mx-auto p-4">
      <section className="my-8">
        <h1 className="text-3xl font-bold">
  {("Bienvenue, " ++ name ++ "!")->React.string}
</h1>

        <p>{"Découvrez notre collection de vêtements tendance et modernes."->React.string}</p>
      </section>
//      <section id="categories" className="my-8">
//   <h2 className="text-2xl font-bold mb-4">{"Catégories"->React.string}</h2>
//   <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
//     {simulatedCategories
//      ->Array.map(category =>
//        <Category name=category["name"] description=category["description"] image=category["image"] />
//      )
//      ->React.array
//     }
//   </div>
// </section>


//     <section id="products" className="my-8">
//   <h2 className="text-2xl font-bold mb-4">{"Produits Populaires"->React.string}</h2>
//   <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
//     {simulatedProducts
//      ->Array.map(product =>
//        <ProductCard product=product />
//      )
//      ->React.array
//     }
//   </div>
// </section>


<section id="products" className="my-8">
         <div className="container mt-5">
    <h2 className="mb-4">{"Produits Populaires"->React.string}</h2>
    <div className="row">
      {simulatedProducts
        ->Array.map(product =>
          <div className="col-md-4 mb-4">
            <ProductCard
              name=product["name"]
              price=product["price"]
              description=product["description"]
              image=product["image"]
            />
          </div>
        )
        ->React.array
      }
    </div>
  </div>
      </section>

      <section id="contact" className="my-8">
        <h2 className="text-2xl font-bold mb-4">{"Contactez-Nous"->React.string}</h2>
        <p>{"Pour toute information, contactez-nous à contact@boutique.com."->React.string}</p>
      </section>

      <div className="bg-red-500 text-white p-4">
  {"Test de Tailwind CSS"->React.string}
</div>

    </main>
    <Footer />
  </div>
}
