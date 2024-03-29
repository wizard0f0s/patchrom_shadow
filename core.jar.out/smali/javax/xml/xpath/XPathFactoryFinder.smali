.class final Ljavax/xml/xpath/XPathFactoryFinder;
.super Ljava/lang/Object;
.source "XPathFactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/xml/xpath/XPathFactoryFinder$SingleIterator;
    }
.end annotation


# static fields
.field private static final DEFAULT_LINE_LENGTH:I = 0x50

.field private static final SERVICE_CLASS:Ljava/lang/Class;

.field private static final SERVICE_ID:Ljava/lang/String;

.field private static cacheProps:Ljava/util/Properties;

.field private static debug:Z

.field private static firstTime:Z


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    sput-boolean v3, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    .line 54
    :try_start_4
    const-string v2, "jaxp.debug"

    invoke-static {v2}, Ljavax/xml/xpath/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, val:Ljava/lang/String;
    if-eqz v1, :cond_40

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    move v2, v4

    :goto_15
    sput-boolean v2, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_42

    .line 65
    .end local v1           #val:Ljava/lang/String;
    :goto_17
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    sput-object v2, Ljavax/xml/xpath/XPathFactoryFinder;->cacheProps:Ljava/util/Properties;

    .line 70
    sput-boolean v4, Ljavax/xml/xpath/XPathFactoryFinder;->firstTime:Z

    .line 423
    const-class v2, Ljavax/xml/xpath/XPathFactory;

    sput-object v2, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "META-INF/services/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    return-void

    .restart local v1       #val:Ljava/lang/String;
    :cond_40
    move v2, v3

    .line 56
    goto :goto_15

    .line 57
    .end local v1           #val:Ljava/lang/String;
    :catch_42
    move-exception v2

    move-object v0, v2

    .line 58
    .local v0, _:Ljava/lang/Exception;
    sput-boolean v3, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    goto :goto_17
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 3
    .parameter "loader"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    .line 101
    sget-boolean v0, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v0, :cond_c

    .line 102
    invoke-direct {p0}, Ljavax/xml/xpath/XPathFactoryFinder;->debugDisplayClassLoader()V

    .line 104
    :cond_c
    return-void
.end method

