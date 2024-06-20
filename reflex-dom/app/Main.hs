module Main (main) where

import Control.Lens ((^.))
import Data.Functor (void, ($>))
import Language.Javascript.JSaddle (askJSM, js1, jsg, jsgf, runJSM)
import Reflex.Dom (button, mainWidget, performEvent_, text)

main :: IO ()
main = mainWidget $ do
  text "Hello, world!"
  eClick <- button "Click me!"

  performEvent_ $
    eClick
      $> void
        ( askJSM
            >>= runJSM do
              console <- jsg ("console" :: String)
              console ^. js1 ("log" :: String) ("Hello, world!" :: String)

              jsgf ("alert" :: String) ["Hello, world!" :: String]
        )
