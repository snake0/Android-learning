package com.mqunar.qapm.network.instrumentation;

public @interface ReplaceCallSite {
    boolean isStatic() default false;

    String scope() default "";
}
