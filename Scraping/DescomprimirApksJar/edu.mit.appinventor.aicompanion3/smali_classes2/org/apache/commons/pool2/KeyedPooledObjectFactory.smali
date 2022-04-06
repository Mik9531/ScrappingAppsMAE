.class public interface abstract Lorg/apache/commons/pool2/KeyedPooledObjectFactory;
.super Ljava/lang/Object;
.source "KeyedPooledObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract activateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
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
.end method

.method public abstract destroyObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
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
.end method

.method public abstract makeObject(Ljava/lang/Object;)Lorg/apache/commons/pool2/PooledObject;
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
.end method

.method public abstract passivateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)V
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
.end method

.method public abstract validateObject(Ljava/lang/Object;Lorg/apache/commons/pool2/PooledObject;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TV;>;)Z"
        }
    .end annotation
.end method
