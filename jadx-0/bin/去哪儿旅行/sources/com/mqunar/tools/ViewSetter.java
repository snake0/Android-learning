package com.mqunar.tools;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

public class ViewSetter {

    public interface ViewSetting {
        boolean setOr(Method method, boolean z, int i, Object... objArr);
    }

    public abstract class CommonViewProxy<T extends View> implements ViewSetting {
        protected T mView;

        public abstract void get(List<Method> list);

        public abstract boolean set(Method method, int i, Object... objArr);

        public void init(T t) {
            this.mView = t;
        }

        public final boolean setOr(Method method, boolean z, int i, Object... objArr) {
            if (!z) {
                return gone(i);
            }
            if (method == Method.NotCare) {
                return visible();
            }
            if (CheckUtils.isContainsEmpty(objArr)) {
                return gone(i);
            }
            ArrayList<Method> arrayList = new ArrayList();
            get(arrayList);
            for (Method method2 : arrayList) {
                if (method2 == method) {
                    return set(method, i, objArr);
                }
            }
            throw ex(this.mView, objArr[0]);
        }

        /* Access modifiers changed, original: protected */
        public boolean gone(int i) {
            this.mView.setVisibility(i);
            return false;
        }

        /* Access modifiers changed, original: protected */
        public boolean visible() {
            this.mView.setVisibility(0);
            return true;
        }

        /* Access modifiers changed, original: protected */
        public RuntimeException ex(View view, Object obj) {
            return new RuntimeException("can't handle... view " + view.getClass().getSimpleName() + " data :" + obj.toString());
        }
    }

    public class FakeProxy implements ViewSetting {
        public boolean setOr(Method method, boolean z, int i, Object... objArr) {
            return false;
        }
    }

    public class ViewProxy<T extends View> extends CommonViewProxy<View> {
        /* Access modifiers changed, original: protected */
        public T getView() {
            return this.mView;
        }

        /* Access modifiers changed, original: protected|varargs */
        public boolean set(Method method, int i, Object... objArr) {
            if (method == Method.Background) {
                a(this.mView, objArr[0]);
                return visible();
            }
            throw ex(this.mView, objArr[0]);
        }

        private void a(View view, Object obj) {
            if (obj instanceof Drawable) {
                view.setBackgroundDrawable((Drawable) obj);
            } else if (obj instanceof Integer) {
                view.setBackgroundResource(((Integer) obj).intValue());
            } else {
                throw ex(view, obj);
            }
        }

        /* Access modifiers changed, original: protected */
        public void get(List<Method> list) {
            list.add(Method.Background);
        }
    }

    public class ImageViewProxy extends ViewProxy<ImageView> {
        /* Access modifiers changed, original: protected|varargs */
        public boolean set(Method method, int i, Object... objArr) {
            if (method != Method.Src) {
                return super.set(method, i, objArr);
            }
            a((ImageView) getView(), objArr[0]);
            return visible();
        }

        /* Access modifiers changed, original: protected */
        public void get(List<Method> list) {
            super.get(list);
            list.add(Method.Src);
        }

        private void a(ImageView imageView, Object obj) {
            if (obj instanceof Bitmap) {
                imageView.setImageBitmap((Bitmap) obj);
            } else if (obj instanceof Drawable) {
                imageView.setImageDrawable((Drawable) obj);
            } else if (obj instanceof Integer) {
                imageView.setImageResource(((Integer) obj).intValue());
            } else {
                throw ex(imageView, obj);
            }
        }
    }

    public enum Method {
        Text,
        Src,
        Background,
        NotCare
    }

    public class TextViewProxy extends ViewProxy<TextView> {
        /* Access modifiers changed, original: protected|varargs */
        public boolean set(Method method, int i, Object... objArr) {
            if (method != Method.Text) {
                return super.set(method, i, objArr);
            }
            a((TextView) getView(), objArr);
            return visible();
        }

        /* Access modifiers changed, original: protected */
        public void get(List<Method> list) {
            list.add(Method.Text);
        }

        private void a(TextView textView, Object... objArr) {
            CharSequence joinNotAllowedNull;
            if (objArr.length != 1) {
                joinNotAllowedNull = ViewUtils.joinNotAllowedNull(objArr);
            } else {
                joinNotAllowedNull = objArr[0];
            }
            if (joinNotAllowedNull instanceof CharSequence) {
                textView.setText(joinNotAllowedNull);
            } else if (joinNotAllowedNull instanceof Integer) {
                textView.setText(((Integer) joinNotAllowedNull).intValue());
            } else {
                throw ex(getView(), objArr);
            }
        }
    }

    public static ViewSetting getSetting(View view) {
        if (view == null) {
            throw new IllegalArgumentException("view must be not null...");
        }
        Class cls = view.getClass();
        while (cls != null) {
            CommonViewProxy commonViewProxy = null;
            if (cls == View.class) {
                commonViewProxy = new ViewProxy();
            } else if (cls == TextView.class) {
                commonViewProxy = new TextViewProxy();
            } else if (cls == ImageView.class) {
                commonViewProxy = new ImageViewProxy();
            }
            if (commonViewProxy == null) {
                cls = cls.getSuperclass();
            } else {
                commonViewProxy.init(view);
                return commonViewProxy;
            }
        }
        throw new IllegalArgumentException("can't get view setting");
    }
}
