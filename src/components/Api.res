// Api.res
open Fetch

// Base URL de l'API
let baseUrl = "http://localhost:3000/"

type clothing = {
  id: int,
  name: string,
  price: float,
  imageUrl: string,
}

let fetchClothing = () => {
  // Utilisation de Fetch.requestMethod.get pour spécifier la méthode GET
  let requestInit = Fetch.RequestInit.make(~method_=Fetch.Get, ())

  Fetch.fetchWithInit(baseUrl ++ "/clothing", requestInit)
  |> Js.Promise.then_(response =>
    if response->Fetch.Response.ok {
      response->Fetch.Response.json
      |> Js.Promise.then_(data => {
        // Traiter les données ici
        Js.log(data)
        Js.Promise.resolve(data)
      })
    } else {
      Js.Promise.reject(Js.Exn.raiseError("Erreur lors de la récupération des vêtements."))
    }
  )
}
