module Modpack (
        Mod(..)
    ,   Modloader(..)
    ,   Target(..)
    ,   Modpack(..)
    ) 
    where

data Mod = Mod 
    {   name :: String
    ,   version :: String 
    ,   dependecies :: [Mod]
    ,   targets :: [Target]
    }

data Modloader = Forge | Fabric

data Target = Target 
    {   mcVersion :: String
    ,   modloader :: Modloader
    ,   modloaderVersion :: String
    }

data Modpack = Modpack 
    {   _name :: String
    ,   target :: Target
    ,   mods :: [Mod]
    }