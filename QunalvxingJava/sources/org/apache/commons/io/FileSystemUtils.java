package org.apache.commons.io;

import com.mqunar.libtask.ProgressType;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;

public class FileSystemUtils {
    private static final String DF;
    private static final int INIT_PROBLEM = -1;
    private static final FileSystemUtils INSTANCE = new FileSystemUtils();
    private static final int OS;
    private static final int OTHER = 0;
    private static final int POSIX_UNIX = 3;
    private static final int UNIX = 2;
    private static final int WINDOWS = 1;

    static {
        int i = 3;
        String str = "df";
        try {
            String property = System.getProperty("os.name");
            if (property == null) {
                throw new IOException("os.name not found");
            }
            property = property.toLowerCase(Locale.ENGLISH);
            if (property.indexOf("windows") != -1) {
                i = 1;
            } else if (property.indexOf("linux") != -1 || property.indexOf("mpe/ix") != -1 || property.indexOf("freebsd") != -1 || property.indexOf("irix") != -1 || property.indexOf("digital unix") != -1 || property.indexOf("unix") != -1 || property.indexOf("mac os x") != -1) {
                i = 2;
            } else if (property.indexOf("sun os") != -1 || property.indexOf("sunos") != -1 || property.indexOf("solaris") != -1) {
                str = "/usr/xpg4/bin/df";
            } else if (property.indexOf("hp-ux") == -1 && property.indexOf("aix") == -1) {
                i = 0;
            }
            OS = i;
            DF = str;
        } catch (Exception e) {
            i = -1;
        }
    }

    @Deprecated
    public static long freeSpace(String str) {
        return INSTANCE.freeSpaceOS(str, OS, false, -1);
    }

    public static long freeSpaceKb(String str) {
        return freeSpaceKb(str, -1);
    }

    public static long freeSpaceKb(String str, long j) {
        return INSTANCE.freeSpaceOS(str, OS, true, j);
    }

    public static long freeSpaceKb() {
        return freeSpaceKb(-1);
    }

    public static long freeSpaceKb(long j) {
        return freeSpaceKb(new File(".").getAbsolutePath(), j);
    }

    /* Access modifiers changed, original: 0000 */
    public long freeSpaceOS(String str, int i, boolean z, long j) {
        if (str == null) {
            throw new IllegalArgumentException("Path must not be empty");
        }
        switch (i) {
            case 0:
                throw new IllegalStateException("Unsupported operating system");
            case 1:
                return z ? freeSpaceWindows(str, j) / 1024 : freeSpaceWindows(str, j);
            case 2:
                return freeSpaceUnix(str, z, false, j);
            case 3:
                return freeSpaceUnix(str, z, true, j);
            default:
                throw new IllegalStateException("Exception caught when determining operating system");
        }
    }

    /* Access modifiers changed, original: 0000 */
    public long freeSpaceWindows(String str, long j) {
        String str2;
        String normalize = FilenameUtils.normalize(str, false);
        if (normalize.length() <= 0 || normalize.charAt(0) == '\"') {
            str2 = normalize;
        } else {
            str2 = "\"" + normalize + "\"";
        }
        List performCommand = performCommand(new String[]{"cmd.exe", "/C", "dir /a /-c " + str2}, ProgressType.PRO_END, j);
        for (int size = performCommand.size() - 1; size >= 0; size--) {
            normalize = (String) performCommand.get(size);
            if (normalize.length() > 0) {
                return parseDir(normalize, str2);
            }
        }
        throw new IOException("Command line 'dir /-c' did not return any info for path '" + str2 + "'");
    }

    /* Access modifiers changed, original: 0000 */
    public long parseDir(String str, String str2) {
        int i;
        int i2;
        int i3 = 0;
        int length = str.length() - 1;
        while (length >= 0) {
            if (Character.isDigit(str.charAt(length))) {
                i = length + 1;
                i2 = length;
                break;
            }
            length--;
        }
        i2 = length;
        i = 0;
        while (i2 >= 0) {
            char charAt = str.charAt(i2);
            if (!Character.isDigit(charAt) && charAt != ',' && charAt != FilenameUtils.EXTENSION_SEPARATOR) {
                length = i2 + 1;
                break;
            }
            i2--;
        }
        length = 0;
        if (i2 < 0) {
            throw new IOException("Command line 'dir /-c' did not return valid info for path '" + str2 + "'");
        }
        StringBuilder stringBuilder = new StringBuilder(str.substring(length, i));
        while (i3 < stringBuilder.length()) {
            if (stringBuilder.charAt(i3) == ',' || stringBuilder.charAt(i3) == FilenameUtils.EXTENSION_SEPARATOR) {
                length = i3 - 1;
                stringBuilder.deleteCharAt(i3);
                i3 = length;
            }
            i3++;
        }
        return parseBytes(stringBuilder.toString(), str2);
    }

