{
    description = "My flake templates";

    outputs = { self, ... }: {
	templates = {
	    rust-dev-template = {
		path = ./rust-dev-template;
		description = "Template for created a rust";
	    };
	};
    };
}
