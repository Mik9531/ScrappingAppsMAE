.class public Lcom/physicaloid/lib/Boards$ChipTypes;
.super Ljava/lang/Object;
.source "Boards.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/physicaloid/lib/Boards;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChipTypes"
.end annotation


# static fields
.field public static final ATMEGA32U4:I = 0x6

.field public static final M1280:I = 0x4

.field public static final M1284P:I = 0x7

.field public static final M168:I = 0x2

.field public static final M2560:I = 0x5

.field public static final M328P:I = 0x3

.field public static final M8:I = 0x1

.field public static final MBED_FRDM_KL25Z:I = 0x21

.field public static final MBED_LPC11U24:I = 0x20

.field public static final MBED_LPC1768:I = 0x1f

.field public static final PHYSICALOID_CYCLONE:I = 0x3d


# instance fields
.field final synthetic this$0:Lcom/physicaloid/lib/Boards;


# direct methods
.method public constructor <init>(Lcom/physicaloid/lib/Boards;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/physicaloid/lib/Boards$ChipTypes;->this$0:Lcom/physicaloid/lib/Boards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
