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
		    "desktop" = nixpkgs-stable.lib.nixosSystem {
			specialArgs = {
			    hostname = "desktop";
			    pkgs-stable = import nixpkgs-stable {
				inherit system;
				config.allowUnfree = true;
			    };
			    inherit inputs system;
			};
			modules = [
			    ./common/systems/configuration.nix
			    ./systems/desktop/default.nix
			    inputs.nixvim.nixosModules.nixvim
			];
		    };

		    "system76" = nixpkgs.lib.nixosSystem {
			specialArgs = {
			    hostname = "system76";
			    pkgs-stable = import nixpkgs-stable {
				inherit system;
				config.allowUnfree = true;
			    };
			    inherit inputs system;
			};
			modules = [
			    ./common/systems/configuration.nix
			    ./systems/system76/default.nix
			    inputs.nixvim.nixosModules.nixvim
			];
		    };

		    "thinkpad" = nixpkgs.lib.nixosSystem {
			specialArgs = {
			    hostname = "thinkpad";
			    pkgs-stable = import nixpkgs-stable {
				inherit system;
				config.allowUnfree = true;
			    };
			    inherit inputs system;
			};
			modules = [
			    ./common/systems/configuration.nix
			    ./systems/thinkpad/default.nix
			    inputs.nixvim.nixosModules.nixvim
			];
		    };

		};


		homeConfigurations = {
		    "kieran@desktop" = home-manager.lib.homeManagerConfiguration {
			extraSpecialArgs = {
			    username = "kieran";
			};
			pkgs = nixpkgs.legacyPackages.${system};
			modules = [ 
			    ./common/homes/home.nix
			    ./homes/desktop/home.nix
			];

		    };

		    
		    "kieran@system76" = home-manager.lib.homeManagerConfiguration {
			extraSpecialArgs = {
			    username = "kieran";
			};
			pkgs = nixpkgs.legacyPackages.${system};
			modules = [ 
			    ./common/homes/home.nix
			    ./homes/system76/home.nix
			];
		    };

		    "kieran@thinkpad" = home-manager.lib.homeManagerConfiguration {
			extraSpecialArgs = {
			    username = "kieran";
			};
			pkgs = nixpkgs.legacyPackages.${system};
			modules = [ 
			    ./common/homes/home.nix
			    ./homes/thinkpad/home.nix
			];
		    };
		};
	};

}
