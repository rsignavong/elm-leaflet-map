# elm-cloudinary-video-player
Elm wrapper for the [Cloudinary Video Player](https://cloudinary.com/documentation/cloudinary_video_player)

**It requires [Cloudinary Video Player WebComponent](https://github.com/rsignavong/stencil-cloudinary-video-player) and Cloudinary Video Player third party library loaded in your HTML in order to work, the WebComponent polyfills is already embed inside the [WebComponent](https://stenciljs.com/docs/javascript)**
```
<link href="node_modules/cloudinary-video-player/dist/cld-video-player.min.css" rel="stylesheet">

<script src="node_modules/lodash/lodash.js" type="text/javascript"></script>
<script src="node_modules/cloudinary-core/cloudinary-core.js" type="text/javascript"></script>
<script src="node_modules/cloudinary-video-player/dist/cld-video-player.min.js" type="text/javascript"></script>

```

**or CDN version**
```
<link href="https://unpkg.com/cloudinary-video-player/dist/cld-video-player.min.css" rel="stylesheet">

<script src="https://unpkg.com/cloudinary-core/cloudinary-core-shrinkwrap.min.js" type="text/javascript"></script>
<script src="https://unpkg.com/cloudinary-video-player/dist/cld-video-player.min.js" type="text/javascript"></script>
```
```

## Install

```
$ elm install rsignavong/elm-cloudinary-video-player
```

## Usage

_Please follow these [instructions to initialize cloudinary video player](https://github.com/rsignavong/stencil-cloudinary-video-player#using-this-component) if you want more information about using Cloudinary Video Player._

First you have to import the WebComponent and register the Custom Element in your Javascript code.

`index.js`
```js
import { defineCustomElements } from 'stencil-cloudinary-video-player';

// We register the Custom Element to window
defineCustomElements(window);
```

Then, you can use the Cloudinary Video Player in your elm code:

```elm
import CloudinaryVideoPlayer as CldVideoPlayer

view =
    CldVideoPlayer.view
        [ CldVideoPlayer.cloudName "cloudname"
        , CldVideoPlayer.videoId "id-123"
        , CldVideoPlayer.videoTitle "My great video"
        , CldVideoPlayer.publicId "folder/public_id"
        , CldVideoPlayer.width 940
        , CldVideoPlayer.height 354
        , CldVideoPlayer.crop "limit"
        , CldVideoPlayer.urlTransformation "w_940,h_354,c_limit"
        , CldVideoPlayer.controls True
        ]
        []
```
