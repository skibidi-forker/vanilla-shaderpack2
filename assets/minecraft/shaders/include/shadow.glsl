mat4 orthographicProjectionMatrix(float left, float right, float bottom, float top, float near, float far) {
    return mat4(
        2.0 / (right - left), 0.0, 0.0, 0.0,
        0.0, 2.0 / (top - bottom), 0.0, 0.0,
        0.0, 0.0, -2.0 / (far - near), 0.0,
        -(right + left) / (right - left), -(top + bottom) / (top - bottom), -(far + near) / (far - near), 1.0
    );
}

mat4 lookAtTransformationMatrix(vec3 eye, vec3 center, vec3 up) {
    vec3 f = normalize(center - eye);
    vec3 u = normalize(up);
    vec3 s = normalize(cross(f, u));
    u = cross(s, f);

    mat4 result = mat4(1.0);
    result[0][0] = s.x;
    result[1][0] = s.y;
    result[2][0] = s.z;
    result[0][1] = u.x;
    result[1][1] = u.y;
    result[2][1] = u.z;
    result[0][2] = -f.x;
    result[1][2] = -f.y;
    result[2][2] = -f.z;
    result[3][0] = -dot(s, eye);
    result[3][1] = -dot(u, eye);
    result[3][2] = dot(f, eye);
    return result;
}

bool isShadowMapFrame(float time) {
    return (int(round(time * 514229)) % 15) == 0;
}

mat3 rotationZMatrix(float theta) {
    float cosT = cos(theta);
    float sinT = sin(theta);
    return mat3(
        cosT, -sinT, 0.0, 
        sinT, cosT, 0.0,
        0.0, 0.0, 1.0
    );
}

vec3 getShadowEyeLocation(float time) {
    // mat3 rotation = rotationZMatrix(-radians(mod(degrees(time * 50), 180)));
    // return rotation * vec3(128.0, 0.0, 15.0);
    return vec3(10, 8.6, 5);
}