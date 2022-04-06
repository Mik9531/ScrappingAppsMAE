.class Lorg/apache/commons/pool2/impl/DefaultPooledObject$AbandonedObjectCreatedException;
.super Ljava/lang/Exception;
.source "DefaultPooledObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/impl/DefaultPooledObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AbandonedObjectCreatedException"
.end annotation


# static fields
.field private static final format:Ljava/text/SimpleDateFormat;

.field private static final serialVersionUID:J = 0x66ad6f515b8fb9b4L


# instance fields
.field private final _createdTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'Pooled object created\' yyyy-MM-dd HH:mm:ss Z \'by the following code has not been returned to the pool:\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/pool2/impl/DefaultPooledObject$AbandonedObjectCreatedException;->format:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject$AbandonedObjectCreatedException;->_createdTime:J

    .line 317
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 324
    sget-object v2, Lorg/apache/commons/pool2/impl/DefaultPooledObject$AbandonedObjectCreatedException;->format:Ljava/text/SimpleDateFormat;

    monitor-enter v2

    .line 325
    :try_start_0
    sget-object v1, Lorg/apache/commons/pool2/impl/DefaultPooledObject$AbandonedObjectCreatedException;->format:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObject$AbandonedObjectCreatedException;->_createdTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "msg":Ljava/lang/String;
    monitor-exit v2

    .line 327
    return-object v0

    .line 326
    .end local v0    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
