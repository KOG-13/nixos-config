{
	description = "My system configuration";
	
	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nixvim = {
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { self, nixpkgs, nixpkgs-stable,  home-manager, ... }@inputs: 

		let 
			system = "x86_64-linux";
		in {	

		
		nixosConfigurations = {
		    "nixDesktop" = nixpkgs.lib.nixosSystem {
			specialArgs = {
			    pkgs-stable = import nixpkgs-stable {
				inherit system;
				config.allowUnfree = true;
			    };
			    inherit inputs system;
			};
			modules = [
			    ./hosts/desktop/nixos/configuration.nix
			    inputs.nixvim.nixosModules.nixvim
			];
		    };

		    "nixLaptop" = nixpkgs.lib.nixosSystem {
			specialArgs = {
			    pkgs-stable = import nixpkgs-stable {
				inherit system;
				config.allowUnfree = true;
			    };
			    inherit inputs system;
			};
			modules = [
			    ./hosts/thinkpad/nixos/configuration.nix
			    inputs.nixvim.nixosModules.nixvim
			];
		    };

		};


		homeConfigurations = {
		    "kieran@nixDesktop" = home-manager.lib.homeManagerConfiguration {
			extraSpecialArgs = {
			    username = "kieran";
			};
			pkgs = nixpkgs.legacyPackages.${system};
			modules = [ ./hosts/desktop/home-manager/home.nix ];
		    };

		    "kieran@nixLaptop" = home-manager.lib.homeManagerConfiguration {
			extraSpecialArgs = {
			    username = "kieran";
			};
			pkgs = nixpkgs.legacyPackages.${system};
			modules = [ ./hosts/thinkpad/home-manager/home.nix ];
		    };
		};
	};

}