.method private _newFactory(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    .registers 23
    .parameter "uri"

    .prologue
    .line 168
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 172
    .local v10, propertyName:Ljava/lang/String;
    :try_start_21
    sget-boolean v18, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v18, :cond_44

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Looking up system property \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 173
    :cond_44
    invoke-static {v10}, Ljavax/xml/xpath/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 174
    .local v11, r:Ljava/lang/String;
    if-eqz v11, :cond_7f

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_7f

    .line 175
    sget-boolean v18, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v18, :cond_73

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The value is \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 176
    :cond_73
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v17

    .line 177
    .local v17, xpf:Ljavax/xml/xpath/XPathFactory;
    if-eqz v17, :cond_88

    move-object/from16 v18, v17

    .line 256
    .end local v11           #r:Ljava/lang/String;
    .end local v17           #xpf:Ljavax/xml/xpath/XPathFactory;
    :goto_7e
    return-object v18

    .line 179
    .restart local v11       #r:Ljava/lang/String;
    :cond_7f
    sget-boolean v18, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v18, :cond_88

    .line 180
    const-string v18, "The property is undefined."

    invoke-static/range {v18 .. v18}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/VirtualMachineError; {:try_start_21 .. :try_end_88} :catch_133
    .catch Ljava/lang/ThreadDeath; {:try_start_21 .. :try_end_88} :catch_137
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_88} :catch_13b

    .line 198
    .end local v11           #r:Ljava/lang/String;
    :cond_88
    :goto_88
    const-string v18, "java.home"

    invoke-static/range {v18 .. v18}, Ljavax/xml/xpath/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 199
    .local v9, javah:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "lib"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "jaxp.properties"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, configFile:Ljava/lang/String;
    const/4 v8, 0x0

    .line 206
    .local v8, factoryClassName:Ljava/lang/String;
    :try_start_b7
    sget-boolean v18, Ljavax/xml/xpath/XPathFactoryFinder;->firstTime:Z

    if-eqz v18, :cond_f8

    .line 207
    sget-object v18, Ljavax/xml/xpath/XPathFactoryFinder;->cacheProps:Ljava/util/Properties;

    monitor-enter v18
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_be} :catch_169

    .line 208
    :try_start_be
    sget-boolean v19, Ljavax/xml/xpath/XPathFactoryFinder;->firstTime:Z

    if-eqz v19, :cond_f7

    .line 209
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v7, f:Ljava/io/File;
    const/16 v19, 0x0

    sput-boolean v19, Ljavax/xml/xpath/XPathFactoryFinder;->firstTime:Z

    .line 211
    invoke-static {v7}, Ljavax/xml/xpath/SecuritySupport;->doesFileExist(Ljava/io/File;)Z

    move-result v19

    if-eqz v19, :cond_f7

    .line 212
    sget-boolean v19, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v19, :cond_ee

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Read properties file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 213
    :cond_ee
    sget-object v19, Ljavax/xml/xpath/XPathFactoryFinder;->cacheProps:Ljava/util/Properties;

    invoke-static {v7}, Ljavax/xml/xpath/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 216
    .end local v7           #f:Ljava/io/File;
    :cond_f7
    monitor-exit v18
    :try_end_f8
    .catchall {:try_start_be .. :try_end_f8} :catchall_166

    .line 218
    :cond_f8
    :try_start_f8
    sget-object v18, Ljavax/xml/xpath/XPathFactoryFinder;->cacheProps:Ljava/util/Properties;

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 219
    sget-boolean v18, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v18, :cond_124

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "found "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " in $java.home/jaxp.properties"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 221
    :cond_124
    if-eqz v8, :cond_173

    .line 222
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_12c} :catch_169

    move-result-object v17

    .line 223
    .restart local v17       #xpf:Ljavax/xml/xpath/XPathFactory;
    if-eqz v17, :cond_173

    move-object/from16 v18, v17

    .line 224
    goto/16 :goto_7e

    .line 184
    .end local v4           #configFile:Ljava/lang/String;
    .end local v8           #factoryClassName:Ljava/lang/String;
    .end local v9           #javah:Ljava/lang/String;
    .end local v17           #xpf:Ljavax/xml/xpath/XPathFactory;
    :catch_133
    move-exception v18

    move-object/from16 v16, v18

    .line 185
    .local v16, vme:Ljava/lang/VirtualMachineError;
    throw v16

    .line 188
    .end local v16           #vme:Ljava/lang/VirtualMachineError;
    :catch_137
    move-exception v18

    move-object/from16 v15, v18

    .line 189
    .local v15, td:Ljava/lang/ThreadDeath;
    throw v15

    .line 191
    .end local v15           #td:Ljava/lang/ThreadDeath;
    :catch_13b
    move-exception v18

    move-object/from16 v14, v18

    .line 192
    .local v14, t:Ljava/lang/Throwable;
    sget-boolean v18, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v18, :cond_88

    .line 193
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "failed to look up system property \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_88

    .line 216
    .end local v14           #t:Ljava/lang/Throwable;
    .restart local v4       #configFile:Ljava/lang/String;
    .restart local v8       #factoryClassName:Ljava/lang/String;
    .restart local v9       #javah:Ljava/lang/String;
    :catchall_166
    move-exception v19

    :try_start_167
    monitor-exit v18
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_166

    :try_start_168
    throw v19
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_169} :catch_169

    .line 227
    :catch_169
    move-exception v18

    move-object/from16 v6, v18

    .line 228
    .local v6, ex:Ljava/lang/Exception;
    sget-boolean v18, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v18, :cond_173

    .line 229
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_173
    invoke-direct/range {p0 .. p0}, Ljavax/xml/xpath/XPathFactoryFinder;->createServiceFileIterator()Ljava/util/Iterator;

    move-result-object v13

    .line 235
    .local v13, sitr:Ljava/util/Iterator;
    :cond_177
    :goto_177
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1de

    .line 236
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/URL;

    .line 237
    .local v12, resource:Ljava/net/URL;
    sget-boolean v18, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v18, :cond_1a0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "looking into "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 239
    :cond_1a0
    :try_start_1a0
    invoke-virtual {v12}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v18

    invoke-static {v12}, Ljavax/xml/xpath/SecuritySupport;->getURLInputStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/xpath/XPathFactoryFinder;->loadFromServicesFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/xpath/XPathFactory;
    :try_end_1b3
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_1b3} :catch_1ba

    move-result-object v17

    .line 240
    .restart local v17       #xpf:Ljavax/xml/xpath/XPathFactory;
    if-eqz v17, :cond_177

    move-object/from16 v18, v17

    goto/16 :goto_7e

    .line 241
    .end local v17           #xpf:Ljavax/xml/xpath/XPathFactory;
    :catch_1ba
    move-exception v18

    move-object/from16 v5, v18

    .line 242
    .local v5, e:Ljava/io/IOException;
    sget-boolean v18, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v18, :cond_177

    .line 243
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "failed to read "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_177

    .line 250
    .end local v5           #e:Ljava/io/IOException;
    .end local v12           #resource:Ljava/net/URL;
    :cond_1de
    const-string v18, "http://java.sun.com/jaxp/xpath/dom"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1ff

    .line 251
    sget-boolean v18, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v18, :cond_1f3

    const-string v18, "attempting to use the platform default W3C DOM XPath lib"

    invoke-static/range {v18 .. v18}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 252
    :cond_1f3
    const-string v18, "org.apache.xpath.jaxp.XPathFactoryImpl"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v18

    goto/16 :goto_7e

    .line 255
    :cond_1ff
    sget-boolean v18, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v18, :cond_208

    const-string v18, "all things were tried, but none was found. bailing out."

    invoke-static/range {v18 .. v18}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 256
    :cond_208
    const/16 v18, 0x0

    goto/16 :goto_7e
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    return-object v0
.end method

