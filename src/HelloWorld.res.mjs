// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Footer from "./components/Footer.res.mjs";
import * as Header from "./components/Header.res.mjs";
import * as ProductCard from "./components/ProductCard.res.mjs";
import * as JsxRuntime from "react/jsx-runtime";

var simulatedCategories = [
  {
    name: "Hommes",
    description: "Découvrez notre collection pour hommes",
    image: "https://via.placeholder.com/100"
  },
  {
    name: "Femmes",
    description: "Mode pour femmes tendance",
    image: "https://via.placeholder.com/100"
  },
  {
    name: "Enfants",
    description: "Habits pour les petits",
    image: "https://via.placeholder.com/100"
  }
];

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
                JsxRuntime.jsx(Header.make, {
                      categories: simulatedCategories
                    }),
                JsxRuntime.jsxs("main", {
                      children: [
                        JsxRuntime.jsxs("section", {
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
                        JsxRuntime.jsx("section", {
                              children: JsxRuntime.jsxs("div", {
                                    children: [
                                      JsxRuntime.jsx("h2", {
                                            children: "Produits Populaires",
                                            className: "mb-4"
                                          }),
                                      JsxRuntime.jsx("div", {
                                            children: simulatedProducts.map(function (product) {
                                                  return JsxRuntime.jsx("div", {
                                                              children: JsxRuntime.jsx(ProductCard.make, {
                                                                    name: product.name,
                                                                    price: product.price,
                                                                    description: product.description,
                                                                    image: product.image
                                                                  }),
                                                              className: "col-md-4 mb-4"
                                                            });
                                                }),
                                            className: "row"
                                          })
                                    ],
                                    className: "container mt-5"
                                  }),
                              className: "my-8",
                              id: "products"
                            }),
                        JsxRuntime.jsxs("section", {
                              children: [
                                JsxRuntime.jsx("h2", {
                                      children: "Contactez-Nous",
                                      className: "text-2xl font-bold mb-4"
                                    }),
                                JsxRuntime.jsx("p", {
                                      children: "Pour toute information, contactez-nous à contact@boutique.com."
                                    })
                              ],
                              className: "my-8",
                              id: "contact"
                            }),
                        JsxRuntime.jsx("div", {
                              children: "Test de Tailwind CSS",
                              className: "bg-red-500 text-white p-4"
                            })
                      ],
                      className: "container mx-auto p-4"
                    }),
                JsxRuntime.jsx(Footer.make, {})
              ],
              className: "bg-gray-50"
            });
}

var make = HelloWorld;

export {
  simulatedCategories ,
  simulatedProducts ,
  make ,
}
/* Footer Not a pure module */
