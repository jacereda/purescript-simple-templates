module Test.Main where

import Debug.Trace
import SimpleTemplates

main = do
  trace $ template "foo: <foo> bar: <bar>" [ Replace "<foo>" "1"
                                           , Replace "<bar>" "2"
                                           ]
