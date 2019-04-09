.class public abstract Lcom/iflytek/speech/aidl/ISpeechRecognizer$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/iflytek/speech/aidl/ISpeechRecognizer;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.speech.aidl.ISpeechRecognizer"

.field static final TRANSACTION_buildGrammar:I = 0x5

.field static final TRANSACTION_cancel:I = 0x3

.field static final TRANSACTION_isListening:I = 0x4

.field static final TRANSACTION_startListening:I = 0x1

.field static final TRANSACTION_stopListening:I = 0x2

.field static final TRANSACTION_updateLexicon:I = 0x6

.field static final TRANSACTION_writeAudio:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iflytek.speech.aidl.ISpeechRecognizer"

    invoke-virtual {p0, p0, v0}, Lcom/iflytek/speech/aidl/ISpeechRecognizer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/aidl/ISpeechRecognizer;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.iflytek.speech.aidl.ISpeechRecognizer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/iflytek/speech/aidl/ISpeechRecognizer;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/iflytek/speech/aidl/ISpeechRecognizer;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/iflytek/speech/aidl/ISpeechRecognizer$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iflytek/speech/aidl/ISpeechRecognizer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_dc

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_9
    return v1

    :sswitch_a
    const-string v0, "com.iflytek.speech.aidl.ISpeechRecognizer"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_10
    const-string v2, "com.iflytek.speech.aidl.ISpeechRecognizer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_23

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :cond_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/speech/RecognizerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/RecognizerListener;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/speech/aidl/ISpeechRecognizer$Stub;->startListening(Landroid/content/Intent;Lcom/iflytek/speech/RecognizerListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_32
    const-string v0, "com.iflytek.speech.aidl.ISpeechRecognizer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/speech/RecognizerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/RecognizerListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/speech/aidl/ISpeechRecognizer$Stub;->stopListening(Lcom/iflytek/speech/RecognizerListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_46
    const-string v0, "com.iflytek.speech.aidl.ISpeechRecognizer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/speech/RecognizerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/RecognizerListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/speech/aidl/ISpeechRecognizer$Stub;->cancel(Lcom/iflytek/speech/RecognizerListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_5a
    const-string v0, "com.iflytek.speech.aidl.ISpeechRecognizer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/speech/aidl/ISpeechRecognizer$Stub;->isListening()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_6d

    move v0, v1

    :goto_69
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :cond_6d
    const/4 v0, 0x0

    goto :goto_69

    :sswitch_6f
    const-string v2, "com.iflytek.speech.aidl.ISpeechRecognizer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_82

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :cond_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/speech/GrammarListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/GrammarListener;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/speech/aidl/ISpeechRecognizer$Stub;->buildGrammar(Landroid/content/Intent;Lcom/iflytek/speech/GrammarListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_92
    const-string v2, "com.iflytek.speech.aidl.ISpeechRecognizer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a5

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :cond_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/speech/LexiconListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/speech/LexiconListener;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/speech/aidl/ISpeechRecognizer$Stub;->updateLexicon(Landroid/content/Intent;Lcom/iflytek/speech/LexiconListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_b5
    const-string v2, "com.iflytek.speech.aidl.ISpeechRecognizer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c8

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :cond_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/iflytek/speech/aidl/ISpeechRecognizer$Stub;->writeAudio(Landroid/content/Intent;[BII)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_data_dc
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_32
        0x3 -> :sswitch_46
        0x4 -> :sswitch_5a
        0x5 -> :sswitch_6f
        0x6 -> :sswitch_92
        0x7 -> :sswitch_b5
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
