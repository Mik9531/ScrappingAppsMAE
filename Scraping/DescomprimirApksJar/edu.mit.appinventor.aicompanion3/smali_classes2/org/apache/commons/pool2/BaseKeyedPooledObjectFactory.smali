.class public abstract Lorg/apache/commons/pool2/BaseKeyedPooledObjectFactory;
.super Ljava/lang/Object;
.source "BaseKeyedPooledObjectFactory.java"

# interfaces
.implements Lorg/apache/commons/pool2/KeyedPooledObjectFactory;


# annotations
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lorg/apache/commons/pool2/BaseKeyedPooledObjectFactory;, "Lorg/apache/commons/pool2/BaseKeyedPooledObjectFactory<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
    .locals 0
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
    .line 103
    .local p0, "this":Lorg/apache/commons/pool2/BaseKeyedPooledObjectFactory;, "Lorg/apache/commons/pool2/BaseKeyedPooledObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TV;>;"
    return-void
.end method

.method public abstract create(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public destroyObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
    .locals 0
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
    .line 76
    .local p0, "this":Lorg/apache/commons/pool2/BaseKeyedPooledObjectFactory;, "Lorg/apache/commons/pool2/BaseKeyedPooledObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TV;>;"
    return-void
.end method

.method public makeObject(Ljava/lang/Object;)Lorg/apache/commons/pool2/PooledObject;
    .locals 1
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
    .line 62
    .local p0, "this":Lorg/apache/commons/pool2/BaseKeyedPooledObjectFactory;, "Lorg/apache/commons/pool2/BaseKeyedPooledObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool2/BaseKeyedPooledObjectFactory;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/BaseKeyedPooledObjectFactory;->wrap(Ljava/lang/Object;)Lorg/apache/commons/pool2/PooledObject;

    move-result-object v0

    return-object v0
.end method

.method public passivateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
    .locals 0
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
    .line 116
    .local p0, "this":Lorg/apache/commons/pool2/BaseKeyedPooledObjectFactory;, "Lorg/apache/commons/pool2/BaseKeyedPooledObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TV;>;"
    return-void
.end method

.method public validateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lorg/apache/commons/pool2/BaseKeyedPooledObjectFactory;, "Lorg/apache/commons/pool2/BaseKeyedPooledObjectFactory<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public abstract wrap(Ljava/lang/Object;)Lorg/apache/commons/pool2/PooledObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TV;>;"
        }
    .end annotation
.end method
