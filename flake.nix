{
	description = "My system configuration";
	
	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
		#nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.11";
    old-obsidian.url = "github:nixos/nixpkgs/34a626458d686f1b58139620a8b2793e9e123bba";

		home-manager = {
			url = "github:nix-community/home-manager/release-24.11";
			inputs.nixpkgs.follows = "nixpkgs";
		};
    
		nixvim = {
			url = "github:Kogara13/nixvim-config";
			inputs.nixpkgs.follows = "nixpkgs";
		};
   
    
    polymc = {
        url = "github:PolyMC/PolyMC";
        inputs.nixpkgs.follows = "nixpkgs";
    };

	};

	outputs = { self, nixpkgs, nixpkgs-stable,  home-manager, ... }@inputs: 

		let 
			system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
		in 
    {		
		nixosConfigurations = {
		    "desktop" = nixpkgs.lib.nixosSystem {
			      specialArgs = {
			          hostname = "desktop";
			          pkgs-stable = import nixpkgs {
				            inherit system;
				            config.allowUnfree = true;
                    config.cudaSupport = true;
			          };
			          inherit inputs system;
			      };
			  modules = [
			    ./common/systems/configuration.nix
			    ./systems/desktop/default.nix
			  ];
        };

		    "system76" = nixpkgs.lib.nixosSystem {
			specialArgs = {
			    hostname = "system76";
			    pkgs-stable = import nixpkgs {
				inherit system;
				config.allowUnfree = true;
			    };
			    inherit inputs system;
			};
			modules = [
			    ./common/systems/configuration.nix
			    ./systems/system76/default.nix
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
		};
	};

}
