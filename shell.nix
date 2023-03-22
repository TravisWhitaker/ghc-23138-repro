let pkgsrc = builtins.fetchGit
    {
        url = "https://github.com/nixos/nixpkgs";
        ref = "master";
        rev = "38637c5c8fddf9c5b454918acf309c55e3809af1";
    };
in with import pkgsrc {};
let thisghc = haskell.packages.ghc927.ghcWithPackages (p: [p.cabal-install]);
in mkShell
{
    packages = [thisghc];
    #inputsFrom = [ haskell.packages.ghc927.double-conversion
    #             ];
}
