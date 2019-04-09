package org.apache.commons.io;

import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.util.Collection;
import org.apache.commons.io.filefilter.FileFilterUtils;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.apache.commons.io.filefilter.TrueFileFilter;

public abstract class DirectoryWalker<T> {
    private final int depthLimit;
    private final FileFilter filter;

    public class CancelException extends IOException {
        private static final long serialVersionUID = 1347339620135041008L;
        private final int depth;
        private final File file;

        public CancelException(File file, int i) {
            this("Operation Cancelled", file, i);
        }

        public CancelException(String str, File file, int i) {
            super(str);
            this.file = file;
            this.depth = i;
        }

        public File getFile() {
            return this.file;
        }

        public int getDepth() {
            return this.depth;
        }
    }

    protected DirectoryWalker() {
        this(null, -1);
    }

    protected DirectoryWalker(FileFilter fileFilter, int i) {
        this.filter = fileFilter;
        this.depthLimit = i;
    }

    protected DirectoryWalker(IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2, int i) {
        if (iOFileFilter == null && iOFileFilter2 == null) {
            this.filter = null;
        } else {
            if (iOFileFilter == null) {
                iOFileFilter = TrueFileFilter.TRUE;
            }
            if (iOFileFilter2 == null) {
                iOFileFilter2 = TrueFileFilter.TRUE;
            }
            IOFileFilter makeDirectoryOnly = FileFilterUtils.makeDirectoryOnly(iOFileFilter);
            IOFileFilter makeFileOnly = FileFilterUtils.makeFileOnly(iOFileFilter2);
            this.filter = FileFilterUtils.or(makeDirectoryOnly, makeFileOnly);
        }
        this.depthLimit = i;
    }

    /* Access modifiers changed, original: protected|final */
    public final void walk(File file, Collection<T> collection) {
        if (file == null) {
            throw new NullPointerException("Start Directory is null");
        }
        try {
            handleStart(file, collection);
            walk(file, 0, collection);
            handleEnd(collection);
        } catch (CancelException e) {
            handleCancelled(file, collection, e);
        }
    }

    private void walk(File file, int i, Collection<T> collection) {
        checkIfCancelled(file, i, collection);
        if (handleDirectory(file, i, collection)) {
            handleDirectoryStart(file, i, collection);
            int i2 = i + 1;
            if (this.depthLimit < 0 || i2 <= this.depthLimit) {
                checkIfCancelled(file, i, collection);
                File[] filterDirectoryContents = filterDirectoryContents(file, i, this.filter == null ? file.listFiles() : file.listFiles(this.filter));
                if (filterDirectoryContents == null) {
                    handleRestricted(file, i2, collection);
                } else {
                    for (File file2 : filterDirectoryContents) {
                        if (file2.isDirectory()) {
                            walk(file2, i2, collection);
                        } else {
                            checkIfCancelled(file2, i2, collection);
                            handleFile(file2, i2, collection);
                            checkIfCancelled(file2, i2, collection);
                        }
                    }
                }
            }
            handleDirectoryEnd(file, i, collection);
        }
        checkIfCancelled(file, i, collection);
    }

    /* Access modifiers changed, original: protected|final */
    public final void checkIfCancelled(File file, int i, Collection<T> collection) {
        if (handleIsCancelled(file, i, collection)) {
            throw new CancelException(file, i);
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean handleIsCancelled(File file, int i, Collection<T> collection) {
        return false;
    }

    /* Access modifiers changed, original: protected */
    public void handleCancelled(File file, Collection<T> collection, CancelException cancelException) {
        throw cancelException;
    }

    /* Access modifiers changed, original: protected */
    public void handleStart(File file, Collection<T> collection) {
    }

    /* Access modifiers changed, original: protected */
    public boolean handleDirectory(File file, int i, Collection<T> collection) {
        return true;
    }

    /* Access modifiers changed, original: protected */
    public void handleDirectoryStart(File file, int i, Collection<T> collection) {
    }

    /* Access modifiers changed, original: protected */
    public File[] filterDirectoryContents(File file, int i, File[] fileArr) {
        return fileArr;
    }

    /* Access modifiers changed, original: protected */
    public void handleFile(File file, int i, Collection<T> collection) {
    }

    /* Access modifiers changed, original: protected */
    public void handleRestricted(File file, int i, Collection<T> collection) {
    }

    /* Access modifiers changed, original: protected */
    public void handleDirectoryEnd(File file, int i, Collection<T> collection) {
    }

    /* Access modifiers changed, original: protected */
    public void handleEnd(Collection<T> collection) {
    }
}
