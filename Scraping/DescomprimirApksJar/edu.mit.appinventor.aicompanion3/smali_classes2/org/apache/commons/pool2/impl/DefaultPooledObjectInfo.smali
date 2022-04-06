.class public Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;
.super Ljava/lang/Object;
.source "DefaultPooledObjectInfo.java"

# interfaces
.implements Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfoMBean;


# instance fields
.field private final pooledObject:Lorg/apache/commons/pool2/PooledObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/PooledObject",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool2/PooledObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObject",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "pooledObject":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;->pooledObject:Lorg/apache/commons/pool2/PooledObject;

    .line 42
    return-void
.end method


# virtual methods
.method public getBorrowedCount()J
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;->pooledObject:Lorg/apache/commons/pool2/PooledObject;

    instance-of v0, v0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;->pooledObject:Lorg/apache/commons/pool2/PooledObject;

    check-cast v0, Lorg/apache/commons/pool2/impl/DefaultPooledObject;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/DefaultPooledObject;->getBorrowedCount()J

    move-result-wide v0

    .line 100
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;->pooledObject:Lorg/apache/commons/pool2/PooledObject;

    invoke-interface {v0}, Lorg/apache/commons/pool2/PooledObject;->getCreateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCreateTimeFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;->pooledObject:Lorg/apache/commons/pool2/PooledObject;

    invoke-interface {v1}, Lorg/apache/commons/pool2/PooledObject;->getCreateTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLastBorrowTime()J
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;->pooledObject:Lorg/apache/commons/pool2/PooledObject;

    invoke-interface {v0}, Lorg/apache/commons/pool2/PooledObject;->getLastBorrowTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastBorrowTimeFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;->pooledObject:Lorg/apache/commons/pool2/PooledObject;

    invoke-interface {v1}, Lorg/apache/commons/pool2/PooledObject;->getLastBorrowTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLastBorrowTrace()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 69
    .local v0, "sw":Ljava/io/StringWriter;
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;->pooledObject:Lorg/apache/commons/pool2/PooledObject;

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-interface {v1, v2}, Lorg/apache/commons/pool2/PooledObject;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLastReturnTime()J
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;->pooledObject:Lorg/apache/commons/pool2/PooledObject;

    invoke-interface {v0}, Lorg/apache/commons/pool2/PooledObject;->getLastReturnTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastReturnTimeFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;->pooledObject:Lorg/apache/commons/pool2/PooledObject;

    invoke-interface {v1}, Lorg/apache/commons/pool2/PooledObject;->getLastReturnTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPooledObjectToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;->pooledObject:Lorg/apache/commons/pool2/PooledObject;

    invoke-interface {v0}, Lorg/apache/commons/pool2/PooledObject;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPooledObjectType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/DefaultPooledObjectInfo;->pooledObject:Lorg/apache/commons/pool2/PooledObject;

    invoke-interface {v0}, Lorg/apache/commons/pool2/PooledObject;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
