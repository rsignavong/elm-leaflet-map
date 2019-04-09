module LeafletMap exposing
    ( view
    , latitude, longitude, mapId, marker, scale, tileLayer
    , className, defaultPopup, iconHeight, iconUrl, iconWidth, showDefaultMarker, showScale
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

    Leaflet.view
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
        [ Leaflet.marker
            [ LeafletMap.iconUrl "https://image.flaticon.com/icons/svg/194/194648.svg"
            , LeafletMap.iconHeight 64
            , LeafletMap.iconWidth 64
            , LeafletMap.latitude 51.505
            , LeafletMap.longitude -0.12
            ]
            [ text "... and THERE!"
            ]
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


{-| className
-}
className : String -> Attribute msg
className =
    attribute "class-name"


{-| defaultPopup
-}
defaultPopup : String -> Attribute msg
defaultPopup =
    attribute "default-popup"


{-| iconHeight
-}
iconHeight : Int -> Attribute msg
iconHeight =
    Encode.int >> Encode.encode 0 >> attribute "icon-height"


{-| iconWidth
-}
iconWidth : Int -> Attribute msg
iconWidth =
    Encode.int >> Encode.encode 0 >> attribute "icon-width"


{-| iconUrl
-}
iconUrl : String -> Attribute msg
iconUrl =
    attribute "icon-width"


{-| tileLayer
-}
tileLayer : String -> Attribute msg
tileLayer =
    attribute "tile-layer"


{-| Latitude
-}
latitude : Float -> Attribute msg
latitude =
    Encode.float >> Encode.encode 0 >> attribute "latitude"


{-| Longitude
-}
longitude : Float -> Attribute msg
longitude =
    Encode.float >> Encode.encode 0 >> attribute "longitude"


{-| scale
-}
scale : Int -> Attribute msg
scale =
    Encode.int >> Encode.encode 0 >> attribute "scale"


{-| showDefaultMarker
-}
showDefaultMarker : Bool -> Attribute msg
showDefaultMarker =
    Encode.bool >> Encode.encode 0 >> attribute "show-default-marker"


{-| showScale
-}
showScale : Bool -> Attribute msg
showScale =
    Encode.bool >> Encode.encode 0 >> attribute "show-scale"
