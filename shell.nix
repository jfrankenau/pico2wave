with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "env";
  buildInputs = [ popt svox ];
  PICOLANGDIR = "${svox}/share/pico/lang";
}
