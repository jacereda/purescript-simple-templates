module SimpleTemplates where
       
import Data.String.Regex(regex, replace)
import Data.Foldable(foldlArray)

data Replacement = Replace String String

template :: String -> [Replacement] -> String
template = foldlArray step
  where step sofar (Replace old new) =
          replace re new sofar
          where re = regex old { unicode : false
                               , sticky : false
                               , multiline : false
                               , ignoreCase : false
                               , global : true
                               }
