# SPDX-License-Identifier: Apache-2.0
# The type definitions were directly taken from Rayex and are Copyright 2021 Shiryel

# only define the structs if Rayex doesn't already define them
if not Code.ensure_loaded?(Rayex) do
  defmodule Rayex.Structs.Vector2 do
    @moduledoc "Vector2"
    @enforce_keys ~w[x y]a
    defstruct ~w[x y]a

    @type t :: %__MODULE__{x: float(), y: float()}
  end

  defmodule Rayex.Structs.Vector3 do
    @moduledoc "Vector3"
    @enforce_keys ~w[x y z]a
    defstruct ~w[x y z]a

    @type t :: %__MODULE__{x: float(), y: float(), z: float()}
  end

  defmodule Rayex.Structs.Vector4 do
    @moduledoc "Vector3"
    @enforce_keys ~w[x y z w]a
    defstruct ~w[x y z w]a

    @type t :: %__MODULE__{x: float(), y: float(), z: float(), w: float()}
  end

  # same as vector4
  defmodule Rayex.Structs.Quaternion do
    @moduledoc "Quaternion"
    @enforce_keys ~w[x y z w]a
    defstruct ~w[x y z w]a

    @type t :: %__MODULE__{x: float(), y: float(), z: float(), w: float()}
  end

  defmodule Rayex.Structs.Matrix do
    @moduledoc "Matrix"
    @enforce_keys ~w[m0 m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 m11 m12 m13 m14 m15]a
    defstruct ~w[m0 m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 m11 m12 m13 m14 m15]a

    @type t :: %__MODULE__{
            m0: float,
            m1: float,
            m2: float,
            m3: float,
            #
            m4: float,
            m5: float,
            m6: float,
            m7: float,
            #
            m8: float,
            m9: float,
            m10: float,
            m11: float,
            #
            m12: float,
            m13: float,
            m14: float,
            m15: float
          }
  end
end
