{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  
  pname = "hs";
  version = "0.1.0";

  src = ./.;

  buildInputs = [
    pkgs.python3
    ];

    installPhase = ''
      mkdir -p $out/bin
      cp $src/hs.py $out/bin/hs
      chmod +x $out/bin/hs
      '';
}
