void func_800441C8(float m[4][4]) {
    int i, j;
    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            if (i == j) m[i][j] = 1.0f; else m[i][j] = 0.0f;
        }
    }
}
