module Map exposing (main)

import Browser
import Html exposing (Html, text)
import LeafletMap


type Msg
    = NoOp


type alias Model =
    ()


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }


init : Model
init =
    ()


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model


view : Model -> Html Msg
view model =
    LeafletMap.view
        [ LeafletMap.mapId "mapid"
        , LeafletMap.className "map"
        , LeafletMap.defaultPopup "Panda was THERE!"
        , LeafletMap.iconHeight 64
        , LeafletMap.iconWidth 64
        , LeafletMap.iconUrl "https://image.flaticon.com/icons/svg/194/194648.svg"
        , LeafletMap.latitude 51.505
        , LeafletMap.longitude -0.09
        , LeafletMap.scale 13
        , LeafletMap.showDefaultMarker True
        , LeafletMap.showScale True
        , LeafletMap.tileLayer "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
        ]
        [ LeafletMap.marker
            [ LeafletMap.iconUrl "https://image.flaticon.com/icons/svg/194/194648.svg"
            , LeafletMap.iconHeight 64
            , LeafletMap.iconWidth 64
            , LeafletMap.latitude 51.505
            , LeafletMap.longitude -0.12
            ]
            [ text "... and THERE!"
            ]
        , LeafletMap.circle
            [ LeafletMap.radius 10.0
            , LeafletMap.latitude 51.505
            , LeafletMap.longitude -0.12
            ]
            []
        ]