.method private createServiceFileIterator()Ljava/util/Iterator;
    .registers 4

    .prologue
    .line 383
    iget-object v1, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    if-nez v1, :cond_a

    .line 384
    new-instance v1, Ljavax/xml/xpath/XPathFactoryFinder$1;

    invoke-direct {v1, p0}, Ljavax/xml/xpath/XPathFactoryFinder$1;-><init>(Ljavax/xml/xpath/XPathFactoryFinder;)V

    .line 418
    :goto_9
    return-object v1

    .line 394
    :cond_a
    :try_start_a
    iget-object v1, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    sget-object v2, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-static {v1, v2}, Ljavax/xml/xpath/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 395
    .local v0, e:Ljava/util/Enumeration;
    sget-boolean v1, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file was found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 400
    :cond_3a
    new-instance v1, Ljavax/xml/xpath/XPathFactoryFinder$2;

    invoke-direct {v1, p0, v0}, Ljavax/xml/xpath/XPathFactoryFinder$2;-><init>(Ljavax/xml/xpath/XPathFactoryFinder;Ljava/util/Enumeration;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_3f} :catch_40

    goto :goto_9

    .line 413
    .end local v0           #e:Ljava/util/Enumeration;
    :catch_40
    move-exception v1

    move-object v0, v1

    .line 414
    .local v0, e:Ljava/io/IOException;
    sget-boolean v1, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v1, :cond_61

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to enumerate resources "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 418
    :cond_61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_9
.end method

.method private debugDisplayClassLoader()V
    .registers 6

    .prologue
    const-string v4, ") for search"

    .line 108
    :try_start_2
    iget-object v2, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Ljavax/xml/xpath/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-ne v2, v3, :cond_30

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "using thread context class loader ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for search"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/VirtualMachineError; {:try_start_2 .. :try_end_28} :catch_29
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_28} :catch_2c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_28} :catch_2f

    .line 131
    :goto_28
    return-void

    .line 114
    :catch_29
    move-exception v2

    move-object v1, v2

    .line 115
    .local v1, vme:Ljava/lang/VirtualMachineError;
    throw v1

    .line 118
    .end local v1           #vme:Ljava/lang/VirtualMachineError;
    :catch_2c
    move-exception v2

    move-object v0, v2

    .line 119
    .local v0, td:Ljava/lang/ThreadDeath;
    throw v0

    .line 121
    .end local v0           #td:Ljava/lang/ThreadDeath;
    :catch_2f
    move-exception v2

    .line 125
    :cond_30
    iget-object v2, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-ne v2, v3, :cond_57

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "using system class loader ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for search"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    goto :goto_28

    .line 130
    :cond_57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "using class loader ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for search"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    goto :goto_28
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 78
    sget-boolean v0, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v0, :cond_1c

    .line 79
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JAXP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    :cond_1c
    return-void
.end method

.method private loadFromServicesFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/xpath/XPathFactory;
    .registers 14
    .parameter "uri"
    .parameter "resourceName"
    .parameter "in"

    .prologue
    const/16 v9, 0x50

    .line 319
    sget-boolean v7, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v7, :cond_1c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 323
    :cond_1c
    :try_start_1c
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, p3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v8, 0x50

    invoke-direct {v4, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_2a} :catch_59

    .line 328
    .local v4, rd:Ljava/io/BufferedReader;
    :goto_2a
    const/4 v1, 0x0

    .line 329
    .local v1, factoryClassName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 333
    .local v5, resultFactory:Ljavax/xml/xpath/XPathFactory;
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_66

    move-result-object v1

    .line 338
    if-eqz v1, :cond_55

    .line 340
    const/16 v7, 0x23

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 341
    .local v3, hashIndex:I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_40

    .line 342
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 346
    :cond_40
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2c

    .line 355
    :try_start_4a
    invoke-virtual {p0, v1}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v2

    .line 356
    .local v2, foundFactory:Ljavax/xml/xpath/XPathFactory;
    invoke-virtual {v2, p1}, Ljavax/xml/xpath/XPathFactory;->isObjectModelSupported(Ljava/lang/String;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_51} :catch_6a

    move-result v7

    if-eqz v7, :cond_2c

    .line 357
    move-object v5, v2

    .line 370
    .end local v2           #foundFactory:Ljavax/xml/xpath/XPathFactory;
    .end local v3           #hashIndex:I
    :cond_55
    :goto_55
    :try_start_55
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_68

    .line 375
    :goto_58
    return-object v5

    .line 324
    .end local v1           #factoryClassName:Ljava/lang/String;
    .end local v4           #rd:Ljava/io/BufferedReader;
    .end local v5           #resultFactory:Ljavax/xml/xpath/XPathFactory;
    :catch_59
    move-exception v7

    move-object v0, v7

    .line 325
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .restart local v4       #rd:Ljava/io/BufferedReader;
    goto :goto_2a

    .line 334
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #factoryClassName:Ljava/lang/String;
    .restart local v5       #resultFactory:Ljavax/xml/xpath/XPathFactory;
    :catch_66
    move-exception v6

    .line 336
    .local v6, x:Ljava/io/IOException;
    goto :goto_55

    .line 373
    .end local v6           #x:Ljava/io/IOException;
    :catch_68
    move-exception v7

    goto :goto_58

    .line 361
    .restart local v3       #hashIndex:I
    :catch_6a
    move-exception v7

    goto :goto_2c
