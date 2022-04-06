.class Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;
.super Ljava/lang/Object;
.source "PoolUtils.java"

# interfaces
.implements Lorg/apache/commons/pool2/PooledObjectFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/PoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedPooledObjectFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool2/PooledObjectFactory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final factory:Lorg/apache/commons/pool2/PooledObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/PooledObjectFactory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method constructor <init>(Lorg/apache/commons/pool2/PooledObjectFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObjectFactory",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1127
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory<TT;>;"
    .local p1, "factory":Lorg/apache/commons/pool2/PooledObjectFactory;, "Lorg/apache/commons/pool2/PooledObjectFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1112
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 1128
    if-nez p1, :cond_0

    .line 1129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factory must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1131
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    .line 1132
    return-void
.end method


# virtual methods
.method public activateObject(Lorg/apache/commons/pool2/PooledObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1178
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory<TT;>;"
    .local p1, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1180
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/PooledObjectFactory;->activateObject(Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1184
    return-void

    .line 1182
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public destroyObject(Lorg/apache/commons/pool2/PooledObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1152
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory<TT;>;"
    .local p1, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1154
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/PooledObjectFactory;->destroyObject(Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1156
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1158
    return-void

    .line 1156
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public makeObject()Lorg/apache/commons/pool2/PooledObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1139
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1141
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v0}, Lorg/apache/commons/pool2/PooledObjectFactory;->makeObject()Lorg/apache/commons/pool2/PooledObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1143
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public passivateObject(Lorg/apache/commons/pool2/PooledObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1191
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory<TT;>;"
    .local p1, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1193
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/PooledObjectFactory;->passivateObject(Lorg/apache/commons/pool2/PooledObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1197
    return-void

    .line 1195
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1204
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SynchronizedPoolableObjectFactory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    const-string v1, "{factory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1207
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validateObject(Lorg/apache/commons/pool2/PooledObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 1165
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;, "Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory<TT;>;"
    .local p1, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1167
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->factory:Lorg/apache/commons/pool2/PooledObjectFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/PooledObjectFactory;->validateObject(Lorg/apache/commons/pool2/PooledObject;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1169
    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/pool2/PoolUtils$SynchronizedPooledObjectFactory;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method
