module ElixirTest where

import Color exposing (..)
import Graphics.Collage exposing (..)
import Graphics.Element exposing (..)
import Text exposing (fromString)
import Html exposing(..)
import Html.Attributes exposing (..)

main : Html
main =
  div
    [ class "main-wrapper"
    , style
        [ ("margin", "auto")
        , ("width", "400px")
        ]
    ]
    [ h3
        [ style
          [ ("text-align", "center")
          ]
        ]
        [ Html.text "Elixir, Phoenix, Elm, Dokku"
        ]
    , fromElement (collage 400 200
        [ ngon 4 70
            |> filled clearBlue
            |> move (00,0)
        , ngon 5 50
            |> filled clearGreen
            |> move (60,30)
        , ngon 3 60
            |> filled clearRed
            |> move (-60, -30)
        ])
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
