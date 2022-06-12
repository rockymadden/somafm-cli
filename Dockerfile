FROM nixos/nix
RUN nix-channel --update
COPY . /soma
RUN cd /soma; nix-env -f default.nix -i
