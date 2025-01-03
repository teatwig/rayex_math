# SPDX-License-Identifier: Apache-2.0
# The type definitions were directly taken from Rayex and are Copyright 2021 Shiryel
module RayexMath.Unifex.Raymath

interface [NIF, CNode]

type vector2 :: %Rayex.Structs.Vector2{
       x: float,
       y: float
     }

type vector3 :: %Rayex.Structs.Vector3{
       x: float,
       y: float,
       z: float
     }

type vector4 :: %Rayex.Structs.Vector4{
       x: float,
       y: float,
       z: float,
       w: float
     }

# same as vector4
type quaternion :: %Rayex.Structs.Quaternion{
       x: float,
       y: float,
       z: float,
       w: float
     }

type matrix :: %Rayex.Structs.Matrix{
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

spec vector2_rotate(vector :: vector2, angle :: float) :: result :: vector2
