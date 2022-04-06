.class public Lcom/google/zxing/client/android/camera/HoneycombMR2Util;
.super Ljava/lang/Object;
.source "HoneycombMR2Util.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "pt"    # Landroid/graphics/Point;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 22
    return-void
.end method
