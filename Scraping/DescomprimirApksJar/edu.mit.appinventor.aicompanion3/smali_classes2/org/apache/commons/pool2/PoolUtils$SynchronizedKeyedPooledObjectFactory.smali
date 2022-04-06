.class Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;
.super Ljava/lang/Object;
.source "PoolUtils.java"

# interfaces
.implements Lorg/apache/commons/pool2/KeyedPooledObjectFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/PoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedKeyedPooledObjectFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool2/KeyedPooledObjectFactory",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final keyedFactory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/KeyedPooledObjectFactory",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method constructor <init>(Lorg/apache/commons/pool2/KeyedPooledObjectFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/KeyedPooledObjectFactory",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1241
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory<TK;TV;>;"
    .local p1, "keyedFactory":Lorg/apache/commons/pool2/KeyedPooledObjectFactory;, "Lorg/apache/commons/pool2/KeyedPooledObjectFactory<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1225
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 1242
    if-nez p1, :cond_0

    .line 1243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyedFactory must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1246
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->keyedFactory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    .line 1247
    return-void
.end method


# virtual methods
.method public activateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1293
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1295
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->keyedFactory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/pool2/KeyedPooledObjectFactory;->activateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1297
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1299
    return-void

    .line 1297
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public destroyObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1267
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1269
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->keyedFactory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/pool2/KeyedPooledObjectFactory;->destroyObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1271
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1273
    return-void

    .line 1271
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public makeObject(Ljava/lang/Object;)Lorg/apache/commons/pool2/PooledObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1254
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1256
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->keyedFactory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/KeyedPooledObjectFactory;->makeObject(Ljava/lang/Object;)Lorg/apache/commons/pool2/PooledObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1258
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public passivateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1306
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1308
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->keyedFactory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/pool2/KeyedPooledObjectFactory;->passivateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1310
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1312
    return-void

    .line 1310
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1319
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1320
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SynchronizedKeyedPoolableObjectFactory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    const-string v1, "{keyedFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->keyedFactory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1322
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1280
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1282
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->keyedFactory:Lorg/apache/commons/pool2/KeyedPooledObjectFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/pool2/KeyedPooledObjectFactory;->validateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1284
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedKeyedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method
