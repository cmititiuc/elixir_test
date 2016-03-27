module ElixirTest where

import Color exposing (..)
import Graphics.Collage exposing (..)
import Graphics.Element exposing (..)
import Text exposing (fromString)

main : Element
main =
  collage 700 200
    [ ngon 4 75
        |> filled clearGrey
        |> move (-10,0)
    , ngon 5 50
        |> filled clearGrey
        |> move (50,10)
    , toForm(leftAligned (fromString "Hello from Elm"))
        |> move (-100,50)
    ]


clearGrey : Color
clearGrey =
  rgba 111 111 111 0.6
