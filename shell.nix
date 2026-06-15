{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  buildInputs = [
    pkgs.python3
    pkgs.ruby
    pkgs.git
    pkgs.docker

  ];
}
