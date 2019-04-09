package com.baidu.tts.loopj;

import android.text.TextUtils;
import com.baidu.tts.loopj.RequestParams.FileWrapper;
import com.baidu.tts.loopj.RequestParams.StreamWrapper;
import com.iflytek.aiui.AIUIConstant;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPOutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;
import org.json.JSONArray;
import org.json.JSONObject;

public class JsonStreamerEntity implements HttpEntity {
    private static final int BUFFER_SIZE = 4096;
    private static final UnsupportedOperationException ERR_UNSUPPORTED = new UnsupportedOperationException("Unsupported operation in this implementation.");
    private static final Header HEADER_GZIP_ENCODING = new BasicHeader("Content-Encoding", AsyncHttpClient.ENCODING_GZIP);
    private static final Header HEADER_JSON_CONTENT = new BasicHeader("Content-Type", RequestParams.APPLICATION_JSON);
    private static final byte[] JSON_FALSE = "false".getBytes();
    private static final byte[] JSON_NULL = "null".getBytes();
    private static final byte[] JSON_TRUE = "true".getBytes();
    private static final String LOG_TAG = "JsonStreamerEntity";
    private static final byte[] STREAM_CONTENTS = escape("contents");
    private static final byte[] STREAM_NAME = escape(AIUIConstant.KEY_NAME);
    private static final byte[] STREAM_TYPE = escape("type");
    private final byte[] buffer = new byte[4096];
    private final Header contentEncoding;
    private final byte[] elapsedField;
    private final Map<String, Object> jsonParams = new HashMap();
    private final ResponseHandlerInterface progressHandler;

    public JsonStreamerEntity(ResponseHandlerInterface responseHandlerInterface, boolean z, String str) {
        Header header;
        byte[] bArr = null;
        this.progressHandler = responseHandlerInterface;
        if (z) {
            header = HEADER_GZIP_ENCODING;
        } else {
            header = null;
        }
        this.contentEncoding = header;
        if (!TextUtils.isEmpty(str)) {
            bArr = escape(str);
        }
        this.elapsedField = bArr;
    }

    public void addPart(String str, Object obj) {
        this.jsonParams.put(str, obj);
    }

    public boolean isRepeatable() {
        return false;
    }

    public boolean isChunked() {
        return false;
    }

    public boolean isStreaming() {
        return false;
    }

    public long getContentLength() {
        return -1;
    }

    public Header getContentEncoding() {
        return this.contentEncoding;
    }

    public Header getContentType() {
        return HEADER_JSON_CONTENT;
    }

    public void consumeContent() {
    }

    public InputStream getContent() {
        throw ERR_UNSUPPORTED;
    }

