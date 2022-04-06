.class Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;
.super Ljava/lang/Object;
.source "GenericKeyedObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObjectDeque"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final allObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper",
            "<TS;>;",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private final createCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque",
            "<",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private final numInterested:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;Z)V
    .locals 4
    .param p2, "fairness"    # Z

    .prologue
    .line 1459
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TS;>;"
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->this$0:Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1437
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->createCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1443
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->allObjects:Ljava/util/Map;

    .line 1452
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->numInterested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1460
    new-instance v0, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    invoke-direct {v0, p2}, Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    .line 1461
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;)Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;

    .prologue
    .line 1429
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    return-object v0
.end method


# virtual methods
.method public getAllObjects()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper",
            "<TS;>;",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 1497
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->allObjects:Ljava/util/Map;

    return-object v0
.end method

.method public getCreateCount()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 1479
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->createCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public getIdleObjects()Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool2/impl/LinkedBlockingDeque",
            "<",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 1469
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->idleObjects:Lorg/apache/commons/pool2/impl/LinkedBlockingDeque;

    return-object v0
.end method

.method public getNumInterested()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 1488
    .local p0, "this":Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;, "Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool<TK;TT;>.ObjectDeque<TS;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/GenericKeyedObjectPool$ObjectDeque;->numInterested:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method
