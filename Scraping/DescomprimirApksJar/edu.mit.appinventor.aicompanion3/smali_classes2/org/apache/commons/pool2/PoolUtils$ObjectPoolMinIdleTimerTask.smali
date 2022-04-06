.class Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask;
.super Ljava/util/TimerTask;
.source "PoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/PoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjectPoolMinIdleTimerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TimerTask;"
    }
.end annotation


# instance fields
.field private final minIdle:I

.field private final pool:Lorg/apache/commons/pool2/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/ObjectPool",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/pool2/ObjectPool;I)V
    .locals 2
    .param p2, "minIdle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/ObjectPool",
            "<TT;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask;, "Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask<TT;>;"
    .local p1, "pool":Lorg/apache/commons/pool2/ObjectPool;, "Lorg/apache/commons/pool2/ObjectPool<TT;>;"
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 589
    if-nez p1, :cond_0

    .line 590
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask;->pool:Lorg/apache/commons/pool2/ObjectPool;

    .line 593
    iput p2, p0, Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask;->minIdle:I

    .line 594
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 601
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask;, "Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask<TT;>;"
    const/4 v1, 0x0

    .line 603
    .local v1, "success":Z
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v2}, Lorg/apache/commons/pool2/ObjectPool;->getNumIdle()I

    move-result v2

    iget v3, p0, Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask;->minIdle:I

    if-ge v2, v3, :cond_0

    .line 604
    iget-object v2, p0, Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-interface {v2}, Lorg/apache/commons/pool2/ObjectPool;->addObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    :cond_0
    const/4 v1, 0x1

    .line 612
    if-nez v1, :cond_1

    .line 613
    invoke-virtual {p0}, Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask;->cancel()Z

    .line 616
    :cond_1
    :goto_0
    return-void

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask;->cancel()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    if-nez v1, :cond_1

    .line 613
    invoke-virtual {p0}, Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask;->cancel()Z

    goto :goto_0

    .line 612
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    .line 613
    invoke-virtual {p0}, Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask;->cancel()Z

    :cond_2
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 623
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask;, "Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ObjectPoolMinIdleTimerTask"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    const-string v1, "{minIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask;->minIdle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 626
    const-string v1, ", pool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/pool2/PoolUtils$ObjectPoolMinIdleTimerTask;->pool:Lorg/apache/commons/pool2/ObjectPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 627
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
