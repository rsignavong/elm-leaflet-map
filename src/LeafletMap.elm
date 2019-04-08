module LeafletMap exposing
    ( view
    , latitude, longitude, mapId, marker, scale, tileLayer
    )

{-| This library will load the Custom Html Element into the DOM.


# HTML Element

@docs view


# Attributes

@docs latitude, longitude, mapId, marker, scale, tileLayer

-}

import Html exposing (Attribute, Html, node)
import Html.Attributes exposing (attribute, property)
import Json.Encode as Encode


{-| Renders a Leaflet map

    view
        [ LeafletMap.mapId "mapid"
        , LeafletMap.latitude "51.505"
        , LeafletMap.longitude "-0.09"
        , LeafletMap.scale "13"
        , LeafletMap.tileLayer "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
        ]
        [ marker
            [ LeafletMap.latitude "51.505"
            , LeafletMap.longitude "-0.09"
            ]
            []
        ]

-}
view : List (Attribute msg) -> List (Html msg) -> Html msg
view =
    node "leaflet-map"


{-| Add leaflet-marker child node
-}
marker : List (Attribute msg) -> List (Html msg) -> Html msg
marker =
    node "leaflet-marker"


{-| mapId
-}
mapId : String -> Attribute msg
mapId =
    attribute "map-id"


{-| tileLayer
-}
tileLayer : String -> Attribute msg
tileLayer =
    attribute "tile-layer"


{-| tileLayer
-}
scale : String -> Attribute msg
scale =
    attribute "scale"


{-| Latitude
-}
latitude : String -> Attribute msg
latitude =
    attribute "latitude"


{-| Longitude
-}
longitude : String -> Attribute msg
longitude =
    attribute "longitude"