    /* Access modifiers changed, original: 0000 */
    public long freeSpaceUnix(String str, boolean z, boolean z2, long j) {
        if (str.length() == 0) {
            throw new IllegalArgumentException("Path must not be empty");
        }
        String[] strArr;
        String str2 = "-";
        if (z) {
            str2 = str2 + "k";
        }
        if (z2) {
            str2 = str2 + "P";
        }
        if (str2.length() > 1) {
            strArr = new String[]{DF, str2, str};
        } else {
            strArr = new String[]{DF, str};
        }
        List performCommand = performCommand(strArr, 3, j);
        if (performCommand.size() < 2) {
            throw new IOException("Command line '" + DF + "' did not return info as expected " + "for path '" + str + "'- response was " + performCommand);
        }
        StringTokenizer stringTokenizer;
        StringTokenizer stringTokenizer2 = new StringTokenizer((String) performCommand.get(1), " ");
        if (stringTokenizer2.countTokens() >= 4) {
            stringTokenizer2.nextToken();
            stringTokenizer = stringTokenizer2;
        } else if (stringTokenizer2.countTokens() != 1 || performCommand.size() < 3) {
            throw new IOException("Command line '" + DF + "' did not return data as expected " + "for path '" + str + "'- check path is valid");
        } else {
            stringTokenizer = new StringTokenizer((String) performCommand.get(2), " ");
        }
        stringTokenizer.nextToken();
        stringTokenizer.nextToken();
        return parseBytes(stringTokenizer.nextToken(), str);
    }

