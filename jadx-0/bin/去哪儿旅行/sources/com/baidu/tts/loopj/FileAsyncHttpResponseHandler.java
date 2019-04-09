package com.baidu.tts.loopj;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

public abstract class FileAsyncHttpResponseHandler extends AsyncHttpResponseHandler {
    private static final String LOG_TAG = "FileAsyncHttpRH";
    protected final boolean append;
    protected final File file;
    protected File frontendFile;
    protected final boolean renameIfExists;

    public abstract void onFailure(int i, Header[] headerArr, Throwable th, File file);

    public abstract void onSuccess(int i, Header[] headerArr, File file);

    public FileAsyncHttpResponseHandler(File file) {
        this(file, false);
    }

    public FileAsyncHttpResponseHandler(File file, boolean z) {
        this(file, z, false);
    }

    public FileAsyncHttpResponseHandler(File file, boolean z, boolean z2) {
        Utils.asserts(file != null, "File passed into FileAsyncHttpResponseHandler constructor must not be null");
        if (!(file.isDirectory() || file.getParentFile().isDirectory())) {
            Utils.asserts(file.getParentFile().mkdirs(), "Cannot create parent directories for requested File location");
        }
        if (file.isDirectory() && !file.mkdirs()) {
            AsyncHttpClient.log.d(LOG_TAG, "Cannot create directories for requested Directory location, might not be a problem");
        }
        this.file = file;
        this.append = z;
        this.renameIfExists = z2;
    }

    public FileAsyncHttpResponseHandler(Context context) {
        this.file = getTemporaryFile(context);
        this.append = false;
        this.renameIfExists = false;
    }

    public boolean deleteTargetFile() {
        return getTargetFile() != null && getTargetFile().delete();
    }

    /* Access modifiers changed, original: protected */
    public File getTemporaryFile(Context context) {
        Utils.asserts(context != null, "Tried creating temporary file without having Context");
        try {
            return File.createTempFile("temp_", "_handled", context.getCacheDir());
        } catch (IOException e) {
            AsyncHttpClient.log.e(LOG_TAG, "Cannot create temporary file", e);
            return null;
        }
    }

    /* Access modifiers changed, original: protected */
    public File getOriginalFile() {
        Utils.asserts(this.file != null, "Target file is null, fatal!");
        return this.file;
    }

    public File getTargetFile() {
        if (this.frontendFile == null) {
            this.frontendFile = getOriginalFile().isDirectory() ? getTargetFileByParsingURL() : getOriginalFile();
        }
        return this.frontendFile;
    }

    /* Access modifiers changed, original: protected */
    public File getTargetFileByParsingURL() {
        Utils.asserts(getOriginalFile().isDirectory(), "Target file is not a directory, cannot proceed");
        Utils.asserts(getRequestURI() != null, "RequestURI is null, cannot proceed");
        String uri = getRequestURI().toString();
        String substring = uri.substring(uri.lastIndexOf(47) + 1, uri.length());
        File file = new File(getOriginalFile(), substring);
        if (!file.exists() || !this.renameIfExists) {
            return file;
        }
        if (substring.contains(".")) {
            uri = substring.substring(0, substring.lastIndexOf(46)) + " (%d)" + substring.substring(substring.lastIndexOf(46), substring.length());
        } else {
            uri = substring + " (%d)";
        }
        int i = 0;
        while (true) {
            File file2 = new File(getOriginalFile(), String.format(uri, new Object[]{Integer.valueOf(i)}));
            if (!file2.exists()) {
                return file2;
            }
            i++;
        }
    }

    public final void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        onFailure(i, headerArr, th, getTargetFile());
    }

    public final void onSuccess(int i, Header[] headerArr, byte[] bArr) {
        onSuccess(i, headerArr, getTargetFile());
    }

    /* Access modifiers changed, original: protected */
    public byte[] getResponseData(HttpEntity httpEntity) {
        int i = 0;
        if (httpEntity != null) {
            InputStream content = httpEntity.getContent();
            long contentLength = httpEntity.getContentLength();
            FileOutputStream fileOutputStream = new FileOutputStream(getTargetFile(), this.append);
            if (content != null) {
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = content.read(bArr);
                        if (read == -1 || Thread.currentThread().isInterrupted()) {
                            AsyncHttpClient.silentCloseInputStream(content);
                            fileOutputStream.flush();
                            AsyncHttpClient.silentCloseOutputStream(fileOutputStream);
                        } else {
                            i += read;
                            fileOutputStream.write(bArr, 0, read);
                            sendProgressMessage((long) i, contentLength);
                        }
                    }
                    AsyncHttpClient.silentCloseInputStream(content);
                    fileOutputStream.flush();
                    AsyncHttpClient.silentCloseOutputStream(fileOutputStream);
                } catch (Throwable th) {
                    AsyncHttpClient.silentCloseInputStream(content);
                    fileOutputStream.flush();
                    AsyncHttpClient.silentCloseOutputStream(fileOutputStream);
                }
            }
        }
        return null;
    }
}
