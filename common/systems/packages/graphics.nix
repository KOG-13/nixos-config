{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
    # Graphics
		#aseprite # pixel art creation tool
		blender # 3D modeling software
		blockbench # voxel modeling software
		gimp # FOSS Photoshop alternative
    ];
}
