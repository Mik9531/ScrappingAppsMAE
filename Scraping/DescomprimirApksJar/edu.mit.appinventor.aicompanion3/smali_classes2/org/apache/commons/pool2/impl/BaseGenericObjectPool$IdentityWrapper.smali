.class Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;
.super Ljava/lang/Object;
.source "BaseGenericObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdentityWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1182
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1183
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;->instance:Ljava/lang/Object;

    .line 1184
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 1194
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper<TT;>;"
    check-cast p1, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v0, p1, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;->instance:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;->instance:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1201
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1188
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;->instance:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
