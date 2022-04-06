.class Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;
.super Ljava/lang/Object;
.source "PoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/PoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErodingFactor"
.end annotation


# instance fields
.field private final factor:F

.field private volatile transient idleHighWaterMark:I

.field private volatile transient nextShrink:J


# direct methods
.method public constructor <init>(F)V
    .locals 4
    .param p1, "factor"    # F

    .prologue
    .line 1353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1354
    iput p1, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;->factor:F

    .line 1355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0x495bba00    # 900000.0f

    mul-float/2addr v2, p1

    float-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;->nextShrink:J

    .line 1361
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;->idleHighWaterMark:I

    .line 1362
    return-void
.end method


# virtual methods
.method public getNextShrink()J
    .locals 2

    .prologue
    .line 1387
    iget-wide v0, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;->nextShrink:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErodingFactor{factor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;->factor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idleHighWaterMark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;->idleHighWaterMark:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(JI)V
    .locals 7
    .param p1, "now"    # J
    .param p3, "numIdle"    # I

    .prologue
    .line 1373
    const/4 v3, 0x0

    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1374
    .local v0, "idle":I
    iget v3, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;->idleHighWaterMark:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;->idleHighWaterMark:I

    .line 1375
    const/high16 v1, 0x41700000    # 15.0f

    .line 1376
    .local v1, "maxInterval":F
    const/high16 v3, 0x41700000    # 15.0f

    const/high16 v4, -0x3ea00000    # -14.0f

    iget v5, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;->idleHighWaterMark:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v0

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 1378
    .local v2, "minutes":F
    const v3, 0x476a6000    # 60000.0f

    mul-float/2addr v3, v2

    iget v4, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;->factor:F

    mul-float/2addr v3, v4

    float-to-long v4, v3

    add-long/2addr v4, p1

    iput-wide v4, p0, Lorg/apache/commons/pool2/PoolUtils$ErodingFactor;->nextShrink:J

    .line 1379
    return-void
.end method
