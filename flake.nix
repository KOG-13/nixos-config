{
    description = "My system configuration";
	
	  inputs = {
		    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
		    #nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.05";

		    home-manager = {
			      url = "github:nix-community/home-manager/release-25.05";
			      inputs.nixpkgs.follows = "nixpkgs";
		    };

        swww.url = "github:LGFae/swww";
    
		    nixvim = {
			      url = "github:KOG-13/nixvim-config";
			      inputs.nixpkgs.follows = "nixpkgs";
		    };
   
    
        polymc = {
            url = "github:PolyMC/PolyMC";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        spicetify-nix.url = "github:Gerg-L/spicetify-nix";
        spicetify-nix.inputs.nixpkgs.follows = "nixpkgs";

    };

	  outputs = { self, nixpkgs, nixpkgs-stable, home-manager, ... }@inputs: 

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
                    ./system/common/configuration.nix
                    ./system/desktop/default.nix
                ];
            };

		        "laptop" = nixpkgs.lib.nixosSystem {
			          specialArgs = {
			              hostname = "laptop";
			              pkgs-stable = import nixpkgs {
				                inherit system;
				                config.allowUnfree = true;
			              };
			              inherit inputs system;
			          };
			          modules = [
                    ./system/common/configuration.nix
                    ./system/laptop/default.nix
			          ];
            };
		    };


        homeConfigurations = {
		        "kog@desktop" = home-manager.lib.homeManagerConfiguration {
			          extraSpecialArgs = {
			              username = "kog";
                    inherit inputs;
			          };
			          #pkgs = nixpkgs.legacyPackages.${system};
			          pkgs = import nixpkgs {
                    system = "x86_64-linux";
                    config.allowUnfree = true;
                };
			          modules = [ 
                    ./home/common/home.nix
                    ./home/desktop/home.nix
                    inputs.spicetify-nix.homeManagerModules.default
			          ];
		        };

		    
		        "kog@laptop" = home-manager.lib.homeManagerConfiguration {
			          extraSpecialArgs = {
			              username = "kog";
                    inherit inputs;
			          };
			          #pkgs = nixpkgs.legacyPackages.${system};
			          pkgs = import nixpkgs {
                    system = "x86_64-linux";
                    config.allowUnfree = true;
                };
			          modules = [ 
                    ./home/common/home.nix
                    ./home/laptop/home.nix
                    inputs.spicetify-nix.homeManagerModules.default
			          ];
		        };
        };
    }; 
}
