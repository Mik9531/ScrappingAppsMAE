.class public abstract Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;
.super Ljava/lang/Object;
.source "BaseGenericObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$IdentityWrapper;,
        Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;,
        Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;,
        Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final MEAN_TIMING_STATS_CACHE_SIZE:I = 0x64


# instance fields
.field private final activeTimes:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool",
            "<TT;>.StatsStore;"
        }
    .end annotation
.end field

.field private volatile blockWhenExhausted:Z

.field private final borrowedCount:Ljava/util/concurrent/atomic/AtomicLong;

.field final closeLock:Ljava/lang/Object;

.field volatile closed:Z

.field final createdCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final creationStackTrace:Ljava/lang/String;

.field final destroyedByBorrowValidationCount:Ljava/util/concurrent/atomic/AtomicLong;

.field final destroyedByEvictorCount:Ljava/util/concurrent/atomic/AtomicLong;

.field final destroyedCount:Ljava/util/concurrent/atomic/AtomicLong;

.field evictionIterator:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool",
            "<TT;>.EvictionIterator;"
        }
    .end annotation
.end field

.field final evictionLock:Ljava/lang/Object;

.field private volatile evictionPolicy:Lorg/apache/commons/pool2/impl/EvictionPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/impl/EvictionPolicy",
            "<TT;>;"
        }
    .end annotation
.end field

.field private evictor:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool",
            "<TT;>.Evictor;"
        }
    .end annotation
.end field

.field private final factoryClassLoader:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final fairness:Z

.field private final idleTimes:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool",
            "<TT;>.StatsStore;"
        }
    .end annotation
.end field

.field private volatile lifo:Z

.field private final maxBorrowWaitTimeMillis:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile maxTotal:I

.field private volatile maxWaitMillis:J

.field private volatile minEvictableIdleTimeMillis:J

.field private volatile numTestsPerEvictionRun:I

.field private final oname:Ljavax/management/ObjectName;

.field private final returnedCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile softMinEvictableIdleTimeMillis:J

.field private volatile swallowedExceptionListener:Lorg/apache/commons/pool2/SwallowedExceptionListener;

.field private volatile testOnBorrow:Z

.field private volatile testOnCreate:Z

.field private volatile testOnReturn:Z

.field private volatile testWhileIdle:Z

.field private volatile timeBetweenEvictionRunsMillis:J

