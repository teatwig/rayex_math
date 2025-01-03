 defmodule RayexMath.BundlexProject do
   use Bundlex.Project

   def project() do
     [
       natives: natives(Bundlex.get_target())
     ]
   end

   def natives(_platform) do
     [
       rayex_math: [
         sources: ["rayex_math.c"],
         interface: [:nif, :cnode],
         os_deps: [
           raylib: {:pkg_config, "raylib"}
         ],
         linker_flags: ["-lm"],
         preprocessor: Unifex
       ]
     ]
   end
 end
