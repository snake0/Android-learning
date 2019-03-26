# Android-learning
## Solution to Dalvik byteCode tutorial
* link: https://github.com/appetizerio/team-info/wiki/Dalvik字节码实验教程
## **1. 通过反射修改private成员**
```Java
package test;

import java.lang.reflect.Field;

class Foo {
    private int haha = 3;

    int getField() {
        return haha;
    }
}

public class Main {
    public static void main(String[] args) throws NoSuchFieldException, IllegalAccessException {
        Foo fooObj = new Foo();
        Field privateIntField = Foo.class.getDeclaredField("haha");
        privateIntField.setAccessible(true);
        privateIntField.set(fooObj, 2);
        System.out.println("fieldValue = " + privateIntField.get(fooObj));
    }
}
```
