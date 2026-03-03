{pkgs, ...}: {
  devShells.py-reboar = pkgs.mkShell {
    name = "py-reboar";
    packages = with pkgs; [
      python313
      ffmpeg
      python313Packages.mutagen
      python313Packages.pydub
    ];
    NIX_CONFIG = "extra-experimental-features = nix-command flakes";
    DIRENV_LOG_FORMAT = "";
  };
}
