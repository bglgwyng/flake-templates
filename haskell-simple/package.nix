{
  name = "nAmE";

  ghc-options = "-Wall -Wno-unused-matches";
  language = "GHC2021";
  default-extensions = [ "OverloadedStrings" "LambdaCase" "RecursiveDo" "DeriveGeneric" "BlockArguments" ];
  dependencies = [ "base ^>= 4.18" ];

  executables = {
    app = {
      source-dirs = "app";
      main = "Main.hs";
    };
  };
}
