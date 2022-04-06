.class Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedSetTccl;
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
    name = "PrivilegedSetTccl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final cl:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedSetTccl;->cl:Ljava/lang/ClassLoader;

    .line 120
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedSetTccl;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedSetTccl;->cl:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 128
    const/4 v0, 0x0

    return-object v0
.end method
