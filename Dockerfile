FROM nixos/nix

RUN nix-channel --update

RUN nix-build -A pythonFull '<nixpkgs>'
