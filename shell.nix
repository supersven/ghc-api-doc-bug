let nixpkgs = import <nixpkgs> {};
    myHaskellEnv = nixpkgs.pkgs.haskellPackages.ghcWithHoogle
                     (haskellPackages: with haskellPackages; [
                       cabal-install
                       ]);

in
  nixpkgs.pkgs.stdenv.mkDerivation rec {
  name = "env";
  env = nixpkgs.pkgs.buildEnv { name = name; paths = buildInputs; };

  buildInputs = [myHaskellEnv];
  }
