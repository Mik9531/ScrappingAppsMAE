.class Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;
.super Ljava/util/TimerTask;
.source "PoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/PoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyedObjectPoolMinIdleTimerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TimerTask;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final minIdle:I


# direct methods
.method constructor <init>(Lorg/apache/commons/pool2/KeyedObjectPool;Ljava/lang/Object;I)V
    .locals 2
    .param p3, "minIdle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/KeyedObjectPool",
            "<TK;TV;>;TK;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 661
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;, "Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask<TK;TV;>;"
    .local p1, "keyedPool":Lorg/apache/commons/pool2/KeyedObjectPool;, "Lorg/apache/commons/pool2/KeyedObjectPool<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 662
    if-nez p1, :cond_0

    .line 663
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyedPool must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    .line 667
    iput-object p2, p0, Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->key:Ljava/lang/Object;

    .line 668
    iput p3, p0, Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->minIdle:I

    .line 669
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 676
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;, "Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask<TK;TV;>;"
    const/4 v1, 0x0

    .line 678
    .local v1, "success":Z
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    iget-object v3, p0, Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->key:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lorg/apache/commons/pool2/KeyedObjectPool;->getNumIdle(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->minIdle:I

    if-ge v2, v3, :cond_0

    .line 679
    iget-object v2, p0, Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    iget-object v3, p0, Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->key:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lorg/apache/commons/pool2/KeyedObjectPool;->addObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    :cond_0
    const/4 v1, 0x1

    .line 688
    if-nez v1, :cond_1

    .line 689
    invoke-virtual {p0}, Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->cancel()Z

    .line 692
    :cond_1
    :goto_0
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->cancel()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    if-nez v1, :cond_1

    .line 689
    invoke-virtual {p0}, Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->cancel()Z

    goto :goto_0

    .line 688
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    .line 689
    invoke-virtual {p0}, Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->cancel()Z

    :cond_2
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 699
    .local p0, "this":Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;, "Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 700
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "KeyedObjectPoolMinIdleTimerTask"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    const-string v1, "{minIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->minIdle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 702
    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 703
    const-string v1, ", keyedPool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/pool2/PoolUtils$KeyedObjectPoolMinIdleTimerTask;->keyedPool:Lorg/apache/commons/pool2/KeyedObjectPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 704
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
