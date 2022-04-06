.class Lorg/apache/commons/pool2/PoolUtils$TimerHolder;
.super Ljava/lang/Object;
.source "PoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool2/PoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimerHolder"
.end annotation


# static fields
.field static final MIN_IDLE_TIMER:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/pool2/PoolUtils$TimerHolder;->MIN_IDLE_TIMER:Ljava/util/Timer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
