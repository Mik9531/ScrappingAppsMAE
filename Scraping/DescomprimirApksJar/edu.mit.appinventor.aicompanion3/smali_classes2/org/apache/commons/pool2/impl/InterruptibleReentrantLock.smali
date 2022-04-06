.class Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "InterruptibleReentrantLock.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "fairness"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    .line 44
    return-void
.end method


# virtual methods
.method public interruptWaiters(Ljava/util/concurrent/locks/Condition;)V
    .locals 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/commons/pool2/impl/InterruptibleReentrantLock;->getWaitingThreads(Ljava/util/concurrent/locks/Condition;)Ljava/util/Collection;

    move-result-object v1

    .line 53
    .local v1, "threads":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Thread;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 54
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 56
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method
