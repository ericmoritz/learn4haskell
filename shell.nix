{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    gnumake
    haskell.compiler.ghc8102
    haskellPackages.cabal-install

    # keep this line if you use bash
    pkgs.bashInteractive
  ];
}
