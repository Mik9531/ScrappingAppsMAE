.class public Lorg/webrtc/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ThreadUtils$BlockingOperation;,
        Lorg/webrtc/ThreadUtils$ThreadChecker;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 114
    new-instance v0, Lorg/webrtc/ThreadUtils$2;

    invoke-direct {v0, p0}, Lorg/webrtc/ThreadUtils$2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0}, Lorg/webrtc/ThreadUtils;->executeUninterruptibly(Lorg/webrtc/ThreadUtils$BlockingOperation;)V

    .line 120
    return-void
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;J)Z
    .locals 13
    .param p0, "barrier"    # Ljava/util/concurrent/CountDownLatch;
    .param p1, "timeoutMs"    # J

    .prologue
    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 124
    .local v4, "startTimeMs":J
    move-wide v6, p1

    .line 125
    .local v6, "timeRemainingMs":J
    const/4 v8, 0x0

    .line 126
    .local v8, "wasInterrupted":Z
    const/4 v1, 0x0

    .line 129
    .local v1, "result":Z
    :cond_0
    :try_start_0
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v6, v7, v9}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 140
    :goto_0
    if-eqz v8, :cond_1

    .line 141
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    .line 143
    :cond_1
    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v8, 0x1

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v2, v10, v4

    .line 136
    .local v2, "elapsedTimeMs":J
    sub-long v6, p1, v2

    .line 138
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-gtz v9, :cond_0

    goto :goto_0
.end method

.method public static checkIsOnMainThread()V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not on main thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    return-void
.end method

.method static concatStackTraces([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 4
    .param p0, "inner"    # [Ljava/lang/StackTraceElement;
    .param p1, "outer"    # [Ljava/lang/StackTraceElement;

    .prologue
    const/4 v3, 0x0

    .line 215
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Ljava/lang/StackTraceElement;

    .line 216
    .local v0, "combined":[Ljava/lang/StackTraceElement;
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    return-object v0
.end method

.method public static executeUninterruptibly(Lorg/webrtc/ThreadUtils$BlockingOperation;)V
    .locals 3
    .param p0, "operation"    # Lorg/webrtc/ThreadUtils$BlockingOperation;

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 67
    .local v1, "wasInterrupted":Z
    :goto_0
    :try_start_0
    invoke-interface {p0}, Lorg/webrtc/ThreadUtils$BlockingOperation;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    if-eqz v1, :cond_0

    .line 77
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 79
    :cond_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 73
    goto :goto_0
.end method

.method public static invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 7
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 162
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 197
    :goto_0
    return-object v5

    .line 163
    :catch_0
    move-exception v2

    .line 164
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 174
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v3, Lorg/webrtc/ThreadUtils$1Result;

    invoke-direct {v3}, Lorg/webrtc/ThreadUtils$1Result;-><init>()V

    .line 175
    .local v3, "result":Lorg/webrtc/ThreadUtils$1Result;
    new-instance v1, Lorg/webrtc/ThreadUtils$1CaughtException;

    invoke-direct {v1}, Lorg/webrtc/ThreadUtils$1CaughtException;-><init>()V

    .line 176
    .local v1, "caughtException":Lorg/webrtc/ThreadUtils$1CaughtException;
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 177
    .local v0, "barrier":Ljava/util/concurrent/CountDownLatch;
    new-instance v5, Lorg/webrtc/ThreadUtils$4;

    invoke-direct {v5, v3, p1, v1, v0}, Lorg/webrtc/ThreadUtils$4;-><init>(Lorg/webrtc/ThreadUtils$1Result;Ljava/util/concurrent/Callable;Lorg/webrtc/ThreadUtils$1CaughtException;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    invoke-static {v0}, Lorg/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 191
    iget-object v5, v1, Lorg/webrtc/ThreadUtils$1CaughtException;->e:Ljava/lang/Exception;

    if-eqz v5, :cond_1

    .line 192
    new-instance v4, Ljava/lang/RuntimeException;

    iget-object v5, v1, Lorg/webrtc/ThreadUtils$1CaughtException;->e:Ljava/lang/Exception;

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 193
    .local v4, "runtimeException":Ljava/lang/RuntimeException;
    iget-object v5, v1, Lorg/webrtc/ThreadUtils$1CaughtException;->e:Ljava/lang/Exception;

    .line 194
    invoke-virtual {v5}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/webrtc/ThreadUtils;->concatStackTraces([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 193
    invoke-virtual {v4, v5}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 195
    throw v4

    .line 197
    .end local v4    # "runtimeException":Ljava/lang/RuntimeException;
    :cond_1
    iget-object v5, v3, Lorg/webrtc/ThreadUtils$1Result;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public static invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "runner"    # Ljava/lang/Runnable;

    .prologue
    .line 204
    new-instance v0, Lorg/webrtc/ThreadUtils$5;

    invoke-direct {v0, p1}, Lorg/webrtc/ThreadUtils$5;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lorg/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 211
    return-void
.end method

.method public static joinUninterruptibly(Ljava/lang/Thread;)V
    .locals 1
    .param p0, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 105
    new-instance v0, Lorg/webrtc/ThreadUtils$1;

    invoke-direct {v0, p0}, Lorg/webrtc/ThreadUtils$1;-><init>(Ljava/lang/Thread;)V

    invoke-static {v0}, Lorg/webrtc/ThreadUtils;->executeUninterruptibly(Lorg/webrtc/ThreadUtils$BlockingOperation;)V

    .line 111
    return-void
.end method

.method public static joinUninterruptibly(Ljava/lang/Thread;J)Z
    .locals 11
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "timeoutMs"    # J

    .prologue
    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 83
    .local v4, "startTimeMs":J
    move-wide v6, p1

    .line 84
    .local v6, "timeRemainingMs":J
    const/4 v1, 0x0

    .line 85
    .local v1, "wasInterrupted":Z
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {p0, v6, v7}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    if-eqz v1, :cond_1

    .line 99
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 101
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    return v8

    .line 89
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v2, v8, v4

    .line 94
    .local v2, "elapsedTimeMs":J
    sub-long v6, p1, v2

    .line 95
    goto :goto_0

    .line 101
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "elapsedTimeMs":J
    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static waitUninterruptibly(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 147
    new-instance v0, Lorg/webrtc/ThreadUtils$3;

    invoke-direct {v0, p0}, Lorg/webrtc/ThreadUtils$3;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/webrtc/ThreadUtils;->executeUninterruptibly(Lorg/webrtc/ThreadUtils$BlockingOperation;)V

    .line 153
    return-void
.end method
