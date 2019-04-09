package com.mapquest.android.maps;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import java.io.File;
import java.util.Arrays;
import java.util.Comparator;

class FSTileCache implements ITileCache {
    static final String EXTERNAL_CACHE_DIRECTORY = "mapquest/tiles";
    private static final int EXTERNAL_CACHE_SIZE = 104857600;
    static final String INTERNAL_CACHE_DIRECTORY = "tiles";
    private static final int INTERNAL_CACHE_SIZE = 10485760;
    private static final String LOG_TAG = FSTileCache.class.getName();
    private static final long MILISECONDS_IN_A_DAY = 86400000;
    private static int VERSION = 1;
    CacheHandler cacheHandler;
    private Context context;
    private File file;
    HandlerThread handlerThread;
    boolean mExternalStorageAvailable = false;
    private BroadcastReceiver mExternalStorageReceiver;
    boolean mExternalStorageWriteable = false;

    interface IFileCallback {
        void process(File file);
    }

    class CacheHandler extends Handler {
        static final int EMPTY_CACHE = 0;
        static final int ENSURE_CACHE = 1;
        static final int ENSURE_CACHE_BASED_ON_EXPIRY = 3;
        static final int ENSURE_CACHE_BASED_ON_SIZE = 2;

        public CacheHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    FSTileCache.this.iterateDirectory(Util.getAppFileDir(FSTileCache.this.context, "mapquestCache"), 0, FSTileCache.this.getCallback(FileCallbackType.EMPTY_CACHE));
                    removeMessages(0);
                    break;
                case 1:
                    sendEmptyMessage(3);
                    sendEmptyMessage(2);
                    break;
                case 2:
                    try {
                        FSTileCache.this.iterateDirectory(Util.getAppFileDir(FSTileCache.this.context, "mapquestCache"), -1, FSTileCache.this.getCallback(FileCallbackType.PURGE_EXTERNAL_CACHE_BASED_ON_SIZE));
                        removeMessages(2);
                        break;
                    } catch (Exception e) {
                        sendEmptyMessageDelayed(2, 5000);
                        break;
                    }
                case 3:
                    FSTileCache.this.iterateDirectory(Util.getAppFileDir(FSTileCache.this.context, "mapquestCache"), 0, FSTileCache.this.getCallback(FileCallbackType.PURGE_CACHE_BASED_ON_EXPIRY));
                    removeMessages(3);
                    break;
            }
            super.handleMessage(message);
        }
    }

    enum FileCallbackType {
        EMPTY_CACHE,
        PURGE_EXTERNAL_CACHE_BASED_ON_SIZE,
        PURGE_INTERNAL_CACHE_BASED_ON_SIZE,
        PURGE_CACHE_BASED_ON_EXPIRY
    }

    public FSTileCache(Context context, boolean z) {
        this.context = context;
        startWatchingExternalStorage();
        if (z) {
            this.handlerThread = new HandlerThread("cache", 1);
            this.handlerThread.start();
            this.cacheHandler = new CacheHandler(this.handlerThread.getLooper());
        }
    }

    private File getTileDirectory(Tile tile) {
        File file = new File(this.file, tile.getProvider() + "_" + VERSION);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* JADX WARNING: Removed duplicated region for block: B:45:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x004a A:{SYNTHETIC, Splitter:B:19:0x004a} */
    /* JADX WARNING: Removed duplicated region for block: B:46:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0053 A:{SYNTHETIC, Splitter:B:24:0x0053} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x005f A:{SYNTHETIC, Splitter:B:30:0x005f} */
    public void addTile(com.mapquest.android.maps.Tile r8) {
        /*
        r7 = this;
        r0 = 0;
        r2 = 1;
        r1 = r8.isValid();
        if (r1 == 0) goto L_0x0046;
    L_0x0008:
        r1 = r8.getBytes();
        if (r1 == 0) goto L_0x0046;
    L_0x000e:
        r1 = r8.getBytes();
        if (r1 == 0) goto L_0x0046;
    L_0x0014:
        r1 = r7.cacheHandler;
        r1.removeMessages(r2);
        r2 = new java.io.File;
        r1 = r7.getTileDirectory(r8);
        r3 = r8.buildCacheKey();
        r2.<init>(r1, r3);
        r1 = new java.io.FileOutputStream;	 Catch:{ FileNotFoundException -> 0x0047, IOException -> 0x0050, all -> 0x0059 }
        r1.<init>(r2);	 Catch:{ FileNotFoundException -> 0x0047, IOException -> 0x0050, all -> 0x0059 }
        r2 = r8.getBytes();	 Catch:{ FileNotFoundException -> 0x006c, IOException -> 0x0069, all -> 0x0067 }
        r1.write(r2);	 Catch:{ FileNotFoundException -> 0x006c, IOException -> 0x0069, all -> 0x0067 }
        r1.flush();	 Catch:{ FileNotFoundException -> 0x006c, IOException -> 0x0069, all -> 0x0067 }
        r1.close();	 Catch:{ FileNotFoundException -> 0x006c, IOException -> 0x0069, all -> 0x0067 }
        r1 = 0;
        r2 = r7.cacheHandler;	 Catch:{ FileNotFoundException -> 0x0047, IOException -> 0x0050, all -> 0x0059 }
        r3 = 1;
        r4 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
        r2.sendEmptyMessageDelayed(r3, r4);	 Catch:{ FileNotFoundException -> 0x0047, IOException -> 0x0050, all -> 0x0059 }
        if (r0 == 0) goto L_0x0046;
    L_0x0043:
        r1.close();	 Catch:{ IOException -> 0x0063 }
    L_0x0046:
        return;
    L_0x0047:
        r1 = move-exception;
    L_0x0048:
        if (r0 == 0) goto L_0x0046;
    L_0x004a:
        r0.close();	 Catch:{ IOException -> 0x004e }
        goto L_0x0046;
    L_0x004e:
        r0 = move-exception;
        goto L_0x0046;
    L_0x0050:
        r1 = move-exception;
    L_0x0051:
        if (r0 == 0) goto L_0x0046;
    L_0x0053:
        r0.close();	 Catch:{ IOException -> 0x0057 }
        goto L_0x0046;
    L_0x0057:
        r0 = move-exception;
        goto L_0x0046;
    L_0x0059:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
    L_0x005d:
        if (r1 == 0) goto L_0x0062;
    L_0x005f:
        r1.close();	 Catch:{ IOException -> 0x0065 }
    L_0x0062:
        throw r0;
    L_0x0063:
        r0 = move-exception;
        goto L_0x0046;
    L_0x0065:
        r1 = move-exception;
        goto L_0x0062;
    L_0x0067:
        r0 = move-exception;
        goto L_0x005d;
    L_0x0069:
        r0 = move-exception;
        r0 = r1;
        goto L_0x0051;
    L_0x006c:
        r0 = move-exception;
        r0 = r1;
        goto L_0x0048;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapquest.android.maps.FSTileCache.addTile(com.mapquest.android.maps.Tile):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x003a A:{SYNTHETIC, Splitter:B:18:0x003a} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0056 A:{SYNTHETIC, Splitter:B:31:0x0056} */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0063 A:{SYNTHETIC, Splitter:B:37:0x0063} */
    public com.mapquest.android.maps.Tile getTile(com.mapquest.android.maps.Tile r8) {
        /*
        r7 = this;
        r0 = 0;
        r2 = new java.io.File;
        r1 = r7.getTileDirectory(r8);
        r3 = r8.buildCacheKey();
        r2.<init>(r1, r3);
        r1 = r2.exists();
        if (r1 != 0) goto L_0x001a;
    L_0x0014:
        r0 = -1;
        r8.setId(r0);
    L_0x0019:
        return r8;
    L_0x001a:
        r3 = new java.io.ByteArrayOutputStream;
        r3.<init>();
        r1 = new java.io.FileInputStream;	 Catch:{ FileNotFoundException -> 0x0071, IOException -> 0x0052, all -> 0x005d }
        r1.<init>(r2);	 Catch:{ FileNotFoundException -> 0x0071, IOException -> 0x0052, all -> 0x005d }
        r2 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r2 = new byte[r2];	 Catch:{ FileNotFoundException -> 0x0034, IOException -> 0x006f }
    L_0x0028:
        r4 = r1.read(r2);	 Catch:{ FileNotFoundException -> 0x0034, IOException -> 0x006f }
        r5 = -1;
        if (r4 == r5) goto L_0x003f;
    L_0x002f:
        r5 = 0;
        r3.write(r2, r5, r4);	 Catch:{ FileNotFoundException -> 0x0034, IOException -> 0x006f }
        goto L_0x0028;
    L_0x0034:
        r0 = move-exception;
    L_0x0035:
        r0 = 0;
        r0 = (com.mapquest.android.maps.Tile) r0;	 Catch:{ all -> 0x006d }
        if (r1 == 0) goto L_0x003d;
    L_0x003a:
        r1.close();	 Catch:{ IOException -> 0x0067 }
    L_0x003d:
        r8 = r0;
        goto L_0x0019;
    L_0x003f:
        r2 = r3.toByteArray();	 Catch:{ FileNotFoundException -> 0x0034, IOException -> 0x006f }
        r8.setBytes(r2);	 Catch:{ FileNotFoundException -> 0x0034, IOException -> 0x006f }
        r1.close();	 Catch:{ FileNotFoundException -> 0x0034, IOException -> 0x006f }
        r1 = 0;
        if (r0 == 0) goto L_0x0019;
    L_0x004c:
        r1.close();	 Catch:{ IOException -> 0x0050 }
        goto L_0x0019;
    L_0x0050:
        r0 = move-exception;
        goto L_0x0019;
    L_0x0052:
        r1 = move-exception;
        r1 = r0;
    L_0x0054:
        if (r1 == 0) goto L_0x0059;
    L_0x0056:
        r1.close();	 Catch:{ IOException -> 0x0069 }
    L_0x0059:
        r0 = (com.mapquest.android.maps.Tile) r0;
        r8 = r0;
        goto L_0x0019;
    L_0x005d:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
    L_0x0061:
        if (r1 == 0) goto L_0x0066;
    L_0x0063:
        r1.close();	 Catch:{ IOException -> 0x006b }
    L_0x0066:
        throw r0;
    L_0x0067:
        r1 = move-exception;
        goto L_0x003d;
    L_0x0069:
        r1 = move-exception;
        goto L_0x0059;
    L_0x006b:
        r1 = move-exception;
        goto L_0x0066;
    L_0x006d:
        r0 = move-exception;
        goto L_0x0061;
    L_0x006f:
        r2 = move-exception;
        goto L_0x0054;
    L_0x0071:
        r1 = move-exception;
        r1 = r0;
        goto L_0x0035;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapquest.android.maps.FSTileCache.getTile(com.mapquest.android.maps.Tile):com.mapquest.android.maps.Tile");
    }

    public void removeTile(Tile tile) {
        new File(this.file, tile.buildCacheKey()).delete();
    }

    public void clear() {
        this.cacheHandler.sendEmptyMessage(0);
    }

    public boolean contains(Tile tile) {
        return new File(this.file, tile.buildCacheKey()).exists();
    }

    public void destroy() {
        stopWatchingExternalStorage();
        if (this.cacheHandler != null) {
            this.cacheHandler.removeMessages(0);
            this.cacheHandler.removeMessages(1);
            this.cacheHandler.removeMessages(3);
            this.cacheHandler.removeMessages(2);
        }
        if (this.handlerThread != null) {
            Looper looper = this.handlerThread.getLooper();
            if (looper != null) {
                looper.quit();
            }
        }
        this.file = null;
    }

    public int size() {
        return size(Util.getAppFileDir(this.context, "mapquestCache"));
    }

    private int size(File file) {
        int i = 0;
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                if (file2.isDirectory()) {
                    i += size(file2);
                } else {
                    i = (int) (((long) i) + file2.length());
                }
            }
        }
        return i;
    }

    public IFileCallback getCallback(FileCallbackType fileCallbackType) {
        switch (fileCallbackType) {
            case EMPTY_CACHE:
                return new IFileCallback() {
                    public void process(File file) {
                        file.delete();
                    }
                };
            case PURGE_EXTERNAL_CACHE_BASED_ON_SIZE:
                return new IFileCallback() {
                    int days = 30;

                    public void process(File file) {
                        if (System.currentTimeMillis() - file.lastModified() > 86400000 * ((long) this.days)) {
                            file.delete();
                        }
                    }
                };
            case PURGE_INTERNAL_CACHE_BASED_ON_SIZE:
                return createPurgeCallback(EXTERNAL_CACHE_SIZE);
            case PURGE_CACHE_BASED_ON_EXPIRY:
                return createPurgeCallback(INTERNAL_CACHE_SIZE);
            default:
                return null;
        }
    }

    private IFileCallback createPurgeCallback(final int i) {
        return new IFileCallback() {
            int max_size = i;
            int total_size;

            public void process(File file) {
                if (((long) this.total_size) + file.length() > ((long) this.max_size)) {
                    file.delete();
                } else {
                    this.total_size = (int) (((long) this.total_size) + file.length());
                }
            }
        };
    }

    public void iterateDirectory(File file, final int i, IFileCallback iFileCallback) {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (i != 0) {
                Arrays.sort(listFiles, new Comparator() {
                    public int compare(Object obj, Object obj2) {
                        if ((obj instanceof File) && (obj2 instanceof File)) {
                            return Long.valueOf(((File) obj).lastModified()).compareTo(Long.valueOf(((File) obj2).lastModified())) * i;
                        }
                        return 0;
                    }
                });
            }
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.isDirectory()) {
                        iterateDirectory(file2, i, iFileCallback);
                    }
                    iFileCallback.process(file2);
                }
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void updateExternalStorageState(Context context) {
        String externalStorageState = Environment.getExternalStorageState();
        if ("mounted".equals(externalStorageState)) {
            this.mExternalStorageWriteable = true;
            this.mExternalStorageAvailable = true;
        } else if ("mounted_ro".equals(externalStorageState)) {
            this.mExternalStorageAvailable = true;
            this.mExternalStorageWriteable = false;
        } else {
            this.mExternalStorageWriteable = false;
            this.mExternalStorageAvailable = false;
        }
        handleExternalStorageState(context, this.mExternalStorageAvailable, this.mExternalStorageWriteable);
    }

    private void handleExternalStorageState(Context context, boolean z, boolean z2) {
        this.file = Util.getAppFileDir(context, "mapquestCache");
    }

    /* Access modifiers changed, original: 0000 */
    public void startWatchingExternalStorage() {
        this.mExternalStorageReceiver = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                FSTileCache.this.updateExternalStorageState(context);
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_REMOVED");
        this.context.registerReceiver(this.mExternalStorageReceiver, intentFilter);
        updateExternalStorageState(this.context);
    }

    /* Access modifiers changed, original: 0000 */
    public void stopWatchingExternalStorage() {
        try {
            this.context.unregisterReceiver(this.mExternalStorageReceiver);
        } catch (Exception e) {
        }
    }
}
