package org.apache.commons.io;

import com.mqunar.contacts.basis.model.Contact;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Stack;

public class FilenameUtils {
    public static final char EXTENSION_SEPARATOR = '.';
    public static final String EXTENSION_SEPARATOR_STR = Character.toString(EXTENSION_SEPARATOR);
    private static final char OTHER_SEPARATOR;
    private static final char SYSTEM_SEPARATOR = File.separatorChar;
    private static final char UNIX_SEPARATOR = '/';
    private static final char WINDOWS_SEPARATOR = '\\';

    static {
        if (isSystemWindows()) {
            OTHER_SEPARATOR = '/';
        } else {
            OTHER_SEPARATOR = '\\';
        }
    }

    static boolean isSystemWindows() {
        return SYSTEM_SEPARATOR == '\\';
    }

    private static boolean isSeparator(char c) {
        return c == '/' || c == '\\';
    }

    public static String normalize(String str) {
        return doNormalize(str, SYSTEM_SEPARATOR, true);
    }

    public static String normalize(String str, boolean z) {
        return doNormalize(str, z ? '/' : '\\', true);
    }

    public static String normalizeNoEndSeparator(String str) {
        return doNormalize(str, SYSTEM_SEPARATOR, false);
    }

    public static String normalizeNoEndSeparator(String str, boolean z) {
        return doNormalize(str, z ? '/' : '\\', false);
    }

