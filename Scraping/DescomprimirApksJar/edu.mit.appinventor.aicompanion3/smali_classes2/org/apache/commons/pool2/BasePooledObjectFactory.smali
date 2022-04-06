.class public abstract Lorg/apache/commons/pool2/BasePooledObjectFactory;
.super Ljava/lang/Object;
.source "BasePooledObjectFactory.java"

# interfaces
.implements Lorg/apache/commons/pool2/PooledObjectFactory;


# annotations
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lorg/apache/commons/pool2/BasePooledObjectFactory;, "Lorg/apache/commons/pool2/BasePooledObjectFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activateObject(Lorg/apache/commons/pool2/PooledObject;)V
    .locals 0
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
    .line 92
    .local p0, "this":Lorg/apache/commons/pool2/BasePooledObjectFactory;, "Lorg/apache/commons/pool2/BasePooledObjectFactory<TT;>;"
    .local p1, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    return-void
.end method

.method public abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public destroyObject(Lorg/apache/commons/pool2/PooledObject;)V
    .locals 0
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
    .line 71
    .local p0, "this":Lorg/apache/commons/pool2/BasePooledObjectFactory;, "Lorg/apache/commons/pool2/BasePooledObjectFactory<TT;>;"
    .local p1, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    return-void
.end method

.method public makeObject()Lorg/apache/commons/pool2/PooledObject;
    .locals 1
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
    .line 60
    .local p0, "this":Lorg/apache/commons/pool2/BasePooledObjectFactory;, "Lorg/apache/commons/pool2/BasePooledObjectFactory<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/BasePooledObjectFactory;->create()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/BasePooledObjectFactory;->wrap(Ljava/lang/Object;)Lorg/apache/commons/pool2/PooledObject;

    move-result-object v0

    return-object v0
.end method

.method public passivateObject(Lorg/apache/commons/pool2/PooledObject;)V
    .locals 0
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
    .line 102
    .local p0, "this":Lorg/apache/commons/pool2/BasePooledObjectFactory;, "Lorg/apache/commons/pool2/BasePooledObjectFactory<TT;>;"
    .local p1, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    return-void
.end method

.method public validateObject(Lorg/apache/commons/pool2/PooledObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lorg/apache/commons/pool2/BasePooledObjectFactory;, "Lorg/apache/commons/pool2/BasePooledObjectFactory<TT;>;"
    .local p1, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public abstract wrap(Ljava/lang/Object;)Lorg/apache/commons/pool2/PooledObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;"
        }
    .end annotation
.end method
