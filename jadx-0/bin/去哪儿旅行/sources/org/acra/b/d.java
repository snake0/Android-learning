package org.acra.b;

import android.support.annotation.NonNull;
import java.io.File;
import java.util.Comparator;

final class d implements Comparator<File> {
    d() {
    }

    /* renamed from: a */
    public int compare(@NonNull File file, @NonNull File file2) {
        return (int) (file.lastModified() - file2.lastModified());
    }
}
