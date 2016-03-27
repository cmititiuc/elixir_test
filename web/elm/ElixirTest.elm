module ElixirTest (..) where

import Color exposing (..)
import Graphics.Collage exposing (..)
import Graphics.Element exposing (Element)
import Html exposing (..)
import Html.Attributes exposing (..)


main : Html
main =
  div
    [ style
        [ ( "text-align", "center" )
        ]
    ]
    [ heading
    , shapesImage
    , sourceCodeLink
    ]


heading : Html
heading =
  h3
    []
    [ Html.text "Elixir, Phoenix, Elm, Brunch, Dokku"
    ]


shapesImage : Html
shapesImage =
  div
    [ style
        [ ( "margin", "auto" )
        , ( "width", "400px" )
        ]
    ]
    [ fromElement
        shapes
    ]


sourceCodeLink : Html
sourceCodeLink =
  ul
    [ class "nav nav-pills"
    , style
        [ ( "display", "inline-block" )
        ]
    ]
    [ li
        []
        [ a
            [ href "https://github.com/cmititiuc/elixir_test/tree/phoenix-elm-deploy"
            ]
            [ Html.text "View Source Code"
            ]
        ]
    ]


clearBlue : Color
clearBlue =
  rgba 0 0 255 0.6


clearGreen : Color
clearGreen =
  rgba 0 255 0 0.6


clearRed : Color
clearRed =
  rgba 255 0 0 0.6


shapes : Element
shapes =
  collage
    400
    200
    [ ngon 4 70
        |> filled clearBlue
        |> move ( 0, 0 )
    , ngon 5 50
        |> filled clearGreen
        |> move ( 60, 30 )
    , ngon 3 60
        |> filled clearRed
        |> move ( -60, -30 )
    ]