.field private final waitTimes:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool",
            "<TT;>.StatsStore;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "config"    # Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;
    .param p2, "jmxNameBase"    # Ljava/lang/String;
    .param p3, "jmxNamePrefix"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    const-wide/16 v10, -0x1

    const/16 v8, 0x64

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->maxTotal:I

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->blockWhenExhausted:Z

    .line 67
    iput-wide v10, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->maxWaitMillis:J

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->lifo:Z

    .line 71
    iput-boolean v6, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->testOnCreate:Z

    .line 73
    iput-boolean v6, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->testOnBorrow:Z

    .line 75
    iput-boolean v6, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->testOnReturn:Z

    .line 77
    iput-boolean v6, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->testWhileIdle:Z

    .line 79
    iput-wide v10, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->timeBetweenEvictionRunsMillis:J

    .line 81
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->numTestsPerEvictionRun:I

    .line 83
    const-wide/32 v2, 0x1b7740

    iput-wide v2, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->minEvictableIdleTimeMillis:J

    .line 85
    iput-wide v10, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->softMinEvictableIdleTimeMillis:J

    .line 91
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->closeLock:Ljava/lang/Object;

    .line 92
    iput-boolean v6, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->closed:Z

    .line 93
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->evictionLock:Ljava/lang/Object;

    .line 94
    iput-object v7, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->evictor:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;

    .line 95
    iput-object v7, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->evictionIterator:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;

    .line 108
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->borrowedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 109
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->returnedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 110
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->createdCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 111
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->destroyedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 112
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->destroyedByEvictorCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 113
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->destroyedByBorrowValidationCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 114
    new-instance v1, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;

    invoke-direct {v1, p0, v8}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;-><init>(Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;I)V

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->activeTimes:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;

    .line 115
    new-instance v1, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;

    invoke-direct {v1, p0, v8}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;-><init>(Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;I)V

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->idleTimes:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;

    .line 116
    new-instance v1, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;

    invoke-direct {v1, p0, v8}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;-><init>(Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;I)V

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->waitTimes:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;

    .line 117
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->maxBorrowWaitTimeMillis:Ljava/util/concurrent/atomic/AtomicLong;

    .line 118
    iput-object v7, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->swallowedExceptionListener:Lorg/apache/commons/pool2/SwallowedExceptionListener;

    .line 132
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->getJmxEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->jmxRegister(Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->oname:Ljavax/management/ObjectName;

    .line 139
    :goto_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-direct {p0, v1}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->creationStackTrace:Ljava/lang/String;

    .line 142
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 143
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_1

    .line 144
    iput-object v7, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->factoryClassLoader:Ljava/lang/ref/WeakReference;

    .line 149
    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->getFairness()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->fairness:Z

    .line 150
    return-void

    .line 135
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_0
    iput-object v7, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->oname:Ljavax/management/ObjectName;

    goto :goto_0

    .line 146
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->factoryClassLoader:Ljava/lang/ref/WeakReference;

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->factoryClassLoader:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 994
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 995
    .local v1, "w":Ljava/io/Writer;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 996
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 997
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private jmxRegister(Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;
    .locals 8
    .param p1, "config"    # Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;
    .param p2, "jmxNameBase"    # Ljava/lang/String;
    .param p3, "jmxNamePrefix"    # Ljava/lang/String;

    .prologue
    .line 939
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    const/4 v5, 0x0

    .line 940
    .local v5, "objectName":Ljavax/management/ObjectName;
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v3

    .line 941
    .local v3, "mbs":Ljavax/management/MBeanServer;
    const/4 v2, 0x1

    .line 942
    .local v2, "i":I
    const/4 v6, 0x0

    .line 943
    .local v6, "registered":Z
    invoke-virtual {p1}, Lorg/apache/commons/pool2/impl/BaseObjectPoolConfig;->getJmxNameBase()Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "base":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 945
    move-object v0, p2

    .line 947
    :cond_0
    :goto_0
    if-nez v6, :cond_3

    .line 952
    const/4 v7, 0x1

    if-ne v2, v7, :cond_1

    .line 953
    :try_start_0
    new-instance v4, Ljavax/management/ObjectName;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    .line 957
    .local v4, "objName":Ljavax/management/ObjectName;
    :goto_1
    invoke-interface {v3, p0, v4}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    .line 958
    move-object v5, v4

    .line 959
    const/4 v6, 0x1

    goto :goto_0

    .line 955
    .end local v4    # "objName":Ljavax/management/ObjectName;
    :cond_1
    new-instance v4, Ljavax/management/ObjectName;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/management/MalformedObjectNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/management/InstanceAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/management/MBeanRegistrationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/management/NotCompliantMBeanException; {:try_start_0 .. :try_end_0} :catch_3

    .restart local v4    # "objName":Ljavax/management/ObjectName;
    goto :goto_1

    .line 960
    .end local v4    # "objName":Ljavax/management/ObjectName;
    :catch_0
    move-exception v1

    .line 961
    .local v1, "e":Ljavax/management/MalformedObjectNameException;
    const-string v7, "pool"

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 962
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 964
    const/4 v6, 0x1

    goto :goto_0

    .line 967
    :cond_2
    const-string p3, "pool"

    .line 969
    move-object v0, p2

    goto :goto_0

    .line 971
    .end local v1    # "e":Ljavax/management/MalformedObjectNameException;
    :catch_1
    move-exception v1

    .line 973
    .local v1, "e":Ljavax/management/InstanceAlreadyExistsException;
    add-int/lit8 v2, v2, 0x1

    .line 980
    goto :goto_0

    .line 974
    .end local v1    # "e":Ljavax/management/InstanceAlreadyExistsException;
    :catch_2
    move-exception v1

    .line 976
    .local v1, "e":Ljavax/management/MBeanRegistrationException;
    const/4 v6, 0x1

    .line 980
    goto :goto_0

    .line 977
    .end local v1    # "e":Ljavax/management/MBeanRegistrationException;
    :catch_3
    move-exception v1

    .line 979
    .local v1, "e":Ljavax/management/NotCompliantMBeanException;
    const/4 v6, 0x1

    .line 980
    goto :goto_0

    .line 982
    .end local v1    # "e":Ljavax/management/NotCompliantMBeanException;
    :cond_3
    return-object v5
.end method


# virtual methods
.method final assertOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 671
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Pool not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_0
    return-void
.end method

.method public abstract close()V
.end method

.method abstract ensureMinIdle()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract evict()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final getBlockWhenExhausted()Z
    .locals 1

    .prologue
    .line 194
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->blockWhenExhausted:Z

    return v0
.end method

.method public final getBorrowedCount()J
    .locals 2

    .prologue
    .line 738
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->borrowedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCreatedCount()J
    .locals 2

    .prologue
    .line 757
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->createdCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCreationStackTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 729
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->creationStackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public final getDestroyedByBorrowValidationCount()J
    .locals 2

    .prologue
    .line 785
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->destroyedByBorrowValidationCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDestroyedByEvictorCount()J
    .locals 2

    .prologue
    .line 775
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->destroyedByEvictorCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDestroyedCount()J
    .locals 2

    .prologue
    .line 766
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->destroyedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getEvictionPolicy()Lorg/apache/commons/pool2/impl/EvictionPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/pool2/impl/EvictionPolicy",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->evictionPolicy:Lorg/apache/commons/pool2/impl/EvictionPolicy;

    return-object v0
.end method

.method public final getEvictionPolicyClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->evictionPolicy:Lorg/apache/commons/pool2/impl/EvictionPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFairness()Z
    .locals 1

    .prologue
    .line 271
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->fairness:Z

    return v0
.end method

.method public final getJmxName()Ljavax/management/ObjectName;
    .locals 1

    .prologue
    .line 717
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->oname:Ljavax/management/ObjectName;

    return-object v0
.end method

.method public final getLifo()Z
    .locals 1

    .prologue
    .line 260
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->lifo:Z

    return v0
.end method

.method public final getMaxBorrowWaitTimeMillis()J
    .locals 2

    .prologue
    .line 823
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->maxBorrowWaitTimeMillis:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMaxTotal()I
    .locals 1

    .prologue
    .line 165
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->maxTotal:I

    return v0
.end method

.method public final getMaxWaitMillis()J
    .locals 2

    .prologue
    .line 226
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->maxWaitMillis:J

    return-wide v0
.end method

.method public final getMeanActiveTimeMillis()J
    .locals 2

    .prologue
    .line 795
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->activeTimes:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->getMean()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMeanBorrowWaitTimeMillis()J
    .locals 2

    .prologue
    .line 815
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->waitTimes:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->getMean()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMeanIdleTimeMillis()J
    .locals 2

    .prologue
    .line 805
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->idleTimes:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;

    invoke-virtual {v0}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->getMean()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMinEvictableIdleTimeMillis()J
    .locals 2

    .prologue
    .line 513
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->minEvictableIdleTimeMillis:J

    return-wide v0
.end method

.method public abstract getNumIdle()I
.end method

.method public final getNumTestsPerEvictionRun()I
    .locals 1

    .prologue
    .line 477
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->numTestsPerEvictionRun:I

    return v0
.end method

.method public final getReturnedCount()J
    .locals 2

    .prologue
    .line 748
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->returnedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSoftMinEvictableIdleTimeMillis()J
    .locals 2

    .prologue
    .line 550
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->softMinEvictableIdleTimeMillis:J

    return-wide v0
.end method

.method public final getSwallowedExceptionListener()Lorg/apache/commons/pool2/SwallowedExceptionListener;
    .locals 1

    .prologue
    .line 839
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->swallowedExceptionListener:Lorg/apache/commons/pool2/SwallowedExceptionListener;

    return-object v0
.end method

.method public final getTestOnBorrow()Z
    .locals 1

    .prologue
    .line 341
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->testOnBorrow:Z

    return v0
.end method

.method public final getTestOnCreate()Z
    .locals 1

    .prologue
    .line 305
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->testOnCreate:Z

    return v0
.end method

.method public final getTestOnReturn()Z
    .locals 1

    .prologue
    .line 375
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->testOnReturn:Z

    return v0
.end method

.method public final getTestWhileIdle()Z
    .locals 1

    .prologue
    .line 409
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->testWhileIdle:Z

    return v0
.end method

.method public final getTimeBetweenEvictionRunsMillis()J
    .locals 2

    .prologue
    .line 442
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->timeBetweenEvictionRunsMillis:J

    return-wide v0
.end method

.method public final isClosed()Z
    .locals 1

    .prologue
    .line 641
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->closed:Z

    return v0
.end method

.method final jmxUnregister()V
    .locals 3

    .prologue
    .line 912
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->oname:Ljavax/management/ObjectName;

    if-eqz v1, :cond_0

    .line 914
    :try_start_0
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->oname:Ljavax/management/ObjectName;

    invoke-interface {v1, v2}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljavax/management/MBeanRegistrationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/management/InstanceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, "e":Ljavax/management/MBeanRegistrationException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->swallowException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 918
    .end local v0    # "e":Ljavax/management/MBeanRegistrationException;
    :catch_1
    move-exception v0

    .line 919
    .local v0, "e":Ljavax/management/InstanceNotFoundException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->swallowException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final setBlockWhenExhausted(Z)V
    .locals 0
    .param p1, "blockWhenExhausted"    # Z

    .prologue
    .line 209
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->blockWhenExhausted:Z

    .line 210
    return-void
.end method

.method public final setEvictionPolicyClassName(Ljava/lang/String;)V
    .locals 8
    .param p1, "evictionPolicyClassName"    # Ljava/lang/String;

    .prologue
    .line 603
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    const/4 v5, 0x1

    .line 604
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 603
    invoke-static {p1, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 608
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 609
    .local v4, "policy":Ljava/lang/Object;
    instance-of v5, v4, Lorg/apache/commons/pool2/impl/EvictionPolicy;

    if-eqz v5, :cond_0

    .line 611
    move-object v0, v4

    check-cast v0, Lorg/apache/commons/pool2/impl/EvictionPolicy;

    move-object v3, v0

    .line 612
    .local v3, "evicPolicy":Lorg/apache/commons/pool2/impl/EvictionPolicy;, "Lorg/apache/commons/pool2/impl/EvictionPolicy<TT;>;"
    iput-object v3, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->evictionPolicy:Lorg/apache/commons/pool2/impl/EvictionPolicy;

    .line 627
    .end local v3    # "evicPolicy":Lorg/apache/commons/pool2/impl/EvictionPolicy;, "Lorg/apache/commons/pool2/impl/EvictionPolicy<TT;>;"
    :cond_0
    return-void

    .line 605
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "policy":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 606
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 614
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 615
    .restart local v2    # "e":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create EvictionPolicy instance of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 618
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v2

    .line 619
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create EvictionPolicy instance of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 622
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v2

    .line 623
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create EvictionPolicy instance of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public final setLifo(Z)V
    .locals 0
    .param p1, "lifo"    # Z

    .prologue
    .line 287
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->lifo:Z

    .line 288
    return-void
.end method

.method public final setMaxTotal(I)V
    .locals 0
    .param p1, "maxTotal"    # I

    .prologue
    .line 180
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iput p1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->maxTotal:I

    .line 181
    return-void
.end method

.method public final setMaxWaitMillis(J)V
    .locals 1
    .param p1, "maxWaitMillis"    # J

    .prologue
    .line 244
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iput-wide p1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->maxWaitMillis:J

    .line 245
    return-void
.end method

.method public final setMinEvictableIdleTimeMillis(J)V
    .locals 1
    .param p1, "minEvictableIdleTimeMillis"    # J

    .prologue
    .line 531
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iput-wide p1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->minEvictableIdleTimeMillis:J

    .line 532
    return-void
.end method

.method public final setNumTestsPerEvictionRun(I)V
    .locals 0
    .param p1, "numTestsPerEvictionRun"    # I

    .prologue
    .line 497
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iput p1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->numTestsPerEvictionRun:I

    .line 498
    return-void
.end method

.method public final setSoftMinEvictableIdleTimeMillis(J)V
    .locals 1
    .param p1, "softMinEvictableIdleTimeMillis"    # J

    .prologue
    .line 572
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iput-wide p1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->softMinEvictableIdleTimeMillis:J

    .line 573
    return-void
.end method

.method public final setSwallowedExceptionListener(Lorg/apache/commons/pool2/SwallowedExceptionListener;)V
    .locals 0
    .param p1, "swallowedExceptionListener"    # Lorg/apache/commons/pool2/SwallowedExceptionListener;

    .prologue
    .line 851
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->swallowedExceptionListener:Lorg/apache/commons/pool2/SwallowedExceptionListener;

    .line 852
    return-void
.end method

.method public final setTestOnBorrow(Z)V
    .locals 0
    .param p1, "testOnBorrow"    # Z

    .prologue
    .line 359
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->testOnBorrow:Z

    .line 360
    return-void
.end method

.method public final setTestOnCreate(Z)V
    .locals 0
    .param p1, "testOnCreate"    # Z

    .prologue
    .line 324
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->testOnCreate:Z

    .line 325
    return-void
.end method

.method public final setTestOnReturn(Z)V
    .locals 0
    .param p1, "testOnReturn"    # Z

    .prologue
    .line 392
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->testOnReturn:Z

    .line 393
    return-void
.end method

.method public final setTestWhileIdle(Z)V
    .locals 0
    .param p1, "testWhileIdle"    # Z

    .prologue
    .line 429
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iput-boolean p1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->testWhileIdle:Z

    .line 430
    return-void
.end method

.method public final setTimeBetweenEvictionRunsMillis(J)V
    .locals 1
    .param p1, "timeBetweenEvictionRunsMillis"    # J

    .prologue
    .line 457
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iput-wide p1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->timeBetweenEvictionRunsMillis:J

    .line 458
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->startEvictor(J)V

    .line 459
    return-void
.end method

.method final startEvictor(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    .line 687
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-object v1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->evictionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 688
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->evictor:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->evictor:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;

    invoke-static {v0}, Lorg/apache/commons/pool2/impl/EvictionTimer;->cancel(Ljava/util/TimerTask;)V

    .line 690
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->evictor:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;

    .line 691
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->evictionIterator:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$EvictionIterator;

    .line 693
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 694
    new-instance v0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;

    invoke-direct {v0, p0}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;-><init>(Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;)V

    iput-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->evictor:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;

    .line 695
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->evictor:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;

    invoke-static {v0, p1, p2, p1, p2}, Lorg/apache/commons/pool2/impl/EvictionTimer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 697
    :cond_1
    monitor-exit v1

    .line 698
    return-void

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final swallowException(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 861
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->getSwallowedExceptionListener()Lorg/apache/commons/pool2/SwallowedExceptionListener;

    move-result-object v0

    .line 863
    .local v0, "listener":Lorg/apache/commons/pool2/SwallowedExceptionListener;
    if-nez v0, :cond_0

    .line 876
    :goto_0
    return-void

    .line 868
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lorg/apache/commons/pool2/SwallowedExceptionListener;->onSwallowException(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 869
    :catch_0
    move-exception v1

    .line 870
    .local v1, "oome":Ljava/lang/OutOfMemoryError;
    throw v1

    .line 871
    .end local v1    # "oome":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 872
    .local v2, "vme":Ljava/lang/VirtualMachineError;
    throw v2

    .line 873
    .end local v2    # "vme":Ljava/lang/VirtualMachineError;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method final updateStatsBorrow(Lorg/apache/commons/pool2/PooledObject;J)V
    .locals 6
    .param p2, "waitTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/pool2/PooledObject",
            "<TT;>;J)V"
        }
    .end annotation

    .prologue
    .line 884
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    .local p1, "p":Lorg/apache/commons/pool2/PooledObject;, "Lorg/apache/commons/pool2/PooledObject<TT;>;"
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->borrowedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 885
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->idleTimes:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;

    invoke-interface {p1}, Lorg/apache/commons/pool2/PooledObject;->getIdleTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->add(J)V

    .line 886
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->waitTimes:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;

    invoke-virtual {v2, p2, p3}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->add(J)V

    .line 891
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->maxBorrowWaitTimeMillis:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 892
    .local v0, "currentMax":J
    cmp-long v2, v0, p2

    if-ltz v2, :cond_1

    .line 896
    :goto_0
    return-void

    .line 895
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->maxBorrowWaitTimeMillis:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method final updateStatsReturn(J)V
    .locals 1
    .param p1, "activeTime"    # J

    .prologue
    .line 904
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->returnedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 905
    iget-object v0, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->activeTimes:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$StatsStore;->add(J)V

    .line 906
    return-void
.end method
