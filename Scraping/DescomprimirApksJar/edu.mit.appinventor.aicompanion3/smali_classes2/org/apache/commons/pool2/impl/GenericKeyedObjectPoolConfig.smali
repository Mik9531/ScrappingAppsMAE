.class public Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;
.super Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;
.source "GenericKeyedObjectPoolConfig.java"


# static fields
.field public static final DEFAULT_MAX_IDLE_PER_KEY:I = 0x8

.field public static final DEFAULT_MAX_TOTAL:I = -0x1

.field public static final DEFAULT_MAX_TOTAL_PER_KEY:I = 0x8

.field public static final DEFAULT_MIN_IDLE_PER_KEY:I


# instance fields
.field private maxIdlePerKey:I

.field private maxTotal:I

.field private maxTotalPerKey:I

.field private minIdlePerKey:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 69
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->minIdlePerKey:I

    .line 60
    iput v1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->maxIdlePerKey:I

    .line 62
    iput v1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->maxTotalPerKey:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->maxTotal:I

    .line 70
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
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->clone()Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;
    .locals 2

    .prologue
    .line 179
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public getMaxIdlePerKey()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->maxIdlePerKey:I

    return v0
.end method

.method public getMaxTotal()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->maxTotal:I

    return v0
.end method

.method public getMaxTotalPerKey()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->maxTotalPerKey:I

    return v0
.end method

.method public getMinIdlePerKey()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->minIdlePerKey:I

    return v0
.end method

.method public setMaxIdlePerKey(I)V
    .locals 0
    .param p1, "maxIdlePerKey"    # I

    .prologue
    .line 173
    iput p1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->maxIdlePerKey:I

    .line 174
    return-void
.end method

.method public setMaxTotal(I)V
    .locals 0
    .param p1, "maxTotal"    # I

    .prologue
    .line 95
    iput p1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->maxTotal:I

    .line 96
    return-void
.end method

.method public setMaxTotalPerKey(I)V
    .locals 0
    .param p1, "maxTotalPerKey"    # I

    .prologue
    .line 121
    iput p1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->maxTotalPerKey:I

    .line 122
    return-void
.end method

.method public setMinIdlePerKey(I)V
    .locals 0
    .param p1, "minIdlePerKey"    # I

    .prologue
    .line 147
    iput p1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPoolConfig;->minIdlePerKey:I

    .line 148
    return-void
.end method
