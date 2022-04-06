.class Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;
.super Ljava/lang/Object;
.source "BaseGenericObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsStore"
.end annotation


# instance fields
.field private index:I

.field private final size:I

.field final synthetic this$0:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;

.field private final values:[Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;I)V
    .locals 6
    .param p2, "size"    # I

    .prologue
    .line 1072
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>.StatsStore;"
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->this$0:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    iput p2, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->size:I

    .line 1074
    new-array v1, p2, [Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->values:[Ljava/util/concurrent/atomic/AtomicLong;

    .line 1075
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 1076
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->values:[Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, -0x1

    invoke-direct {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    aput-object v2, v1, v0

    .line 1075
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1078
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized add(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 1087
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>.StatsStore;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->values:[Ljava/util/concurrent/atomic/AtomicLong;

    iget v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->index:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1088
    iget v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->index:I

    .line 1089
    iget v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->index:I

    iget v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->size:I

    if-ne v0, v1, :cond_0

    .line 1090
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->index:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    :cond_0
    monitor-exit p0

    return-void

    .line 1087
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMean()J
    .locals 12

    .prologue
    .line 1100
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>.StatsStore;"
    const-wide/16 v2, 0x0

    .line 1101
    .local v2, "result":D
    const/4 v0, 0x0

    .line 1102
    .local v0, "counter":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->size:I

    if-ge v1, v6, :cond_1

    .line 1103
    iget-object v6, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->values:[Ljava/util/concurrent/atomic/AtomicLong;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 1104
    .local v4, "value":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 1105
    add-int/lit8 v0, v0, 0x1

    .line 1106
    add-int/lit8 v6, v0, -0x1

    int-to-double v6, v6

    int-to-double v8, v0

    div-double/2addr v6, v8

    mul-double/2addr v6, v2

    long-to-double v8, v4

    int-to-double v10, v0

    div-double/2addr v8, v10

    add-double v2, v6, v8

    .line 1102
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1110
    .end local v4    # "value":J
    :cond_1
    double-to-long v6, v2

    return-wide v6
.end method
