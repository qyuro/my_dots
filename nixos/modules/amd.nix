{config, ... }:
{
  hardware.amdgpu.initrd.enable = true;
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
  hardware.amdgpu.opencl.enable = true ; 
  hardware.cpu.amd.updateMicrocode = true;
}

