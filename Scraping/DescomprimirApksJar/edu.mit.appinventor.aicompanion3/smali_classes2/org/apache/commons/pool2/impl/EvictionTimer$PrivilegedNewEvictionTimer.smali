.class Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedNewEvictionTimer;
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
    name = "PrivilegedNewEvictionTimer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/util/Timer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/pool2/impl/EvictionTimer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/pool2/impl/EvictionTimer$1;

    .prologue
    .line 140
    invoke-direct {p0}, Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedNewEvictionTimer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/pool2/impl/EvictionTimer$PrivilegedNewEvictionTimer;->run()Ljava/util/Timer;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/Timer;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Ljava/util/Timer;

    const-string v1, "commons-pool-EvictionTimer"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