    public void writeTo(OutputStream outputStream) {
        if (outputStream == null) {
            throw new IllegalStateException("Output stream cannot be null.");
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (this.contentEncoding != null) {
            outputStream = new GZIPOutputStream(outputStream, 4096);
        }
        outputStream.write(123);
        Set<String> keySet = this.jsonParams.keySet();
        int size = keySet.size();
        if (size > 0) {
            int i = 0;
            for (String str : keySet) {
                int i2 = i + 1;
                try {
                    Object obj = this.jsonParams.get(str);
                    outputStream.write(escape(str));
                    outputStream.write(58);
                    if (obj == null) {
                        outputStream.write(JSON_NULL);
                    } else {
                        boolean z = obj instanceof FileWrapper;
                        if (z || (obj instanceof StreamWrapper)) {
                            outputStream.write(123);
                            if (z) {
                                writeToFromFile(outputStream, (FileWrapper) obj);
                            } else {
                                writeToFromStream(outputStream, (StreamWrapper) obj);
                            }
                            outputStream.write(125);
                        } else if (obj instanceof JsonValueInterface) {
                            outputStream.write(((JsonValueInterface) obj).getEscapedJsonValue());
                        } else if (obj instanceof JSONObject) {
                            outputStream.write(obj.toString().getBytes());
                        } else if (obj instanceof JSONArray) {
                            outputStream.write(obj.toString().getBytes());
                        } else if (obj instanceof Boolean) {
                            outputStream.write(((Boolean) obj).booleanValue() ? JSON_TRUE : JSON_FALSE);
                        } else if (obj instanceof Long) {
                            outputStream.write((((Number) obj).longValue() + "").getBytes());
                        } else if (obj instanceof Double) {
                            outputStream.write((((Number) obj).doubleValue() + "").getBytes());
                        } else if (obj instanceof Float) {
                            outputStream.write((((Number) obj).floatValue() + "").getBytes());
                        } else if (obj instanceof Integer) {
                            outputStream.write((((Number) obj).intValue() + "").getBytes());
                        } else {
                            outputStream.write(escape(obj.toString()));
                        }
                    }
                    if (this.elapsedField != null || i2 < size) {
                        outputStream.write(44);
                    }
                    i = i2;
                } catch (Throwable th) {
                    if (this.elapsedField != null || i2 < size) {
                        outputStream.write(44);
                    }
                }
            }
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            if (this.elapsedField != null) {
                outputStream.write(this.elapsedField);
                outputStream.write(58);
                outputStream.write((currentTimeMillis2 + "").getBytes());
            }
            AsyncHttpClient.log.i(LOG_TAG, "Uploaded JSON in " + Math.floor((double) (currentTimeMillis2 / 1000)) + " seconds");
        }
        outputStream.write(125);
        outputStream.flush();
        AsyncHttpClient.silentCloseOutputStream(outputStream);
    }

    private void writeToFromStream(OutputStream outputStream, StreamWrapper streamWrapper) {
        writeMetaData(outputStream, streamWrapper.name, streamWrapper.contentType);
        Base64OutputStream base64OutputStream = new Base64OutputStream(outputStream, 18);
        while (true) {
            int read = streamWrapper.inputStream.read(this.buffer);
            if (read == -1) {
                break;
            }
            base64OutputStream.write(this.buffer, 0, read);
        }
        AsyncHttpClient.silentCloseOutputStream(base64OutputStream);
        endMetaData(outputStream);
        if (streamWrapper.autoClose) {
            AsyncHttpClient.silentCloseInputStream(streamWrapper.inputStream);
        }
    }

    private void writeToFromFile(OutputStream outputStream, FileWrapper fileWrapper) {
        writeMetaData(outputStream, fileWrapper.file.getName(), fileWrapper.contentType);
        long j = 0;
        long length = fileWrapper.file.length();
        FileInputStream fileInputStream = new FileInputStream(fileWrapper.file);
        Base64OutputStream base64OutputStream = new Base64OutputStream(outputStream, 18);
        while (true) {
            int read = fileInputStream.read(this.buffer);
            if (read != -1) {
                base64OutputStream.write(this.buffer, 0, read);
                j += (long) read;
                this.progressHandler.sendProgressMessage(j, length);
            } else {
                AsyncHttpClient.silentCloseOutputStream(base64OutputStream);
                endMetaData(outputStream);
                AsyncHttpClient.silentCloseInputStream(fileInputStream);
                return;
            }
        }
    }

    private void writeMetaData(OutputStream outputStream, String str, String str2) {
        outputStream.write(STREAM_NAME);
        outputStream.write(58);
        outputStream.write(escape(str));
        outputStream.write(44);
        outputStream.write(STREAM_TYPE);
        outputStream.write(58);
        outputStream.write(escape(str2));
        outputStream.write(44);
        outputStream.write(STREAM_CONTENTS);
        outputStream.write(58);
        outputStream.write(34);
    }

    private void endMetaData(OutputStream outputStream) {
        outputStream.write(34);
    }

    static byte[] escape(String str) {
        if (str == null) {
            return JSON_NULL;
        }
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append('\"');
        int length = str.length();
        int i = -1;
        while (true) {
            int i2 = i + 1;
            if (i2 < length) {
                char charAt = str.charAt(i2);
                switch (charAt) {
                    case 8:
                        stringBuilder.append("\\b");
                        break;
                    case 9:
                        stringBuilder.append("\\t");
                        break;
                    case 10:
                        stringBuilder.append("\\n");
                        break;
                    case 12:
                        stringBuilder.append("\\f");
                        break;
                    case 13:
                        stringBuilder.append("\\r");
                        break;
                    case '\"':
                        stringBuilder.append("\\\"");
                        break;
                    case '\\':
                        stringBuilder.append("\\\\");
                        break;
                    default:
                        if (charAt > 31 && ((charAt < 127 || charAt > 159) && (charAt < 8192 || charAt > 8447))) {
                            stringBuilder.append(charAt);
                            break;
                        }
                        String toHexString = Integer.toHexString(charAt);
                        stringBuilder.append("\\u");
                        int length2 = 4 - toHexString.length();
                        for (i = 0; i < length2; i++) {
                            stringBuilder.append('0');
                        }
                        stringBuilder.append(toHexString.toUpperCase(Locale.US));
                        break;
                        break;
                }
                i = i2;
            } else {
                stringBuilder.append('\"');
                return stringBuilder.toString().getBytes();
            }
        }
    }
}
