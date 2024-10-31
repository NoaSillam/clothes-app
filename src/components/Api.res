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

let fetchClothing = async () => {
  // Utilisation de Fetch.requestMethod.get pour spécifier la méthode GET
  let requestInit = Fetch.RequestInit.make(~method_=Fetch.Get, ())

  let response = await Fetch.fetchWithInit(baseUrl ++ "/clothing", requestInit)
    
      let data = await response->Fetch.Response.json
      data->Js.Json.decodeArray->Option.map(array => {
        array->Array.map(item => {
          let object = item->Js.Json.decodeObject -> Option.getExn
          {
            id: object->Js.Dict.get("id")->Option.getExn->Js.Json.decodeNumber->Option.getExn->Float.toInt,
            name: object->Js.Dict.get("name")->Option.getExn->Js.Json.decodeString->Option.getExn,
            price: object->Js.Dict.get("price")->Option.getExn->Js.Json.decodeNumber->Option.getExn,
            imageUrl:object->Js.Dict.get("imageUrl")->Option.getExn->Js.Json.decodeString->Option.getExn,
          }
        })
      }) -> Option.getExn
}