    private static String doNormalize(String str, char c, boolean z) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return str;
        }
        int prefixLength = getPrefixLength(str);
        if (prefixLength < 0) {
            return null;
        }
        int i;
        char[] cArr = new char[(length + 2)];
        str.getChars(0, str.length(), cArr, 0);
        char c2 = c == SYSTEM_SEPARATOR ? OTHER_SEPARATOR : SYSTEM_SEPARATOR;
        for (i = 0; i < cArr.length; i++) {
            if (cArr[i] == c2) {
                cArr[i] = c;
            }
        }
        Object obj = 1;
        if (cArr[length - 1] != c) {
            i = length + 1;
            cArr[length] = c;
            obj = null;
        } else {
            i = length;
        }
        length = i;
        i = prefixLength + 1;
        while (i < length) {
            if (cArr[i] == c && cArr[i - 1] == c) {
                System.arraycopy(cArr, i, cArr, i - 1, length - i);
                length--;
                i--;
            }
            i++;
        }
        i = prefixLength + 1;
        while (i < length) {
            if (cArr[i] == c && cArr[i - 1] == EXTENSION_SEPARATOR && (i == prefixLength + 1 || cArr[i - 2] == c)) {
                if (i == length - 1) {
                    obj = 1;
                }
                System.arraycopy(cArr, i + 1, cArr, i - 1, length - i);
                length -= 2;
                i--;
            }
            obj = obj;
            i++;
        }
        i = prefixLength + 2;
        while (i < length) {
            if (cArr[i] == c && cArr[i - 1] == EXTENSION_SEPARATOR && cArr[i - 2] == EXTENSION_SEPARATOR && (i == prefixLength + 2 || cArr[i - 3] == c)) {
                if (i == prefixLength + 2) {
                    return null;
                }
                if (i == length - 1) {
                    obj = 1;
                }
                for (int i2 = i - 4; i2 >= prefixLength; i2--) {
                    if (cArr[i2] == c) {
                        System.arraycopy(cArr, i + 1, cArr, i2 + 1, length - i);
                        length -= i - i2;
                        i = i2 + 1;
                        break;
                    }
                }
                System.arraycopy(cArr, i + 1, cArr, prefixLength, length - i);
                length -= (i + 1) - prefixLength;
                i = prefixLength + 1;
            }
            obj = obj;
            i++;
        }
        if (length <= 0) {
            return "";
        }
        if (length <= prefixLength) {
            return new String(cArr, 0, length);
        }
        if (obj == null || !z) {
            return new String(cArr, 0, length - 1);
        }
        return new String(cArr, 0, length);
    }

    public static String concat(String str, String str2) {
        int prefixLength = getPrefixLength(str2);
        if (prefixLength < 0) {
            return null;
        }
        if (prefixLength > 0) {
            return normalize(str2);
        }
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return normalize(str2);
        }
        if (isSeparator(str.charAt(length - 1))) {
            return normalize(str + str2);
        }
        return normalize(str + '/' + str2);
    }

    public static boolean directoryContains(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Directory must not be null");
        } else if (str2 == null || IOCase.SYSTEM.checkEquals(str, str2)) {
            return false;
        } else {
            return IOCase.SYSTEM.checkStartsWith(str2, str);
        }
    }

    public static String separatorsToUnix(String str) {
        return (str == null || str.indexOf(92) == -1) ? str : str.replace('\\', '/');
    }

    public static String separatorsToWindows(String str) {
        return (str == null || str.indexOf(47) == -1) ? str : str.replace('/', '\\');
    }

    public static String separatorsToSystem(String str) {
        if (str == null) {
            return null;
        }
        if (isSystemWindows()) {
            return separatorsToWindows(str);
        }
        return separatorsToUnix(str);
    }

    public static int getPrefixLength(String str) {
        if (str == null) {
            return -1;
        }
        int length = str.length();
        if (length == 0) {
            return 0;
        }
        char charAt = str.charAt(0);
        if (charAt == ':') {
            return -1;
        }
        int indexOf;
        int indexOf2;
        if (length == 1) {
            if (charAt == '~') {
                return 2;
            }
            if (isSeparator(charAt)) {
                return 1;
            }
            return 0;
        } else if (charAt == '~') {
            indexOf = str.indexOf(47, 1);
            indexOf2 = str.indexOf(92, 1);
            if (indexOf == -1 && indexOf2 == -1) {
                return length + 1;
            }
            if (indexOf == -1) {
                indexOf = indexOf2;
            }
            if (indexOf2 == -1) {
                indexOf2 = indexOf;
            }
            return Math.min(indexOf, indexOf2) + 1;
        } else {
            char charAt2 = str.charAt(1);
            if (charAt2 == ':') {
                char toUpperCase = Character.toUpperCase(charAt);
                if (toUpperCase < 'A' || toUpperCase > 'Z') {
                    return -1;
                }
                if (length == 2 || !isSeparator(str.charAt(2))) {
                    return 2;
                }
                return 3;
            } else if (isSeparator(charAt) && isSeparator(charAt2)) {
                indexOf = str.indexOf(47, 2);
                indexOf2 = str.indexOf(92, 2);
                if ((indexOf == -1 && indexOf2 == -1) || indexOf == 2 || indexOf2 == 2) {
                    return -1;
                }
                if (indexOf == -1) {
                    indexOf = indexOf2;
                }
                if (indexOf2 == -1) {
                    indexOf2 = indexOf;
                }
                return Math.min(indexOf, indexOf2) + 1;
            } else if (isSeparator(charAt)) {
                return 1;
            } else {
                return 0;
            }
        }
    }

    public static int indexOfLastSeparator(String str) {
        if (str == null) {
            return -1;
        }
        return Math.max(str.lastIndexOf(47), str.lastIndexOf(92));
    }

    public static int indexOfExtension(String str) {
        if (str == null) {
            return -1;
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (indexOfLastSeparator(str) <= lastIndexOf) {
            return lastIndexOf;
        }
        return -1;
    }

    public static String getPrefix(String str) {
        if (str == null) {
            return null;
        }
        int prefixLength = getPrefixLength(str);
        if (prefixLength < 0) {
            return null;
        }
        if (prefixLength > str.length()) {
            return str + '/';
        }
        return str.substring(0, prefixLength);
    }

    public static String getPath(String str) {
        return doGetPath(str, 1);
    }

    public static String getPathNoEndSeparator(String str) {
        return doGetPath(str, 0);
    }

    private static String doGetPath(String str, int i) {
        if (str == null) {
            return null;
        }
        int prefixLength = getPrefixLength(str);
        if (prefixLength < 0) {
            return null;
        }
        int indexOfLastSeparator = indexOfLastSeparator(str);
        int i2 = indexOfLastSeparator + i;
        if (prefixLength >= str.length() || indexOfLastSeparator < 0 || prefixLength >= i2) {
            return "";
        }
        return str.substring(prefixLength, i2);
    }

    public static String getFullPath(String str) {
        return doGetFullPath(str, true);
    }

    public static String getFullPathNoEndSeparator(String str) {
        return doGetFullPath(str, false);
    }

    private static String doGetFullPath(String str, boolean z) {
        if (str == null) {
            return null;
        }
        int prefixLength = getPrefixLength(str);
        if (prefixLength < 0) {
            return null;
        }
        if (prefixLength < str.length()) {
            int indexOfLastSeparator = indexOfLastSeparator(str);
            if (indexOfLastSeparator < 0) {
                return str.substring(0, prefixLength);
            }
            int i;
            if (z) {
                i = 1;
            } else {
                i = 0;
            }
            i += indexOfLastSeparator;
            if (i == 0) {
                i++;
            }
            return str.substring(0, i);
        } else if (z) {
            return getPrefix(str);
        } else {
            return str;
        }
    }

    public static String getName(String str) {
        if (str == null) {
            return null;
        }
        return str.substring(indexOfLastSeparator(str) + 1);
    }

    public static String getBaseName(String str) {
        return removeExtension(getName(str));
    }

    public static String getExtension(String str) {
        if (str == null) {
            return null;
        }
        int indexOfExtension = indexOfExtension(str);
        if (indexOfExtension == -1) {
            return "";
        }
        return str.substring(indexOfExtension + 1);
    }

    public static String removeExtension(String str) {
        if (str == null) {
            return null;
        }
        int indexOfExtension = indexOfExtension(str);
        return indexOfExtension != -1 ? str.substring(0, indexOfExtension) : str;
    }

    public static boolean equals(String str, String str2) {
        return equals(str, str2, false, IOCase.SENSITIVE);
    }

    public static boolean equalsOnSystem(String str, String str2) {
        return equals(str, str2, false, IOCase.SYSTEM);
    }

    public static boolean equalsNormalized(String str, String str2) {
        return equals(str, str2, true, IOCase.SENSITIVE);
    }

    public static boolean equalsNormalizedOnSystem(String str, String str2) {
        return equals(str, str2, true, IOCase.SYSTEM);
    }

    public static boolean equals(String str, String str2, boolean z, IOCase iOCase) {
        if (str != null && str2 != null) {
            if (z) {
                str = normalize(str);
                str2 = normalize(str2);
                if (str == null || str2 == null) {
                    throw new NullPointerException("Error normalizing one or both of the file names");
                }
            }
            if (iOCase == null) {
                iOCase = IOCase.SENSITIVE;
            }
            return iOCase.checkEquals(str, str2);
        } else if (str == null && str2 == null) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean isExtension(String str, String str2) {
        if (str == null) {
            return false;
        }
        if (str2 != null && str2.length() != 0) {
            return getExtension(str).equals(str2);
        }
        if (indexOfExtension(str) == -1) {
            return true;
        }
        return false;
    }

    public static boolean isExtension(String str, String[] strArr) {
        boolean z = true;
        if (str == null) {
            return false;
        }
        if (strArr == null || strArr.length == 0) {
            if (indexOfExtension(str) != -1) {
                z = false;
            }
            return z;
        }
        String extension = getExtension(str);
        for (Object equals : strArr) {
            if (extension.equals(equals)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isExtension(String str, Collection<String> collection) {
        if (str == null) {
            return false;
        }
        if (collection == null || collection.isEmpty()) {
            return indexOfExtension(str) == -1;
        }
        String extension = getExtension(str);
        for (String equals : collection) {
            if (extension.equals(equals)) {
                return true;
            }
        }
        return false;
    }

    public static boolean wildcardMatch(String str, String str2) {
        return wildcardMatch(str, str2, IOCase.SENSITIVE);
    }

    public static boolean wildcardMatchOnSystem(String str, String str2) {
        return wildcardMatch(str, str2, IOCase.SYSTEM);
    }

    public static boolean wildcardMatch(String str, String str2, IOCase iOCase) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        if (iOCase == null) {
            iOCase = IOCase.SENSITIVE;
        }
        String[] splitOnTokens = splitOnTokens(str2);
        Stack stack = new Stack();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        do {
            if (stack.size() > 0) {
                int[] iArr = (int[]) stack.pop();
                i2 = iArr[0];
                i3 = true;
                int i4 = iArr[1];
                i = i2;
                i2 = i4;
            }
            while (i < splitOnTokens.length) {
                boolean i32;
                if (splitOnTokens[i].equals("?")) {
                    i2++;
                    if (i2 > str.length()) {
                        break;
                    }
                    i32 = 0;
                } else if (!splitOnTokens[i].equals(Contact.OTHER)) {
                    if (i32 == 0) {
                        if (!iOCase.checkRegionMatches(str, i2, splitOnTokens[i])) {
                            break;
                        }
                    }
                    i2 = iOCase.checkIndexOf(str, i2, splitOnTokens[i]);
                    if (i2 == -1) {
                        break;
                    }
                    if (iOCase.checkIndexOf(str, i2 + 1, splitOnTokens[i]) >= 0) {
                        stack.push(new int[]{i, iOCase.checkIndexOf(str, i2 + 1, splitOnTokens[i])});
                    }
                    i2 += splitOnTokens[i].length();
                    i32 = 0;
                } else if (i == splitOnTokens.length - 1) {
                    i2 = str.length();
                    i32 = true;
                } else {
                    i32 = true;
                }
                i++;
            }
            if (i == splitOnTokens.length && i2 == str.length()) {
                return true;
            }
        } while (stack.size() > 0);
        return false;
    }

    static String[] splitOnTokens(String str) {
        if (str.indexOf(63) == -1 && str.indexOf(42) == -1) {
            return new String[]{str};
        }
        char[] toCharArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < toCharArray.length) {
            if (toCharArray[i] == '?' || toCharArray[i] == '*') {
                if (stringBuilder.length() != 0) {
                    arrayList.add(stringBuilder.toString());
                    stringBuilder.setLength(0);
                }
                if (toCharArray[i] == '?') {
                    arrayList.add("?");
                } else if (arrayList.isEmpty() || (i > 0 && !((String) arrayList.get(arrayList.size() - 1)).equals(Contact.OTHER))) {
                    arrayList.add(Contact.OTHER);
                }
            } else {
                stringBuilder.append(toCharArray[i]);
            }
            i++;
        }
        if (stringBuilder.length() != 0) {
            arrayList.add(stringBuilder.toString());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