.end method

.method private static which(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .parameter "clazz"

    .prologue
    .line 429
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/xml/xpath/XPathFactoryFinder;->which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .registers 7
    .parameter "classname"
    .parameter "loader"

    .prologue
    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, classnameAsResource:Ljava/lang/String;
    if-nez p1, :cond_21

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 447
    :cond_21
    invoke-static {p1, v0}, Ljavax/xml/xpath/SecuritySupport;->getResourceAsURL(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 448
    .local v1, it:Ljava/net/URL;
    if-eqz v1, :cond_2c

    .line 449
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    :goto_2b
    return-object v2

    :cond_2c
    const/4 v2, 0x0

    goto :goto_2b
.end method


# virtual methods
.method createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    .registers 9
    .parameter "className"

    .prologue
    .line 270
    :try_start_0
    sget-boolean v5, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v5, :cond_1a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "instanciating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 272
    :cond_1a
    iget-object v5, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v5, :cond_4e

    .line 273
    iget-object v5, p0, Ljavax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 276
    .local v0, clazz:Ljava/lang/Class;
    :goto_24
    sget-boolean v5, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v5, :cond_42

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loaded it from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljavax/xml/xpath/XPathFactoryFinder;->which(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 277
    :cond_42
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 279
    .local v1, o:Ljava/lang/Object;
    instance-of v5, v1, Ljavax/xml/xpath/XPathFactory;

    if-eqz v5, :cond_53

    .line 280
    check-cast v1, Ljavax/xml/xpath/XPathFactory;

    .end local v1           #o:Ljava/lang/Object;
    move-object v5, v1

    .line 298
    .end local v0           #clazz:Ljava/lang/Class;
    :goto_4d
    return-object v5

    .line 275
    :cond_4e
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .restart local v0       #clazz:Ljava/lang/Class;
    goto :goto_24

    .line 282
    .restart local v1       #o:Ljava/lang/Object;
    :cond_53
    sget-boolean v5, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v5, :cond_77

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not assignable to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljavax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_77} :catch_79
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_77} :catch_7c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_77} :catch_7f

    .line 298
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v1           #o:Ljava/lang/Object;
    :cond_77
    :goto_77
    const/4 v5, 0x0

    goto :goto_4d

    .line 285
    :catch_79
    move-exception v5

    move-object v4, v5

    .line 286
    .local v4, vme:Ljava/lang/VirtualMachineError;
    throw v4

    .line 289
    .end local v4           #vme:Ljava/lang/VirtualMachineError;
    :catch_7c
    move-exception v5

    move-object v3, v5

    .line 290
    .local v3, td:Ljava/lang/ThreadDeath;
    throw v3

    .line 292
    .end local v3           #td:Ljava/lang/ThreadDeath;
    :catch_7f
    move-exception v5

    move-object v2, v5

    .line 293
    .local v2, t:Ljava/lang/Throwable;
    sget-boolean v5, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v5, :cond_77

    .line 294
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to instanciate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_77
.end method

.method public newFactory(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    .registers 5
    .parameter "uri"

    .prologue
    .line 146
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 147
    :cond_8
    invoke-direct {p0, p1}, Ljavax/xml/xpath/XPathFactoryFinder;->_newFactory(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    .line 148
    .local v0, f:Ljavax/xml/xpath/XPathFactory;
    sget-boolean v1, Ljavax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v1, :cond_3a

    .line 149
    if-eqz v0, :cond_3b

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "factory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 155
    :cond_3a
    :goto_3a
    return-object v0

    .line 152
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to find a factory for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    goto :goto_3a
.end method
