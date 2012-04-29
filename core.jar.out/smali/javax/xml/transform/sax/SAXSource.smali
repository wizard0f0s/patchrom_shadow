.class public Ljavax/xml/transform/sax/SAXSource;
.super Ljava/lang/Object;
.source "SAXSource.java"

# interfaces
.implements Ljavax/xml/transform/Source;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.sax.SAXSource/feature"


# instance fields
.field private inputSource:Lorg/xml/sax/InputSource;

.field private reader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/InputSource;)V
    .registers 2
    .parameter "inputSource"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V
    .registers 3
    .parameter "reader"
    .parameter "inputSource"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Ljavax/xml/transform/sax/SAXSource;->reader:Lorg/xml/sax/XMLReader;

    .line 74
    iput-object p2, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    .line 75
    return-void
.end method

.method public static sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;
    .registers 5
    .parameter "source"

    .prologue
    .line 188
    instance-of v3, p0, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v3, :cond_b

    .line 189
    check-cast p0, Ljavax/xml/transform/sax/SAXSource;

    .end local p0
    invoke-virtual {p0}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v3

    .line 200
    :goto_a
    return-object v3

    .line 190
    .restart local p0
    :cond_b
    instance-of v3, p0, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v3, :cond_33

    .line 191
    move-object v0, p0

    check-cast v0, Ljavax/xml/transform/stream/StreamSource;

    move-object v2, v0

    .line 192
    .local v2, ss:Ljavax/xml/transform/stream/StreamSource;
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-virtual {v2}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, isource:Lorg/xml/sax/InputSource;
    invoke-virtual {v2}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 195
    invoke-virtual {v2}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 196
    invoke-virtual {v2}, Ljavax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    move-object v3, v1

    .line 198
    goto :goto_a

    .line 200
    .end local v1           #isource:Lorg/xml/sax/InputSource;
    .end local v2           #ss:Ljavax/xml/transform/stream/StreamSource;
    :cond_33
    const/4 v3, 0x0

    goto :goto_a
.end method


# virtual methods
.method public getInputSource()Lorg/xml/sax/InputSource;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    if-nez v0, :cond_6

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->reader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .registers 2
    .parameter "inputSource"

    .prologue
    .line 117
    iput-object p1, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    .line 118
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .registers 3
    .parameter "systemId"

    .prologue
    .line 145
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    if-nez v0, :cond_c

    .line 146
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    .line 150
    :goto_b
    return-void

    .line 148
    :cond_c
    iget-object v0, p0, Ljavax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .registers 2
    .parameter "reader"

    .prologue
    .line 99
    iput-object p1, p0, Ljavax/xml/transform/sax/SAXSource;->reader:Lorg/xml/sax/XMLReader;

    .line 100
    return-void
.end method
