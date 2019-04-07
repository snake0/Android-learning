# Android-learning
## Solution to Dalvik byteCode tutorial
# 1. 通过反射修改private成员

## 1.1【实验】反射获取`haha`,修改haha的值

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
        Field privateIntField = Foo.class.getDeclaredField("haha");
        privateIntField.setAccessible(true);

        Foo fooObj = new Foo();
        privateIntField.set(fooObj, 2);
        System.out.println("fieldValue = " + privateIntField.get(fooObj));
    }
}
```



# 2. 熟练APK重签名
* https://developer.android.com/studio/command-line/apksigner
* 了解APK签名结构 https://www.jianshu.com/p/a27783a713f2

## 2.1【实验】实现一个python脚本，能够给apk重签名（先取出原有签名，再用自己的密钥重新签名）
密钥在keys目录下
密码:nathan

```python
import sys
import os

if len(sys.argv) != 3:
    print("usage: python signer.py [apksigner.jar dir] [*.apk dir]")
    sys.exit(0)

cmd = "java -jar %s sign --ks keys/hellokey.jks %s" % (sys.argv[1], sys.argv[2])
os.system(cmd)
print("\nresign verify:\n")
cmd = "java -jar %s verify -v %s" % (sys.argv[1], sys.argv[2])
os.system(cmd)
```

# 3. 使用smali/baksmali查看Dalvik字节码
https://github.com/JesusFreke/smali
[这是smali源码的简明教程](https://www.52pojie.cn/thread-395689-1-1.html)

## 3.1【实验】下载去哪儿apk，baksmali之后看看源码，尝试读一读




# 4. 熟练使用jadx
* https://github.com/skylot/jadx/
* 使用反编译模式看逻辑，使用fallback模式（文件->设置）看字节码

## 4.1【实验】使用jadx，反编译去哪儿apk，先读java源码,再读一读对应的字节码



# 5. 修改一条invoke-xxx 指令，为onCreate通过smali增加一段Log.d的调用
例如将 `android.util.Log`的调用改掉，smali重新打包，安装，看效果

## 5.1【实验】自己写一个简单的androidapp，就实现helloworld，然后反编译修改invoke，看看效果。



# 6 【阶段性大实验】破解去哪儿apk的签名验证


# 熟悉android dx工具
dx在 `Android SDK/build-tools/`下面

# 为APK增加一个新的dex文件

# 修改invoke-xxx调用新dex文件的内容

# 编写非APK封装的dalvik程序
https://blog.csdn.net/u010651541/article/details/53163542

# 了解CLASSPATH加载顺序
* 通过编写一个同名（同包名，同类名）的class，编译成独立dex，安排CLASSPATH加载序的方式，替换掉APK原有类

