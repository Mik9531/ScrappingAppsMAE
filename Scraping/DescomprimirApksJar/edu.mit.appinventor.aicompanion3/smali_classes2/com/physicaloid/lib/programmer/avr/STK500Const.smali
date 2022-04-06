.class Lcom/physicaloid/lib/programmer/avr/STK500Const;
.super Ljava/lang/Object;
.source "Stk500.java"


# static fields
.field public static final Cmnd_STK_CHECK_AUTOINC:B = 0x53t

.field public static final Cmnd_STK_CHIP_ERASE:B = 0x52t

.field public static final Cmnd_STK_ENTER_PROGMODE:B = 0x50t

.field public static final Cmnd_STK_GET_PARAMETER:B = 0x41t

.field public static final Cmnd_STK_GET_SIGN_ON:B = 0x31t

.field public static final Cmnd_STK_GET_SYNC:B = 0x30t

.field public static final Cmnd_STK_LEAVE_PROGMODE:B = 0x51t

.field public static final Cmnd_STK_LOAD_ADDRESS:B = 0x55t

.field public static final Cmnd_STK_PROG_DATA:B = 0x61t

.field public static final Cmnd_STK_PROG_FLASH:B = 0x60t

.field public static final Cmnd_STK_PROG_FUSE:B = 0x62t

.field public static final Cmnd_STK_PROG_FUSE_EXT:B = 0x65t

.field public static final Cmnd_STK_PROG_LOCK:B = 0x63t

.field public static final Cmnd_STK_PROG_PAGE:B = 0x64t

.field public static final Cmnd_STK_READ_DATA:B = 0x71t

.field public static final Cmnd_STK_READ_FLASH:B = 0x70t

.field public static final Cmnd_STK_READ_FUSE:B = 0x72t

.field public static final Cmnd_STK_READ_FUSE_EXT:B = 0x77t

.field public static final Cmnd_STK_READ_LOCK:B = 0x73t

.field public static final Cmnd_STK_READ_OSCCAL:B = 0x76t

.field public static final Cmnd_STK_READ_OSCCAL_EXT:B = 0x78t

.field public static final Cmnd_STK_READ_PAGE:B = 0x74t

.field public static final Cmnd_STK_READ_SIGN:B = 0x75t

.field public static final Cmnd_STK_SET_DEVICE:B = 0x42t

.field public static final Cmnd_STK_SET_DEVICE_EXT:B = 0x45t

.field public static final Cmnd_STK_SET_PARAMETER:B = 0x40t

.field public static final Cmnd_STK_UNIVERSAL:B = 0x56t

.field public static final Cmnd_STK_UNIVERSAL_MULTI:B = 0x57t

.field public static final Param_STK500_TOPCARD_DETECT:B = -0x68t

.field public static final Parm_STK_BUFSIZEH:B = -0x6ft

.field public static final Parm_STK_BUFSIZEL:B = -0x70t

.field public static final Parm_STK_DEVICE:B = -0x6et

.field public static final Parm_STK_HW_VER:B = -0x80t

.field public static final Parm_STK_LEDS:B = -0x7dt

.field public static final Parm_STK_OSC_CMATCH:B = -0x79t

.field public static final Parm_STK_OSC_PSCALE:B = -0x7at

.field public static final Parm_STK_PARAMODE:B = -0x6ct

.field public static final Parm_STK_POLLING:B = -0x6bt

.field public static final Parm_STK_PROGMODE:B = -0x6dt

.field public static final Parm_STK_RESET_DURATION:B = -0x78t

.field public static final Parm_STK_SCK_DURATION:B = -0x77t

.field public static final Parm_STK_SELFTIMED:B = -0x6at

.field public static final Parm_STK_SW_MAJOR:B = -0x7ft

.field public static final Parm_STK_SW_MINOR:B = -0x7et

.field public static final Parm_STK_VADJUST:B = -0x7bt

.field public static final Parm_STK_VTARGET:B = -0x7ct

.field public static final Resp_ADC_CHANNEL_ERROR:B = 0x16t

.field public static final Resp_ADC_MEASURE_OK:B = 0x17t

.field public static final Resp_PWM_ADJUST_OK:B = 0x19t

.field public static final Resp_PWM_CHANNEL_ERROR:B = 0x18t

.field public static final Resp_STK_FAILED:B = 0x11t

.field public static final Resp_STK_INSYNC:B = 0x14t

.field public static final Resp_STK_NODEVICE:B = 0x13t

.field public static final Resp_STK_NOSYNC:B = 0x15t

.field public static final Resp_STK_OK:B = 0x10t

.field public static final Resp_STK_UNKNOWN:B = 0x12t

.field public static final STK_SIGN_ON_MESSAGE:Ljava/lang/String; = "AVR STK"

.field public static final Stat_STK_INSYNC:B = 0x1t

.field public static final Stat_STK_LEDBLINK:B = -0x80t

.field public static final Stat_STK_LEDG:B = 0x20t

.field public static final Stat_STK_LEDR:B = 0x40t

.field public static final Stat_STK_PROGMODE:B = 0x2t

.field public static final Stat_STK_PROGRAM:B = 0x10t

.field public static final Stat_STK_RESET:B = 0x8t

.field public static final Stat_STK_STANDALONE:B = 0x4t

.field public static final Sync_CRC_EOP:B = 0x20t


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
