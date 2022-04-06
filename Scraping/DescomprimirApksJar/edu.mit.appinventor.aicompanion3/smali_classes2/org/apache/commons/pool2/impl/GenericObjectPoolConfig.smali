.class public Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
.super Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;
.source "GenericObjectPoolConfig.java"


# static fields
.field public static final DEFAULT_MAX_IDLE:I = 0x8

.field public static final DEFAULT_MAX_TOTAL:I = 0x8

.field public static final DEFAULT_MIN_IDLE:I


# instance fields
.field private maxIdle:I

.field private maxTotal:I

.field private minIdle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;-><init>()V

    .line 52
    iput v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->maxTotal:I

    .line 54
    iput v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->maxIdle:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->minIdle:I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->clone()Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    .locals 2

    .prologue
    .line 141
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public getMaxIdle()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->maxIdle:I

    return v0
.end method

.method public getMaxTotal()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->maxTotal:I

    return v0
.end method

.method public getMinIdle()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->minIdle:I

    return v0
.end method

.method public setMaxIdle(I)V
    .locals 0
    .param p1, "maxIdle"    # I

    .prologue
    .line 108
    iput p1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->maxIdle:I

    .line 109
    return-void
.end method

.method public setMaxTotal(I)V
    .locals 0
    .param p1, "maxTotal"    # I

    .prologue
    .line 81
    iput p1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->maxTotal:I

    .line 82
    return-void
.end method

.method public setMinIdle(I)V
    .locals 0
    .param p1, "minIdle"    # I

    .prologue
    .line 135
    iput p1, p0, Lorg/apache/commons/pool2/impl/GenericObjectPoolConfig;->minIdle:I

    .line 136
    return-void
.end method
