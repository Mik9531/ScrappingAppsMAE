.class Lorg/apache/commons/pool2/impl/EvictionTimer;
.super Ljava/lang/Object;
.source "EvictionTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedNewEvictionTimer;,
        Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedSetTccl;,
        Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedGetTccl;
    }
.end annotation


# static fields
.field private static _timer:Ljava/util/Timer;

.field private static _usageCount:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static declared-synchronized cancel(Ljava/util/TimerTask;)V
    .locals 2
    .param p0, "task"    # Ljava/util/TimerTask;

    .prologue
    .line 84
    const-class v1, Lorg/apache/commons/pool2/impl/EvictionTimer;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    .line 85
    sget v0, Lorg/apache/commons/pool2/impl/EvictionTimer;->_usageCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/apache/commons/pool2/impl/EvictionTimer;->_usageCount:I

    .line 86
    sget v0, Lorg/apache/commons/pool2/impl/EvictionTimer;->_usageCount:I

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lorg/apache/commons/pool2/impl/EvictionTimer;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/commons/pool2/impl/EvictionTimer;->_timer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit v1

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized schedule(Ljava/util/TimerTask;JJ)V
    .locals 9
    .param p0, "task"    # Ljava/util/TimerTask;
    .param p1, "delay"    # J
    .param p3, "period"    # J

    .prologue
    .line 62
    const-class v7, Lorg/apache/commons/pool2/impl/EvictionTimer;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lorg/apache/commons/pool2/impl/EvictionTimer;->_timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedGetTccl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedGetTccl;-><init>(Lorg/apache/commons/pool2/impl/EvictionTimer$1;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    .local v6, "ccl":Ljava/lang/ClassLoader;
    :try_start_1
    new-instance v0, Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedSetTccl;

    const-class v1, Lorg/apache/commons/pool2/impl/EvictionTimer;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedSetTccl;-><init>(Ljava/lang/ClassLoader;)V

    .line 68
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 70
    new-instance v0, Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedNewEvictionTimer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedNewEvictionTimer;-><init>(Lorg/apache/commons/pool2/impl/EvictionTimer$1;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    sput-object v0, Lorg/apache/commons/pool2/impl/EvictionTimer;->_timer:Ljava/util/Timer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    new-instance v0, Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedSetTccl;

    invoke-direct {v0, v6}, Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedSetTccl;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 75
    .end local v6    # "ccl":Ljava/lang/ClassLoader;
    :cond_0
    sget v0, Lorg/apache/commons/pool2/impl/EvictionTimer;->_usageCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/commons/pool2/impl/EvictionTimer;->_usageCount:I

    .line 76
    sget-object v0, Lorg/apache/commons/pool2/impl/EvictionTimer;->_timer:Ljava/util/Timer;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    monitor-exit v7

    return-void

    .line 72
    .restart local v6    # "ccl":Ljava/lang/ClassLoader;
    :catchall_0
    move-exception v0

    :try_start_3
    new-instance v1, Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedSetTccl;

    invoke-direct {v1, v6}, Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedSetTccl;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    .end local v6    # "ccl":Ljava/lang/ClassLoader;
    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0
.end method
