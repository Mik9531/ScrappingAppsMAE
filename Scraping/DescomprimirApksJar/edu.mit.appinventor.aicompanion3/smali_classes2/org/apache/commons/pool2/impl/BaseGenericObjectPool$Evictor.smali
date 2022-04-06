.class Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;
.super Ljava/util/TimerTask;
.source "BaseGenericObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Evictor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;


# direct methods
.method constructor <init>(Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;

    .prologue
    .line 1007
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>.Evictor;"
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;->this$0:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1019
    .local p0, "this":Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;, "Lorg/apache/commons/pool2/impl/BaseGenericObjectPool<TT;>.Evictor;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1021
    .local v3, "savedClassLoader":Ljava/lang/ClassLoader;
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;->this$0:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;

    invoke-static {v4}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->access$000(Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1023
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;->this$0:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;

    invoke-static {v4}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->access$000(Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 1024
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 1028
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;->cancel()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1054
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :goto_0
    return-void

    .line 1031
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1036
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_1
    :try_start_2
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;->this$0:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->evict()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1046
    :goto_1
    :try_start_3
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;->this$0:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;

    invoke-virtual {v4}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->ensureMinIdle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1052
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 1037
    :catch_0
    move-exception v1

    .line 1038
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;->this$0:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;

    invoke-virtual {v4, v1}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->swallowException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1052
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v4

    .line 1039
    :catch_1
    move-exception v2

    .line 1042
    .local v2, "oome":Ljava/lang/OutOfMemoryError;
    :try_start_5
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v4}, Ljava/lang/OutOfMemoryError;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1

    .line 1047
    .end local v2    # "oome":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v1

    .line 1048
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool$Evictor;->this$0:Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;

    invoke-virtual {v4, v1}, Lorg/apache/commons/pool2/impl/BaseGenericObjectPool;->swallowException(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method
