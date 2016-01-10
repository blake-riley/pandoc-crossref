module Text.Pandoc.CrossRef.Util.Options (Options(..)) where
import Text.Pandoc.Definition
import Text.Pandoc.CrossRef.Util.Template

data Options = Options { cref :: Bool
                       , chaptersDepth   :: Int
                       , listings :: Bool
                       , codeBlockCaptions  :: Bool
                       , autoSectionLabels  :: Bool
                       , figPrefix   :: Bool -> Int -> [Inline]
                       , eqnPrefix   :: Bool -> Int -> [Inline]
                       , tblPrefix   :: Bool -> Int -> [Inline]
                       , lstPrefix   :: Bool -> Int -> [Inline]
                       , secPrefix   :: Bool -> Int -> [Inline]
                       , chapDelim   :: [Inline]
                       , rangeDelim  :: [Inline]
                       , lofTitle    :: [Block]
                       , lotTitle    :: [Block]
                       , lolTitle    :: [Block]
                       , outFormat   :: Maybe Format
                       , figureTemplate :: Template
                       , tableTemplate  :: Template
                       , listingTemplate :: Template
                       , customLabel :: String -> Int -> Maybe String
                       }