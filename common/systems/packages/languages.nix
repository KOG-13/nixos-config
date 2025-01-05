{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
		### Coding Packages ###
		gcc # GNU compiler
		nodejs # Javascript framework
		python3 # Python programming language
		rustc # Rust 
		cargo # Rust package manager
		go # golang language
		mysql84 #MySQL Language 
		cmake # C/C++ Compiler
		kotlin # Java-like language
    /*
		(python311.withPackages (ps: with ps; [ # Python 3.11 with declared packages
		    numpy
		    scipy
		    pandas
		    jupyterlab
		    statsmodels
		    scikitlearn
		    seaborn
		    matplotlib
		    opencv4
		]))
    */
    ];
    

}
