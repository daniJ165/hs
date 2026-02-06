{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  
  pname = "hs";
  version = "0.1.0";

  src = ./.;


  buildInputs = [
    pkgs.python3
    #pkgs.figlet
    pkgs.bash
    ];

    installPhase = ''
      mkdir -p $out/bin
      cp $src/asdf.sh $out/bin/hs
      chmod +x $out/bin/hs
      '';
}
