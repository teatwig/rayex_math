defmodule RayexMath do
  @moduledoc """
  Math functions to work with Vector2, Vector3, Matrix and Quaternions.

  RayexMath is an almost 1 to 1 binding with raymath and uses the structs from `Rayex` for easier integration.
  """

  alias Rayex.Structs, as: S
  alias RayexMath.Unifex.Raymath

  @doc "Rotate vector by angle"
  @spec vector2_rotate(S.Vector2.t(), float()) :: S.Vector2.t()
  defdelegate vector2_rotate(vector, angle), to: Raymath
end
