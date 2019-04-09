package com.baidu.mapsdkplatform.comapi.map;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Handler;
import android.os.Message;
import com.baidu.mapapi.UIMsg.m_AppUI;

class ad extends Handler {
    final /* synthetic */ ac a;

    ad(ac acVar) {
        this.a = acVar;
    }

    public void handleMessage(Message message) {
        super.handleMessage(message);
        if (this.a.i != null && this.a.i.h != null && ((Long) message.obj).longValue() == this.a.i.i) {
            if (message.what == m_AppUI.MSG_APP_SAVESCREEN) {
                for (l lVar : this.a.i.g) {
                    Bitmap bitmap = null;
                    if (message.arg2 == 1) {
                        int[] iArr = new int[(ac.a * ac.b)];
                        int[] iArr2 = new int[(ac.a * ac.b)];
                        if (this.a.i.h != null) {
                            int[] a = this.a.i.h.a(iArr, ac.a, ac.b);
                            for (int i = 0; i < ac.b; i++) {
                                for (int i2 = 0; i2 < ac.a; i2++) {
                                    int i3 = a[(ac.a * i) + i2];
                                    iArr2[(((ac.b - i) - 1) * ac.a) + i2] = ((i3 & -16711936) | ((i3 << 16) & 16711680)) | ((i3 >> 16) & 255);
                                }
                            }
                            bitmap = Bitmap.createBitmap(iArr2, ac.a, ac.b, Config.ARGB_8888);
                        } else {
                            return;
                        }
                    }
                    lVar.a(bitmap);
                }
            } else if (message.what == 39) {
                if (this.a.i != null) {
                    if (message.arg1 == 100) {
                        this.a.i.B();
                    } else if (message.arg1 == 200) {
                        this.a.i.K();
                    } else if (message.arg1 == 1) {
                        if (this.a.h != null) {
                            this.a.h.a();
                        }
                    } else if (message.arg1 == 0) {
                        if (this.a.h != null) {
                            this.a.h.a();
                        }
                    } else if (message.arg1 == 2) {
                        for (l lVar2 : this.a.i.g) {
                            lVar2.c();
                        }
                    }
                    if (!this.a.i.j && ac.b > 0 && ac.a > 0 && this.a.i.b(0, 0) != null) {
                        this.a.i.j = true;
                        for (l lVar22 : this.a.i.g) {
                            lVar22.b();
                        }
                    }
                    for (l lVar222 : this.a.i.g) {
                        lVar222.a();
                    }
                    if (this.a.i.q()) {
                        for (l lVar2222 : this.a.i.g) {
                            if (this.a.i.E().a >= 18.0f) {
                                lVar2222.a(true);
                            } else {
                                lVar2222.a(false);
                            }
                        }
                    }
                }
            } else if (message.what == 41) {
                if (this.a.i == null) {
                    return;
                }
                if (this.a.i.m || this.a.i.n) {
                    for (l lVar22222 : this.a.i.g) {
                        lVar22222.b(this.a.i.E());
                        if (this.a.i.q()) {
                            if (this.a.i.E().a >= 18.0f) {
                                lVar22222.a(true);
                            } else {
                                lVar22222.a(false);
                            }
                        }
                    }
                }
            } else if (message.what == 999) {
                for (l lVar222222 : this.a.i.g) {
                    lVar222222.e();
                }
            } else if (message.what == 50) {
                for (l lVar2222222 : this.a.i.g) {
                    if (message.arg1 == 0) {
                        lVar2222222.a(false);
                    } else if (message.arg1 == 1) {
                        if (this.a.i.E().a >= 18.0f) {
                            lVar2222222.a(true);
                        } else {
                            lVar2222222.a(false);
                        }
                    }
                }
            }
        }
    }
}
