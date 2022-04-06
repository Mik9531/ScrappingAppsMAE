.class Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;
.super Ljava/lang/Object;
.source "BaseGenericObjectPool.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EvictionIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/apache/commons/pool2/PooledObject",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final idleObjectIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final idleObjects:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;


# direct methods
.method constructor <init>(Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;Ljava/util/Deque;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque",
            "<",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1126
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>.EvictionIterator;"
    .local p2, "idleObjects":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/commons/pool2/PooledObject<TT;>;>;"
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;->this$0:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    iput-object p2, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;->idleObjects:Ljava/util/Deque;

    .line 1129
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->getLifo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    invoke-interface {p2}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;->idleObjectIterator:Ljava/util/Iterator;

    .line 1134
    :goto_0
    return-void

    .line 1132
    :cond_0
    invoke-interface {p2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;->idleObjectIterator:Ljava/util/Iterator;

    goto :goto_0
.end method


# virtual methods
.method public getIdleObjects()Ljava/util/Deque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque",
            "<",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1141
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>.EvictionIterator;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;->idleObjects:Ljava/util/Deque;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1147
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>.EvictionIterator;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;->idleObjectIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1117
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>.EvictionIterator;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;->next()Lorg/apache/commons/pool2/PooledObject;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/commons/pool2/PooledObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1153
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>.EvictionIterator;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;->idleObjectIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/pool2/PooledObject;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1159
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>.EvictionIterator;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;->idleObjectIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1160
    return-void
.end method
