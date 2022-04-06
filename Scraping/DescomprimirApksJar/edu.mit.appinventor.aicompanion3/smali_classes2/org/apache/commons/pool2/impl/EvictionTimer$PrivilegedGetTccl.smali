.class Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedGetTccl;
.super Ljava/lang/Object;
.source "EvictionTimer.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/impl/EvictionTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrivilegedGetTccl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/pool2/impl/EvictionTimer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/pool2/impl/EvictionTimer$1;

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedGetTccl;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedGetTccl;->run()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
