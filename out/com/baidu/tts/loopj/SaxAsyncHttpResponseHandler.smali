.class public abstract Lcom/baidu/tts/loopj/SaxAsyncHttpResponseHandler;
.super Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/xml/sax/helpers/DefaultHandler;",
        ">",
        "Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SaxAsyncHttpRH"


# instance fields
.field private handler:Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xml/sax/helpers/DefaultHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/baidu/tts/loopj/AsyncHttpResponseHandler;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/tts/loopj/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    .line 75
    if-nez p1, :cond_10

    .line 76
    new-instance v0, Ljava/lang/Error;

    const-string v1, "null instance of <T extends DefaultHandler> passed to constructor"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_10
    iput-object p1, p0, Lcom/baidu/tts/loopj/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    .line 79
    return-void
.end method


# virtual methods
.method protected getResponseData(Lorg/apache/http/HttpEntity;)[B
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 91
    if-eqz p1, :cond_33

    .line 92
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 94
    if-eqz v3, :cond_33

    .line 96
    :try_start_9
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/baidu/tts/loopj/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 100
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/baidu/tts/loopj/SaxAsyncHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_23
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_23} :catch_34
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_23} :catch_4a
    .catchall {:try_start_9 .. :try_end_23} :catchall_60

    .line 101
    :try_start_23
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_2b
    .catch Lorg/xml/sax/SAXException; {:try_start_23 .. :try_end_2b} :catch_73
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_23 .. :try_end_2b} :catch_71
    .catchall {:try_start_23 .. :try_end_2b} :catchall_6f

    .line 107
    invoke-static {v3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 108
    if-eqz v1, :cond_33

    .line 110
    :try_start_30
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_6b

    .line 116
    :cond_33
    :goto_33
    return-object v2

    .line 102
    :catch_34
    move-exception v0

    move-object v1, v2

    .line 103
    :goto_36
    :try_start_36
    sget-object v4, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v5, "SaxAsyncHttpRH"

    const-string v6, "getResponseData exception"

    invoke-interface {v4, v5, v6, v0}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_6f

    .line 107
    invoke-static {v3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 108
    if-eqz v1, :cond_33

    .line 110
    :try_start_44
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_33

    .line 111
    :catch_48
    move-exception v0

    goto :goto_33

    .line 104
    :catch_4a
    move-exception v0

    move-object v1, v2

    .line 105
    :goto_4c
    :try_start_4c
    sget-object v4, Lcom/baidu/tts/loopj/AsyncHttpClient;->log:Lcom/baidu/tts/loopj/LogInterface;

    const-string v5, "SaxAsyncHttpRH"

    const-string v6, "getResponseData exception"

    invoke-interface {v4, v5, v6, v0}, Lcom/baidu/tts/loopj/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_6f

    .line 107
    invoke-static {v3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 108
    if-eqz v1, :cond_33

    .line 110
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_33

    .line 111
    :catch_5e
    move-exception v0

    goto :goto_33

    .line 107
    :catchall_60
    move-exception v0

    move-object v1, v2

    :goto_62
    invoke-static {v3}, Lcom/baidu/tts/loopj/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 108
    if-eqz v1, :cond_6a

    .line 110
    :try_start_67
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6d

    .line 111
    :cond_6a
    :goto_6a
    throw v0

    :catch_6b
    move-exception v0

    goto :goto_33

    :catch_6d
    move-exception v1

    goto :goto_6a

    .line 107
    :catchall_6f
    move-exception v0

    goto :goto_62

    .line 104
    :catch_71
    move-exception v0

    goto :goto_4c

    .line 102
    :catch_73
    move-exception v0

    goto :goto_36
.end method

.method public abstract onFailure(I[Lorg/apache/http/Header;Lorg/xml/sax/helpers/DefaultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/apache/http/Header;",
            "TT;)V"
        }
    .end annotation
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 145
    iget-object v0, p0, Lcom/baidu/tts/loopj/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/tts/loopj/SaxAsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 146
    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;Lorg/xml/sax/helpers/DefaultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/apache/http/Header;",
            "TT;)V"
        }
    .end annotation
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .registers 5

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/tts/loopj/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/tts/loopj/SaxAsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 131
    return-void
.end method
