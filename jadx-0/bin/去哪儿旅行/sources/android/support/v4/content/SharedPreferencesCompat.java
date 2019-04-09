package android.support.v4.content;

import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;

public class SharedPreferencesCompat {

    public class EditorCompat {
        private static EditorCompat sInstance;
        private final Helper mHelper;

        interface Helper {
            void apply(@NonNull Editor editor);
        }

        class EditorHelperApi9Impl implements Helper {
            private EditorHelperApi9Impl() {
            }

            public void apply(@NonNull Editor editor) {
                EditorCompatGingerbread.apply(editor);
            }
        }

        class EditorHelperBaseImpl implements Helper {
            private EditorHelperBaseImpl() {
            }

            public void apply(@NonNull Editor editor) {
                editor.commit();
            }
        }

        private EditorCompat() {
            if (VERSION.SDK_INT >= 9) {
                this.mHelper = new EditorHelperApi9Impl();
            } else {
                this.mHelper = new EditorHelperBaseImpl();
            }
        }

        public static EditorCompat getInstance() {
            if (sInstance == null) {
                sInstance = new EditorCompat();
            }
            return sInstance;
        }

        public void apply(@NonNull Editor editor) {
            this.mHelper.apply(editor);
        }
    }
}
