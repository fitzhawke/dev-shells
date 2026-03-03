{pkgs, ...}: {
  devShells.py-scrappy = pkgs.mkShell {
    name = "py-scrappy";
    packages = with pkgs; [
      python313
      python313Packages.beautifulsoup4
      python313Packages.requests
      python313Packages.ebooklib
    ];
    NIX_CONFIG = "extra-experimental-features = nix-command flakes";
    DIRENV_LOG_FORMAT = "";
  };
}
