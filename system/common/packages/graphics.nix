{ pkgs, inputs, ... }:{
    environment.systemPackages = with pkgs;
    [
        blender # 3D modeling software
        blockbench # voxel modeling software
        gimp # FOSS Photoshop alternative
    ];
}
