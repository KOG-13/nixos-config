{ pkgs ? import <nixpkgs> {} }:

pkgs.writeShellScriptBin "devflake" ''

# Function to echo boilerplate development flake into a new flake.nix file in the current directory

  function copy_flake {
    echo "
# flake.nix

{
    description = \"Boilerplate nix development flake\";

    inputs = {
	nixpkgs.url = \"github:nixos/nixpkgs/nixos-unstable\";
    };

    outputs = { self, nixpkgs, ... }@inputs:
    let
	system = \"x86_64-linux\";
	pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
    {
	devShells.x86_64-linux.default =
	pkgs.mkShell
	{
	    nativeBuildInputs = with pkgs; [
	    # Development Packages here
	    ];
	};
    };
}
    " > flake.nix
  }

  echo -n "Copy development flake template to this directory? (Y/N): "
  read input

  input=$(echo "$input" | tr '[:lower:]' '[:upper:]')

  if [[ "$input" == "Y" ]]; then
    # Run above function
    copy_flake
    echo "Development flake copied to current directory"

  elif [[ "$input" == "N" ]]; then
    echo "process halted"

  else
    echo "Invalid input"
  fi

''