    /* Access modifiers changed, original: 0000 */
    public long parseBytes(String str, String str2) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong >= 0) {
                return parseLong;
            }
            throw new IOException("Command line '" + DF + "' did not find free space in response " + "for path '" + str2 + "'- check path is valid");
        } catch (NumberFormatException e) {
            throw new IOExceptionWithCause("Command line '" + DF + "' did not return numeric data as expected " + "for path '" + str2 + "'- check path is valid", e);
        }
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00ba  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00ba  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00ba  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00ba  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00ba  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00ba  */
    public java.util.List<java.lang.String> performCommand(java.lang.String[] r10, int r11, long r12) {
        /*
        r9 = this;
        r2 = 0;
        r7 = new java.util.ArrayList;
        r0 = 20;
        r7.<init>(r0);
        r8 = org.apache.commons.io.ThreadMonitor.start(r12);	 Catch:{ InterruptedException -> 0x010e, all -> 0x00f5 }
        r6 = r9.openProcess(r10);	 Catch:{ InterruptedException -> 0x010e, all -> 0x00f5 }
        r5 = r6.getInputStream();	 Catch:{ InterruptedException -> 0x0115, all -> 0x00fc }
        r4 = r6.getOutputStream();	 Catch:{ InterruptedException -> 0x011c, all -> 0x0102 }
        r3 = r6.getErrorStream();	 Catch:{ InterruptedException -> 0x0123, all -> 0x0107 }
        r1 = new java.io.BufferedReader;	 Catch:{ InterruptedException -> 0x012a, all -> 0x010b }
        r0 = new java.io.InputStreamReader;	 Catch:{ InterruptedException -> 0x012a, all -> 0x010b }
        r0.<init>(r5);	 Catch:{ InterruptedException -> 0x012a, all -> 0x010b }
        r1.<init>(r0);	 Catch:{ InterruptedException -> 0x012a, all -> 0x010b }
        r0 = r1.readLine();	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
    L_0x002a:
        if (r0 == 0) goto L_0x0044;
    L_0x002c:
        r2 = r7.size();	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        if (r2 >= r11) goto L_0x0044;
    L_0x0032:
        r2 = java.util.Locale.ENGLISH;	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r0 = r0.toLowerCase(r2);	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r0 = r0.trim();	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r7.add(r0);	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r0 = r1.readLine();	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        goto L_0x002a;
    L_0x0044:
        r6.waitFor();	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        org.apache.commons.io.ThreadMonitor.stop(r8);	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r0 = r6.exitValue();	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        if (r0 == 0) goto L_0x00be;
    L_0x0050:
        r0 = new java.io.IOException;	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r2 = new java.lang.StringBuilder;	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r2.<init>();	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r7 = "Command line returned OS error code '";
        r2 = r2.append(r7);	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r7 = r6.exitValue();	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r2 = r2.append(r7);	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r7 = "' for command ";
        r2 = r2.append(r7);	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r7 = java.util.Arrays.asList(r10);	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r2 = r2.append(r7);	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r2 = r2.toString();	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r0.<init>(r2);	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        throw r0;	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
    L_0x007b:
        r0 = move-exception;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r6;
    L_0x0080:
        r6 = new org.apache.commons.io.IOExceptionWithCause;	 Catch:{ all -> 0x00a7 }
        r7 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00a7 }
        r7.<init>();	 Catch:{ all -> 0x00a7 }
        r8 = "Command line threw an InterruptedException for command ";
        r7 = r7.append(r8);	 Catch:{ all -> 0x00a7 }
        r8 = java.util.Arrays.asList(r10);	 Catch:{ all -> 0x00a7 }
        r7 = r7.append(r8);	 Catch:{ all -> 0x00a7 }
        r8 = " timeout=";
        r7 = r7.append(r8);	 Catch:{ all -> 0x00a7 }
        r7 = r7.append(r12);	 Catch:{ all -> 0x00a7 }
        r7 = r7.toString();	 Catch:{ all -> 0x00a7 }
        r6.<init>(r7, r0);	 Catch:{ all -> 0x00a7 }
        throw r6;	 Catch:{ all -> 0x00a7 }
    L_0x00a7:
        r0 = move-exception;
        r6 = r5;
        r5 = r4;
        r4 = r3;
        r3 = r2;
    L_0x00ac:
        org.apache.commons.io.IOUtils.closeQuietly(r5);
        org.apache.commons.io.IOUtils.closeQuietly(r4);
        org.apache.commons.io.IOUtils.closeQuietly(r3);
        org.apache.commons.io.IOUtils.closeQuietly(r1);
        if (r6 == 0) goto L_0x00bd;
    L_0x00ba:
        r6.destroy();
    L_0x00bd:
        throw r0;
    L_0x00be:
        r0 = r7.isEmpty();	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        if (r0 == 0) goto L_0x00e3;
    L_0x00c4:
        r0 = new java.io.IOException;	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r2 = new java.lang.StringBuilder;	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r2.<init>();	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r7 = "Command line did not return any info for command ";
        r2 = r2.append(r7);	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r7 = java.util.Arrays.asList(r10);	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r2 = r2.append(r7);	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r2 = r2.toString();	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        r0.<init>(r2);	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
        throw r0;	 Catch:{ InterruptedException -> 0x007b, all -> 0x00e1 }
    L_0x00e1:
        r0 = move-exception;
        goto L_0x00ac;
    L_0x00e3:
        org.apache.commons.io.IOUtils.closeQuietly(r5);
        org.apache.commons.io.IOUtils.closeQuietly(r4);
        org.apache.commons.io.IOUtils.closeQuietly(r3);
        org.apache.commons.io.IOUtils.closeQuietly(r1);
        if (r6 == 0) goto L_0x00f4;
    L_0x00f1:
        r6.destroy();
    L_0x00f4:
        return r7;
    L_0x00f5:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
        r4 = r2;
        r5 = r2;
        r6 = r2;
        goto L_0x00ac;
    L_0x00fc:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
        r4 = r2;
        r5 = r2;
        goto L_0x00ac;
    L_0x0102:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
        r4 = r2;
        goto L_0x00ac;
    L_0x0107:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
        goto L_0x00ac;
    L_0x010b:
        r0 = move-exception;
        r1 = r2;
        goto L_0x00ac;
    L_0x010e:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
        r4 = r2;
        r5 = r2;
        goto L_0x0080;
    L_0x0115:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
        r4 = r2;
        r5 = r6;
        goto L_0x0080;
    L_0x011c:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
        r4 = r5;
        r5 = r6;
        goto L_0x0080;
    L_0x0123:
        r0 = move-exception;
        r1 = r2;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        goto L_0x0080;
    L_0x012a:
        r0 = move-exception;
        r1 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        goto L_0x0080;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.FileSystemUtils.performCommand(java.lang.String[], int, long):java.util.List");
    }

    /* Access modifiers changed, original: 0000 */
    public Process openProcess(String[] strArr) {
        return Runtime.getRuntime().exec(strArr);
    }
}
