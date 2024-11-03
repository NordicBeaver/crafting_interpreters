{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    jdk  # This will include the default Java Development Kit
    jdt-language-server
    gradle
  ];

  shellHook = ''
    echo "Java development environment loaded"
    java -version
  '';
}

