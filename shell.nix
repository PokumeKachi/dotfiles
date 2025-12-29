let
    pkgs = import <nixpkgs> { };

    buildInputs = with pkgs; [
        just
        stow
    ];

    shellHook = ''
        echo Welcome to the nix shell!
    '';
in

pkgs.mkShell {
    inherit buildInputs shellHook;
}
