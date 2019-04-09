package org.apache.commons.codecc.language;

import org.apache.commons.codecc.EncoderException;
import org.apache.commons.codecc.StringEncoder;

public class RefinedSoundex implements StringEncoder {
    public static final RefinedSoundex US_ENGLISH = new RefinedSoundex();
    private static final char[] US_ENGLISH_MAPPING = US_ENGLISH_MAPPING_STRING.toCharArray();
    public static final String US_ENGLISH_MAPPING_STRING = "01360240043788015936020505";
    private final char[] soundexMapping;

    public RefinedSoundex() {
        this.soundexMapping = US_ENGLISH_MAPPING;
    }

    public RefinedSoundex(char[] cArr) {
        this.soundexMapping = new char[cArr.length];
        System.arraycopy(cArr, 0, this.soundexMapping, 0, cArr.length);
    }

    public RefinedSoundex(String str) {
        this.soundexMapping = str.toCharArray();
    }

    public int difference(String str, String str2) {
        return SoundexUtils.difference(this, str, str2);
    }

    public Object encode(Object obj) {
        if (obj instanceof String) {
            return soundex((String) obj);
        }
        throw new EncoderException("Parameter supplied to RefinedSoundex encode is not of type java.lang.String");
    }

    public String encode(String str) {
        return soundex(str);
    }

    /* Access modifiers changed, original: 0000 */
    public char getMappingCode(char c) {
        if (Character.isLetter(c)) {
            return this.soundexMapping[Character.toUpperCase(c) - 65];
        }
        return 0;
    }

    public String soundex(String str) {
        int i = 0;
        if (str == null) {
            return null;
        }
        String clean = SoundexUtils.clean(str);
        if (clean.length() == 0) {
            return clean;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(clean.charAt(0));
        char c = '*';
        while (i < clean.length()) {
            char mappingCode = getMappingCode(clean.charAt(i));
            if (mappingCode != c) {
                if (mappingCode != 0) {
                    stringBuffer.append(mappingCode);
                }
                c = mappingCode;
            }
            i++;
        }
        return stringBuffer.toString();
    }
}
