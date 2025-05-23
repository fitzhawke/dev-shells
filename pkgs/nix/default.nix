{pkgs, ...}: {
  devShells.nix-nil = pkgs.mkShell {
    name = "nix-nil";
    packages = with pkgs; [
      nix
      home-manager
      git

      nil
      alejandra
    ];
    NIX_CONFIG = "extra-experimental-features = nix-command flakes";
    DIRENV_LOG_FORMAT = "";
  };
}
