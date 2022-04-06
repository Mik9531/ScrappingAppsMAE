.class final enum Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;
.super Ljava/lang/Enum;
.source "PhoneCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/PhoneCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CallStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

.field public static final enum INCOMING_ANSWERED:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

.field public static final enum INCOMING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

.field public static final enum OUTGOING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    new-instance v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    const-string v1, "INCOMING_WAITING"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 289
    new-instance v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    const-string v1, "INCOMING_ANSWERED"

    invoke-direct {v0, v1, v3}, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_ANSWERED:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 290
    new-instance v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    const-string v1, "OUTGOING_WAITING"

    invoke-direct {v0, v1, v4}, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->OUTGOING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 287
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    sget-object v1, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_ANSWERED:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->OUTGOING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->$VALUES:[Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 287
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 287
    const-class v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->$VALUES:[Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    return-object v0
.end method
