{ mkDerivation, base, ghc, ghc-paths, stdenv }:
mkDerivation {
  pname = "ghc-api-doc-bug";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base ghc ghc-paths ];
  description = "Show a Bug in GHC's User Guide - 14.2 Example doesn't typecheck";
  license = stdenv.lib.licenses.bsd2;
}
