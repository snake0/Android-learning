package org.webrtc;

import android.opengl.GLES20;
import java.nio.FloatBuffer;

public class GlShader {
    private static final String TAG = "GlShader";
    private int fragmentShader;
    private int program = GLES20.glCreateProgram();
    private int vertexShader;

    private static int compileShader(int i, String str) {
        int[] iArr = new int[]{0};
        int glCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            Logging.e(TAG, "Could not compile shader " + i + ":" + GLES20.glGetShaderInfoLog(glCreateShader));
            throw new RuntimeException(GLES20.glGetShaderInfoLog(glCreateShader));
        }
        GlUtil.checkNoGLES2Error("compileShader");
        return glCreateShader;
    }

    public GlShader(String str, String str2) {
        this.vertexShader = compileShader(35633, str);
        this.fragmentShader = compileShader(35632, str2);
        if (this.program == 0) {
            throw new RuntimeException("Could not create program");
        }
        GLES20.glAttachShader(this.program, this.vertexShader);
        GLES20.glAttachShader(this.program, this.fragmentShader);
        GLES20.glLinkProgram(this.program);
        int[] iArr = new int[]{0};
        GLES20.glGetProgramiv(this.program, 35714, iArr, 0);
        if (iArr[0] != 1) {
            Logging.e(TAG, "Could not link program: " + GLES20.glGetProgramInfoLog(this.program));
            throw new RuntimeException(GLES20.glGetProgramInfoLog(this.program));
        } else {
            GlUtil.checkNoGLES2Error("Creating GlShader");
        }
    }

    public int getAttribLocation(String str) {
        if (this.program == -1) {
            throw new RuntimeException("The program has been released");
        }
        int glGetAttribLocation = GLES20.glGetAttribLocation(this.program, str);
        if (glGetAttribLocation >= 0) {
            return glGetAttribLocation;
        }
        throw new RuntimeException("Could not locate '" + str + "' in program");
    }

    public void setVertexAttribArray(String str, int i, FloatBuffer floatBuffer) {
        if (this.program == -1) {
            throw new RuntimeException("The program has been released");
        }
        int attribLocation = getAttribLocation(str);
        GLES20.glEnableVertexAttribArray(attribLocation);
        GLES20.glVertexAttribPointer(attribLocation, i, 5126, false, 0, floatBuffer);
        GlUtil.checkNoGLES2Error("setVertexAttribArray");
    }

    public int getUniformLocation(String str) {
        if (this.program == -1) {
            throw new RuntimeException("The program has been released");
        }
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.program, str);
        if (glGetUniformLocation >= 0) {
            return glGetUniformLocation;
        }
        throw new RuntimeException("Could not locate uniform '" + str + "' in program");
    }

    public void useProgram() {
        if (this.program == -1) {
            throw new RuntimeException("The program has been released");
        }
        GLES20.glUseProgram(this.program);
        GlUtil.checkNoGLES2Error("glUseProgram");
    }

    public void release() {
        Logging.d(TAG, "Deleting shader.");
        if (this.vertexShader != -1) {
            GLES20.glDeleteShader(this.vertexShader);
            this.vertexShader = -1;
        }
        if (this.fragmentShader != -1) {
            GLES20.glDeleteShader(this.fragmentShader);
            this.fragmentShader = -1;
        }
        if (this.program != -1) {
            GLES20.glDeleteProgram(this.program);
            this.program = -1;
        }
    }
}
