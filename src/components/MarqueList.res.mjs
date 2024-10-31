// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Api from "./Api.res.mjs";
import * as React from "react";
import * as Header from "./Header.res.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function MarqueList(props) {
  var match = React.useState(function () {
        return [];
      });
  var setMarqueList = match[1];
  React.useEffect((function () {
          var makeRequest = async function () {
            var data = await Api.fetchMarque();
            return setMarqueList(function (param) {
                        return data;
                      });
          };
          makeRequest();
        }), []);
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx(Header.make, {}),
                JsxRuntime.jsx("h1", {
                      children: "Liste des marques"
                    }),
                JsxRuntime.jsx("ul", {
                      children: match[0].map(function (marque) {
                            return JsxRuntime.jsxs("li", {
                                        children: [
                                          marque.name + " - " + marque.description,
                                          JsxRuntime.jsx("img", {
                                                alt: marque.name,
                                                src: marque.imageUrl
                                              })
                                        ]
                                      }, marque.id.toString());
                          })
                    })
              ]
            });
}

var make = MarqueList;

export {
  make ,
}
/* react Not a pure module */
