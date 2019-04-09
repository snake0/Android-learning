package com.mqunar.module;

import android.app.Application;
import com.mqunar.core.BaseApkLoader;
import com.mqunar.core.ModuleParser;
import com.mqunar.core.basectx.application.QApplication;
import com.mqunar.core.dependency.Atom;
import com.mqunar.core.dependency.AtomNode;
import com.mqunar.core.dependency.Circular;
import com.mqunar.core.dependency.Dependency;
import com.mqunar.tools.log.QLog;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class ModuleInfo {
    public static final String MULTI_CLASS_DIR = "multi_classes";
    public Application application;
    public Dependency dependency;
    public String description = "";
    public List<DexInfo> dexList;
    public String fileName;
    public boolean isDataFile;
    public boolean isLoad;
    public String launcherClassName;
    public BaseApkLoader loader;
    public byte onlineType = (byte) 1;
    public byte type = (byte) 0;
    public byte updateType = (byte) 0;
    public ZipFile zipFile;

    public class DexInfo {
        public File dexOutPath;
        public String entryName;
        public int indexInElement;
        public boolean isLoad;
    }

    public void initDexList() {
        if (this.dexList != null && this.dexList.isEmpty()) {
            File file = new File(QApplication.getContext().getFilesDir(), MULTI_CLASS_DIR);
            int i = 2;
            while (true) {
                StringBuilder append = new StringBuilder().append("classes");
                int i2 = i + 1;
                String stringBuilder = append.append(i).append(".dex").toString();
                if (this.zipFile.getEntry(stringBuilder) != null) {
                    DexInfo dexInfo = new DexInfo();
                    dexInfo.entryName = stringBuilder;
                    dexInfo.dexOutPath = new File(file, this.dependency.packageName + "." + stringBuilder + ".zip");
                    dexInfo.isLoad = false;
                    this.dexList.add(dexInfo);
                    i = i2;
                } else {
                    return;
                }
            }
        }
    }

    public boolean hasUnloadMultiDex() {
        if (this.dexList != null) {
            synchronized (this.dexList) {
                for (DexInfo dexInfo : this.dexList) {
                    if (!dexInfo.isLoad) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public Class loadFromMultiDex(String str) {
        if (this.dexList != null) {
            synchronized (this.dexList) {
                for (DexInfo dexInfo : this.dexList) {
                    if (!dexInfo.isLoad) {
                        synchronized (dexInfo) {
                            if (!dexInfo.isLoad) {
                                ZipEntry entry = this.zipFile.getEntry(dexInfo.entryName);
                                boolean z = false;
                                if (dexInfo.dexOutPath.exists() && dexInfo.dexOutPath.length() > 0 && dexInfo.dexOutPath.length() == entry.getSize()) {
                                    z = ModuleParser.checkEquals(this.zipFile, entry, dexInfo.dexOutPath);
                                }
                                if (!z) {
                                    dexInfo.dexOutPath.delete();
                                    a(this.zipFile, entry, dexInfo.dexOutPath);
                                }
                                this.loader.loadMultiDex(dexInfo.indexInElement);
                                dexInfo.isLoad = true;
                            }
                        }
                    }
                    Class findClass = this.loader.getMultiDexElement(dexInfo.indexInElement).findClass(str);
                    if (findClass != null) {
                        return findClass;
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:63:0x00b0 A:{RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0066  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0097 A:{SYNTHETIC, Splitter:B:49:0x0097} */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x009f A:{SYNTHETIC, Splitter:B:54:0x009f} */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x007b A:{SYNTHETIC, Splitter:B:34:0x007b} */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x00bb  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0083 A:{SYNTHETIC, Splitter:B:39:0x0083} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0066  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x00b0 A:{RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0097 A:{SYNTHETIC, Splitter:B:49:0x0097} */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x009f A:{SYNTHETIC, Splitter:B:54:0x009f} */
    private static void a(java.util.zip.ZipFile r11, java.util.zip.ZipEntry r12, java.io.File r13) {
        /*
        r2 = 0;
        r4 = 0;
        r0 = 1;
        r1 = r11.getInputStream(r12);	 Catch:{ Throwable -> 0x0077, all -> 0x0092 }
        r3 = r13.getParentFile();	 Catch:{ Throwable -> 0x00b6, all -> 0x00b1 }
        r3.mkdirs();	 Catch:{ Throwable -> 0x00b6, all -> 0x00b1 }
        r3 = new java.util.zip.ZipOutputStream;	 Catch:{ Throwable -> 0x00b6, all -> 0x00b1 }
        r5 = new java.io.BufferedOutputStream;	 Catch:{ Throwable -> 0x00b6, all -> 0x00b1 }
        r6 = new java.io.FileOutputStream;	 Catch:{ Throwable -> 0x00b6, all -> 0x00b1 }
        r6.<init>(r13);	 Catch:{ Throwable -> 0x00b6, all -> 0x00b1 }
        r5.<init>(r6);	 Catch:{ Throwable -> 0x00b6, all -> 0x00b1 }
        r3.<init>(r5);	 Catch:{ Throwable -> 0x00b6, all -> 0x00b1 }
        r5 = new java.util.zip.ZipEntry;	 Catch:{ Throwable -> 0x00b8, all -> 0x00b4 }
        r6 = "classes.dex";
        r5.<init>(r6);	 Catch:{ Throwable -> 0x00b8, all -> 0x00b4 }
        r6 = r12.getTime();	 Catch:{ Throwable -> 0x00b8, all -> 0x00b4 }
        r5.setTime(r6);	 Catch:{ Throwable -> 0x00b8, all -> 0x00b4 }
        r3.putNextEntry(r5);	 Catch:{ Throwable -> 0x00b8, all -> 0x00b4 }
        r6 = r12.getSize();	 Catch:{ Throwable -> 0x00b8, all -> 0x00b4 }
        r5 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r8 = new byte[r5];	 Catch:{ Throwable -> 0x00b8, all -> 0x00b4 }
        r5 = r4;
    L_0x0037:
        r9 = r1.read(r8);	 Catch:{ Throwable -> 0x00b8, all -> 0x00b4 }
        r10 = -1;
        if (r9 == r10) goto L_0x0044;
    L_0x003e:
        r10 = 0;
        r3.write(r8, r10, r9);	 Catch:{ Throwable -> 0x00b8, all -> 0x00b4 }
        r5 = r5 + r9;
        goto L_0x0037;
    L_0x0044:
        r8 = (long) r5;	 Catch:{ Throwable -> 0x00b8, all -> 0x00b4 }
        r5 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1));
        if (r5 == 0) goto L_0x0051;
    L_0x0049:
        r2 = new java.lang.RuntimeException;	 Catch:{ Throwable -> 0x00b8, all -> 0x00b4 }
        r0 = "文件未读完!";
        r2.<init>(r0);	 Catch:{ Throwable -> 0x00b8, all -> 0x00b4 }
        r0 = r4;
    L_0x0051:
        if (r0 == 0) goto L_0x0056;
    L_0x0053:
        r3.flush();	 Catch:{ Throwable -> 0x00b8, all -> 0x00b4 }
    L_0x0056:
        if (r3 == 0) goto L_0x005e;
    L_0x0058:
        r3.closeEntry();	 Catch:{ IOException -> 0x006f }
    L_0x005b:
        r3.close();	 Catch:{ IOException -> 0x00a8 }
    L_0x005e:
        if (r1 == 0) goto L_0x00be;
    L_0x0060:
        r1.close();	 Catch:{ IOException -> 0x0074 }
        r1 = r2;
    L_0x0064:
        if (r0 != 0) goto L_0x00b0;
    L_0x0066:
        r13.delete();
        r0 = new java.lang.RuntimeException;
        r0.<init>(r1);
        throw r0;
    L_0x006f:
        r4 = move-exception;
        r4.printStackTrace();
        goto L_0x005b;
    L_0x0074:
        r1 = move-exception;
        r1 = r2;
        goto L_0x0064;
    L_0x0077:
        r0 = move-exception;
        r1 = r2;
    L_0x0079:
        if (r2 == 0) goto L_0x0081;
    L_0x007b:
        r2.closeEntry();	 Catch:{ IOException -> 0x0089 }
    L_0x007e:
        r2.close();	 Catch:{ IOException -> 0x00aa }
    L_0x0081:
        if (r1 == 0) goto L_0x00bb;
    L_0x0083:
        r1.close();	 Catch:{ IOException -> 0x008e }
        r1 = r0;
        r0 = r4;
        goto L_0x0064;
    L_0x0089:
        r3 = move-exception;
        r3.printStackTrace();
        goto L_0x007e;
    L_0x008e:
        r1 = move-exception;
        r1 = r0;
        r0 = r4;
        goto L_0x0064;
    L_0x0092:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
    L_0x0095:
        if (r3 == 0) goto L_0x009d;
    L_0x0097:
        r3.closeEntry();	 Catch:{ IOException -> 0x00a3 }
    L_0x009a:
        r3.close();	 Catch:{ IOException -> 0x00ac }
    L_0x009d:
        if (r1 == 0) goto L_0x00a2;
    L_0x009f:
        r1.close();	 Catch:{ IOException -> 0x00ae }
    L_0x00a2:
        throw r0;
    L_0x00a3:
        r2 = move-exception;
        r2.printStackTrace();
        goto L_0x009a;
    L_0x00a8:
        r3 = move-exception;
        goto L_0x005e;
    L_0x00aa:
        r2 = move-exception;
        goto L_0x0081;
    L_0x00ac:
        r2 = move-exception;
        goto L_0x009d;
    L_0x00ae:
        r1 = move-exception;
        goto L_0x00a2;
    L_0x00b0:
        return;
    L_0x00b1:
        r0 = move-exception;
        r3 = r2;
        goto L_0x0095;
    L_0x00b4:
        r0 = move-exception;
        goto L_0x0095;
    L_0x00b6:
        r0 = move-exception;
        goto L_0x0079;
    L_0x00b8:
        r0 = move-exception;
        r2 = r3;
        goto L_0x0079;
    L_0x00bb:
        r1 = r0;
        r0 = r4;
        goto L_0x0064;
    L_0x00be:
        r1 = r2;
        goto L_0x0064;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.module.ModuleInfo.a(java.util.zip.ZipFile, java.util.zip.ZipEntry, java.io.File):void");
    }

    public int checkLibOnSpider(List<ModuleInfo> list, Atom atom) {
        for (ModuleInfo moduleInfo : list) {
            if (moduleInfo.dependency.packageName.equals(atom.packageName)) {
                if (moduleInfo.dependency.versionCode >= atom.versionCode) {
                    return 1;
                }
                a(this.fileName + "不能加载，原因：" + atom.packageName + "不满足版本要求,需要的版本号:" + atom.versionCode + ",平台能够提供的版本号:" + moduleInfo.dependency.versionCode + ",错误码:-21");
                return -21;
            }
        }
        a(this.fileName + "不能加载，原因：需要" + atom.packageName + ",但是平台没有,错误码:-20");
        return -20;
    }

    private static void a(String str) {
        QLog.i("Dependency", str, new Object[0]);
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0082 A:{SYNTHETIC} */
    public static int checkCanOnSpider(com.mqunar.module.ModuleInfo r8, java.lang.String[] r9) {
        /*
        r2 = 0;
        r3 = 1;
        r0 = r8.dependency;
        r0 = r0.libDependenciesList;
        if (r0 == 0) goto L_0x0012;
    L_0x0008:
        r0 = r8.dependency;
        r0 = r0.libDependenciesList;
        r0 = r0.isEmpty();
        if (r0 == 0) goto L_0x0014;
    L_0x0012:
        r0 = r3;
    L_0x0013:
        return r0;
    L_0x0014:
        r0 = r8.dependency;
        r0 = r0.libDependenciesList;
        r4 = r0.iterator();
    L_0x001c:
        r0 = r4.hasNext();
        if (r0 == 0) goto L_0x00ae;
    L_0x0022:
        r0 = r4.next();
        r0 = (com.mqunar.core.dependency.Lib) r0;
        r1 = r2;
    L_0x0029:
        r5 = r9.length;
        if (r1 >= r5) goto L_0x00b1;
    L_0x002c:
        r5 = r9[r1];
        r6 = r1 + 1;
        r6 = r9[r6];
        r7 = r0.packageName;
        r5 = r7.equals(r5);
        if (r5 == 0) goto L_0x00aa;
    L_0x003a:
        r1 = r0.versionCode;
        r1 = com.mqunar.core.dependency.Dependency.checkVersion(r1, r6);
        if (r1 <= 0) goto L_0x007f;
    L_0x0042:
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = r8.fileName;
        r1 = r1.append(r2);
        r2 = "不能加载，原因：";
        r1 = r1.append(r2);
        r2 = r0.packageName;
        r1 = r1.append(r2);
        r2 = "不满足版本要求,需要的版本号:";
        r1 = r1.append(r2);
        r0 = r0.versionCode;
        r0 = r1.append(r0);
        r1 = ",平台能够提供的版本号:";
        r0 = r0.append(r1);
        r0 = r0.append(r6);
        r1 = ",错误码:-11";
        r0 = r0.append(r1);
        r0 = r0.toString();
        a(r0);
        r0 = -11;
        goto L_0x0013;
    L_0x007f:
        r1 = r3;
    L_0x0080:
        if (r1 != 0) goto L_0x001c;
    L_0x0082:
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = r8.fileName;
        r1 = r1.append(r2);
        r2 = "不能加载，原因：需要";
        r1 = r1.append(r2);
        r0 = r0.packageName;
        r0 = r1.append(r0);
        r1 = ",但是平台没有,错误码:-10";
        r0 = r0.append(r1);
        r0 = r0.toString();
        a(r0);
        r0 = -10;
        goto L_0x0013;
    L_0x00aa:
        r1 = r1 + 2;
        goto L_0x0029;
    L_0x00ae:
        r0 = r3;
        goto L_0x0013;
    L_0x00b1:
        r1 = r2;
        goto L_0x0080;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.module.ModuleInfo.checkCanOnSpider(com.mqunar.module.ModuleInfo, java.lang.String[]):int");
    }

    public void check(String[] strArr, List<ModuleInfo> list, List<AtomNode> list2, List<Dependency> list3, List<Circular> list4) {
        if (this.dependency.checkFlag != 1 && this.dependency.checkFlag != -10 && this.dependency.checkFlag != -11 && this.dependency.checkFlag != -20 && this.dependency.checkFlag != -21 && this.dependency.checkFlag != -22) {
            int checkCanOnSpider = checkCanOnSpider(this, strArr);
            if (checkCanOnSpider != 1) {
                this.dependency.checkFlag = checkCanOnSpider;
            } else if (this.dependency.atomDependenciesList == null || this.dependency.atomDependenciesList.isEmpty()) {
                this.dependency.checkFlag = 1;
            } else {
                list3.add(this.dependency);
                checkCanOnSpider = 0;
                Iterator it = this.dependency.atomDependenciesList.iterator();
                while (true) {
                    int i = checkCanOnSpider;
                    if (!it.hasNext()) {
                        checkCanOnSpider = i;
                        break;
                    }
                    Object obj;
                    Atom atom = (Atom) it.next();
                    AtomNode atomNode = atom.getAtomNode(list2);
                    if (atomNode != null) {
                        for (ModuleInfo moduleInfo : atomNode.versionList) {
                            if (moduleInfo.dependency.versionCode >= atom.versionCode) {
                                if (list3.contains(moduleInfo.dependency)) {
                                    obj = 1;
                                    a((List) list4, this.dependency, moduleInfo.dependency);
                                    checkCanOnSpider = 2;
                                    break;
                                }
                                moduleInfo.check(strArr, list, list2, list3, list4);
                                if (moduleInfo.dependency.checkFlag == 1) {
                                    obj = 1;
                                    checkCanOnSpider = i;
                                    break;
                                } else if (moduleInfo.dependency.checkFlag == 2) {
                                    obj = 1;
                                    a((List) list4, this.dependency, moduleInfo.dependency);
                                    checkCanOnSpider = 2;
                                    break;
                                }
                            }
                        }
                    }
                    obj = null;
                    checkCanOnSpider = i;
                    if (obj == null && checkLibOnSpider(list, atom) != 1) {
                        if (atomNode == null) {
                            checkCanOnSpider = -20;
                        } else {
                            checkCanOnSpider = -21;
                        }
                    }
                }
                if (checkCanOnSpider == 0) {
                    checkCanOnSpider = 1;
                }
                if ((checkCanOnSpider == 1 || checkCanOnSpider == 2) && a(list, list2)) {
                    checkCanOnSpider = -22;
                }
                this.dependency.checkFlag = checkCanOnSpider;
                for (Circular circular : list4) {
                    if (circular.nodeList.contains(this.dependency)) {
                        circular.update(this.dependency);
                        break;
                    }
                }
                list3.remove(this.dependency);
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x003f  */
    /* JADX WARNING: Missing block: B:32:?, code skipped:
            return false;
     */
    private boolean a(java.util.List<com.mqunar.module.ModuleInfo> r7, java.util.List<com.mqunar.core.dependency.AtomNode> r8) {
        /*
        r6 = this;
        r1 = 1;
        r0 = r6.fileName;
        r2 = r0.intern();
        monitor-enter(r2);
        r3 = r7.iterator();	 Catch:{ all -> 0x0059 }
    L_0x000c:
        r0 = r3.hasNext();	 Catch:{ all -> 0x0059 }
        if (r0 == 0) goto L_0x002d;
    L_0x0012:
        r0 = r3.next();	 Catch:{ all -> 0x0059 }
        r0 = (com.mqunar.module.ModuleInfo) r0;	 Catch:{ all -> 0x0059 }
        r4 = r0.dependency;	 Catch:{ all -> 0x0059 }
        r4 = r4.packageName;	 Catch:{ all -> 0x0059 }
        r5 = r6.dependency;	 Catch:{ all -> 0x0059 }
        r5 = r5.packageName;	 Catch:{ all -> 0x0059 }
        r4 = r4.equals(r5);	 Catch:{ all -> 0x0059 }
        if (r4 == 0) goto L_0x000c;
    L_0x0026:
        r0 = r0.isLoad;	 Catch:{ all -> 0x0059 }
        if (r0 == 0) goto L_0x002d;
    L_0x002a:
        monitor-exit(r2);	 Catch:{ all -> 0x0059 }
        r0 = r1;
    L_0x002c:
        return r0;
    L_0x002d:
        r0 = r6.dependency;	 Catch:{ all -> 0x0059 }
        r0 = r0.getAtomNode(r8);	 Catch:{ all -> 0x0059 }
        r0 = r0.versionList;	 Catch:{ all -> 0x0059 }
        r3 = r0.iterator();	 Catch:{ all -> 0x0059 }
    L_0x0039:
        r0 = r3.hasNext();	 Catch:{ all -> 0x0059 }
        if (r0 == 0) goto L_0x0056;
    L_0x003f:
        r0 = r3.next();	 Catch:{ all -> 0x0059 }
        r0 = (com.mqunar.module.ModuleInfo) r0;	 Catch:{ all -> 0x0059 }
        r4 = r0.isLoad;	 Catch:{ all -> 0x0059 }
        if (r4 == 0) goto L_0x0039;
    L_0x0049:
        r0 = r0.dependency;	 Catch:{ all -> 0x0059 }
        r0 = r0.versionCode;	 Catch:{ all -> 0x0059 }
        r3 = r6.dependency;	 Catch:{ all -> 0x0059 }
        r3 = r3.versionCode;	 Catch:{ all -> 0x0059 }
        if (r0 >= r3) goto L_0x0056;
    L_0x0053:
        monitor-exit(r2);	 Catch:{ all -> 0x0059 }
        r0 = r1;
        goto L_0x002c;
    L_0x0056:
        monitor-exit(r2);	 Catch:{ all -> 0x0059 }
        r0 = 0;
        goto L_0x002c;
    L_0x0059:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x0059 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.module.ModuleInfo.a(java.util.List, java.util.List):boolean");
    }

    private void a(List<Circular> list, Dependency dependency, Dependency dependency2) {
        Circular circular;
        ArrayList<Circular> arrayList = new ArrayList(2);
        for (Circular circular2 : list) {
            if (circular2.nodeList.contains(dependency) || circular2.nodeList.contains(dependency2)) {
                arrayList.add(circular2);
            }
        }
        if (arrayList.size() == 1) {
            circular2 = (Circular) arrayList.get(0);
        } else {
            Circular circular3 = new Circular();
            if (arrayList.isEmpty()) {
                list.add(circular3);
                circular2 = circular3;
            } else {
                for (Circular circular22 : arrayList) {
                    circular3.mergeCircular(circular22);
                    list.remove(circular22);
                }
                list.add(circular3);
                circular22 = circular3;
            }
        }
        circular22.addNode(dependency);
        circular22.addNode(dependency2);
    }

    public String toString() {
        return "ModuleInfo{fileName='" + this.fileName + '\'' + ", name='" + this.dependency.packageName + '\'' + ", applicationClassName='" + this.dependency.applicationClassName + '\'' + '}';
    }

    public void freeZipFile() {
        if (this.zipFile != null) {
            try {
                this.zipFile.close();
            } catch (Throwable th) {
            }
            this.zipFile = null;
        }
    }

    /* Access modifiers changed, original: protected */
    public void finalize() {
        freeZipFile();
        super.finalize();
    }
}
