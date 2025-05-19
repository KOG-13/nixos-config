# nixos-config

My NixOS configuration usable across all of my personal devices

Directory and file structures inspired by [Andrey0189](https://github.com/Andrey0189/nixos-config) (module structure) and [BirdeeHub](https://github.com/BirdeeHub/birdeeSystems) ([multi-system config](https://github.com/BirdeeHub/birdeeSystems/blob/582fe0c1123395c8cc0aa3a1bf6dfa3ce65dcfbb/flake.nix#L91-L115))

## Configuration Goals
1. - [X] [zsh](https://github.com/Kogara13/nixos-config/blob/da80d281ffc67a0841aab6b052765cc6d39cf6eb/common/homes/zsh.nix)
2. - [ ] hyprland
3. - [X] [nixvim](https://github.com/Kogara13/nixvim-config)
4. - [X] tmux
5. - [X] default config for new devices (Created profiles for desktop and laptop)
6. - [ ] dev flake templates (Scraping this and instead will work with devenv)
7. - [ ] ssh setup
8. - [ ] disko setup
9. - [X] librewolf (For what I'm using them for, importing the bookmark.html is easy enough to leave it semi-imperative)
        - [ ] startpage
        - [ ] stylesheets
        - [ ] fix unhook and zotero extensions
