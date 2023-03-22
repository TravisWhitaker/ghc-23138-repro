with import <nixpkgs> {};
let thisghc = haskell.packages.ghc927.ghcWithPackages (p: [p.cabal-install]);
in mkShell
{
    packages = [thisghc];
    #inputsFrom = [ haskell.packages.ghc927.double-conversion
    #             ];
}
