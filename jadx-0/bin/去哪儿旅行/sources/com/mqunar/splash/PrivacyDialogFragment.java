package com.mqunar.splash;

import android.app.AlertDialog.Builder;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.mqunar.atomenv.GlobalEnv;
import com.mqunar.atomenv.OwnerConstant;
import com.mqunar.core.basectx.SchemeDispatcher;
import com.mqunar.storage.Storage;

public class PrivacyDialogFragment extends DialogFragment {
    private AgreeListener mListener;
    private View view;

    public void show(FragmentManager fragmentManager, String str) {
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        beginTransaction.add(this, str);
        beginTransaction.commitAllowingStateLoss();
    }

    public PrivacyDialogFragment(AgreeListener agreeListener) {
        this.mListener = agreeListener;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, 0);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.view = layoutInflater.inflate(R.layout.spider_splash_privacy_dialog, null);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getDialog().setOnKeyListener(new OnKeyListener() {
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                switch (i) {
                    case 4:
                        return true;
                    default:
                        return false;
                }
            }
        });
        setCancelable(false);
        getDialog().setCanceledOnTouchOutside(false);
        View findViewById = this.view.findViewById(R.id.privacy_agree_button);
        View findViewById2 = this.view.findViewById(R.id.privacy_disagree_button);
        TextView textView = (TextView) this.view.findViewById(R.id.privacy_content_tv);
        SpannableString spannableString = new SpannableString("　　依据最新法律要求，我们更新了《隐私政策》，请您务必审慎阅读、充分理解相关条款内容，特别是字体加粗标识的重要条款。\n\n　　点击同意即代表您已阅读并同意《隐私政策》，如果您不同意隐私政策的内容，请您停止使用我们的服务。\n\n　　我们会尽力保护您的个人信息安全。\n");
        spannableString.setSpan(new ClickableSpan() {
            public void onClick(View view) {
                SchemeDispatcher.sendScheme(PrivacyDialogFragment.this.getActivity(), GlobalEnv.getInstance().getScheme() + "://" + "hy?url=https%3A%2F%2Fm.qunar.com%2Fzhuanti%2F20170210_privacy.html&type=browser");
            }
        }, 16, 22, 33);
        spannableString.setSpan(new ClickableSpan() {
            public void onClick(View view) {
                SchemeDispatcher.sendScheme(PrivacyDialogFragment.this.getActivity(), GlobalEnv.getInstance().getScheme() + "://" + "hy?url=https%3A%2F%2Fm.qunar.com%2Fzhuanti%2F20170210_privacy.html&type=browser");
            }
        }, 76, 82, 33);
        textView.setText(spannableString);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        findViewById.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                Storage.newStorage(view.getContext(), OwnerConstant.STORAGE_OWNER_SYS).putBoolean("isPrivacyShow", false);
                PrivacyDialogFragment.this.dismissAllowingStateLoss();
                if (PrivacyDialogFragment.this.mListener != null) {
                    PrivacyDialogFragment.this.mListener.agreeClick();
                }
            }
        });
        findViewById2.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                new Builder(PrivacyDialogFragment.this.getActivity()).setMessage("您需要同意去哪儿隐私政策，才能继续使用我们的产品及服务。").setPositiveButton("返回", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                    }
                }).create().show();
            }
        });
        return this.view;
    }
}
