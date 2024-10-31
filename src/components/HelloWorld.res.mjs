// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Footer from "./Footer.res.mjs";
import * as Header from "./Header.res.mjs";
import * as JsxRuntime from "react/jsx-runtime";

var simulatedProducts = [
  {
    name: "Veste en Jean",
    price: "59.99",
    description: "Veste en jean stylée pour toutes les saisons.",
    image: "https://via.placeholder.com/150"
  },
  {
    name: "Robe d'été",
    price: "39.99",
    description: "Robe légère et confortable pour les jours ensoleillés.",
    image: "https://via.placeholder.com/150"
  },
  {
    name: "T-shirt classique",
    price: "19.99",
    description: "T-shirt basique en coton, disponible en plusieurs couleurs.",
    image: "https://via.placeholder.com/150"
  }
];

function HelloWorld(props) {
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx(Header.make, {}),
                JsxRuntime.jsx("main", {
                      children: JsxRuntime.jsxs("section", {
                            children: [
                              JsxRuntime.jsx("h1", {
                                    children: "Bienvenue, " + props.name + "!",
                                    className: "text-3xl font-bold"
                                  }),
                              JsxRuntime.jsx("p", {
                                    children: "Découvrez notre collection de vêtements tendance et modernes."
                                  })
                            ],
                            className: "my-8"
                          }),
                      className: "container mx-auto p-4",
                      style: {
                        backgroundImage: "url('/src/assets/Image/fondmarbre.webp')",
                        margin: "0 0 0 0"
                      }
                    }),
                JsxRuntime.jsx(Footer.make, {})
              ],
              className: "bg-gray-50"
            });
}

var make = HelloWorld;

export {
  simulatedProducts ,
  make ,
}
/* Footer Not a pure module */
