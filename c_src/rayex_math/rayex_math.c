// SPDX-License-Identifier: Apache-2.0
// The type definitions were directly taken from Rayex and are Copyright 2021 Shiryel
#include "rayex_math.h"
#include <raymath.h>

// NOTE: "E_" when converting back to NIF struct

#define VECTOR2(v) ((Vector2){.x = v.x, .y = v.y})
#define E_VECTOR2(v) ((vector2){.x = v.x, .y = v.y})

#define VECTOR3(v) ((Vector3){.x = v.x, .y = v.y, .z = v.z})
#define E_VECTOR3(v) ((vector3){.x = v.x, .y = v.y, .z = v.z})

#define VECTOR4(v) ((Vector4){.x = v.x, .y = v.y, .z = v.z, .w = v.w})
#define E_VECTOR4(v) ((vector4){.x = v.x, .y = v.y, .z = v.z, .w = v.w})

#define QUATERNION(q) ((Quaternion){.x = q.x, .y = q.y, .z = q.z, .w = q.w})
#define E_QUATERNION(q) ((quaternion){.x = q.x, .y = q.y, .z = q.z, .w = q.w})

#define MATRIX(m)         \
  ((Matrix){.m0 = m.m0,   \
            .m1 = m.m1,   \
            .m2 = m.m2,   \
            .m3 = m.m3,   \
            .m4 = m.m4,   \
            .m5 = m.m5,   \
            .m6 = m.m6,   \
            .m7 = m.m7,   \
            .m8 = m.m8,   \
            .m9 = m.m9,   \
            .m10 = m.m10, \
            .m11 = m.m11, \
            .m12 = m.m12, \
            .m13 = m.m13, \
            .m14 = m.m14, \
            .m15 = m.m15})
#define E_MATRIX(m)       \
  ((matrix){.m0 = m.m0,   \
            .m1 = m.m1,   \
            .m2 = m.m2,   \
            .m3 = m.m3,   \
            .m4 = m.m4,   \
            .m5 = m.m5,   \
            .m6 = m.m6,   \
            .m7 = m.m7,   \
            .m8 = m.m8,   \
            .m9 = m.m9,   \
            .m10 = m.m10, \
            .m11 = m.m11, \
            .m12 = m.m12, \
            .m13 = m.m13, \
            .m14 = m.m14, \
            .m15 = m.m15})

/***********
 * RAYMATH *
 ***********/

UNIFEX_TERM vector2_rotate(UnifexEnv *env, vector2 v, double angle) {
  Vector2 res = Vector2Rotate(VECTOR2(v), angle);
  return vector2_rotate_result(env, E_VECTOR2(res));
}
