import Window
import Color exposing (green, white, black)
import Graphics.Element exposing (Element)
import Graphics.Element exposing
  (Element, centered, middle, down, layers, container, color, flow, right, spacer)
import Graphics.Input exposing (clickable)
import Text exposing (fromString)
import Maybe exposing (Maybe)
import Html exposing (Html)
import List

import Material
import Material.Foo exposing (Page, Pages)

-- MODEL

introduction : Page
introduction =
  { title = "Introduction"
  , content = centered (fromString "Google Material Design with Elm - Work In Progress")
  }

buttons : Page
buttons =
  { title = "Buttons"
  , content = centered (fromString "Nothin` here yet")
  }

sliders : Page
sliders =
  { title = "sliders"
  , content = centered (fromString "Nothin` here yet either")
  }

gestures : Page
gestures =
  { title = "gestures"
  , content = centered (fromString "Coming soon! (I hope)")
  }

fingerprint : Page
fingerprint =
  { title = "fingerprint"
  , content = centered (fromString "fingerprint stuff here")
  }

pages : Pages
pages = [ buttons, sliders ]

introductionCategory = { name="Material Design", pages=[introduction] }
components = { name="Components", pages=[buttons, sliders] }
patterns = { name="Patterns", pages=[gestures, fingerprint] }

categories = [ introductionCategory, components, patterns ]

main : Signal Html
main =
   Material.categoryApp categories
   -- Material.app pages

