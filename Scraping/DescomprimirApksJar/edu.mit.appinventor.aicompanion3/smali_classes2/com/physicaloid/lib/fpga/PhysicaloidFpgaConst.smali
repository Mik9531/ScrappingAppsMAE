.class public Lcom/physicaloid/lib/fpga/PhysicaloidFpgaConst;
.super Ljava/lang/Object;
.source "PhysicaloidFpgaConst.java"


# static fields
.field public static final CMD_BASE:B = 0x30t

.field public static final CMD_NCONFIG:B = 0x1t

.field public static final CMD_RET_CONF_DONE:B = 0x4t

.field public static final CMD_RET_MSEL_AS:B = 0x1t

.field public static final CMD_RET_NSTATUS:B = 0x2t

.field public static final CMD_RET_TIMEOUT:B = 0x8t

.field public static final CMD_USERMODE:B = 0x8t

.field public static final COMMAND_BYTE:B = 0x3at

.field public static final ESCAPE_BYTE:B = 0x3dt


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
