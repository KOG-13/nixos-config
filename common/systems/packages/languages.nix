{ pkgs, ... }:{
    environment.systemPackages = with pkgs;
    [
    ## Language packages in case something else needs them
    ## These are not meant for development. Use devenv 
		gcc # GNU compiler
		nodejs # Javascript framework
		#python3# Python programming language
    python312Packages.materialx
		rustc # Rust 
		cargo # Rust package manager
		go # golang language
		mysql84 #MySQL Language 
		#cmake # C/C++ Compiler
		kotlin # Java-like language
    openjdk
    ];
}
