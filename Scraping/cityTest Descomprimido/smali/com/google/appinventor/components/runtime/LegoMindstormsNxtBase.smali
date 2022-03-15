.class public Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "LegoMindstormsNxtBase.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final ERROR_MESSAGES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOY_ROBOT:I = 0x804


# instance fields
.field protected bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

.field protected final logTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    .line 43
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pending communication transaction in progress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Specified mailbox queue is empty"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No more handles"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No space"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No more files"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "End of file expected"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "End of file"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not a linear file"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File not found"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Handle already closed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No linear space"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Undefined error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File is busy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No write buffers"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Append not possible"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File is full"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File exists"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Module not found"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Out of boundary"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x92

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal file name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal handle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xbd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Request failed (i.e. specified file not found)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xbe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unknown command opcode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Insane packet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Data contains out-of-range values"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Communication bus error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xde

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No free memory in communication buffer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xdf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Specified channel/connection is not valid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Specified channel/connection not configured or busy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No active program"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal size specified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal mailbox queue ID specified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Attempted to access invalid field of a structure"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Bad input or output specified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xfb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Insufficient memory available"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Bad arguments"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 100
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    .line 101
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "logTag"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 92
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    .line 93
    return-void
.end method

.method private handleError(Ljava/lang/String;I)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    const/16 v6, 0x194

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 378
    if-gez p2, :cond_0

    .line 394
    :goto_0
    return-void

    .line 384
    :cond_0
    sget-object v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    .local v0, "errorMessage":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 386
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {v1, p0, p1, v6, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error code 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, p2, 0xff

    .line 391
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 389
    invoke-virtual {v1, p0, p1, v6, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private receiveReturnPackage(Ljava/lang/String;)[B
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 334
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v3, p1, v4}, Lcom/google/appinventor/components/runtime/BluetoothClient;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 335
    .local v0, "header":[B
    array-length v3, v0

    if-ne v3, v4, :cond_0

    .line 336
    invoke-virtual {p0, v0, v6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getUWORDValueFromBytes([BI)I

    move-result v1

    .line 337
    .local v1, "length":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v3, p1, v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->read(Ljava/lang/String;I)[B

    move-result-object v2

    .line 338
    .local v2, "returnPackage":[B
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 345
    .end local v1    # "length":I
    .end local v2    # "returnPackage":[B
    :goto_0
    return-object v2

    .line 343
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x193

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p0, p1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 345
    new-array v2, v6, [B

    goto :goto_0
.end method


# virtual methods
.method public BluetoothClient()Lcom/google/appinventor/components/runtime/BluetoothClient;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The BluetoothClient component that should be used for communication."
        userVisible = false
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    return-object v0
.end method

.method public BluetoothClient(Lcom/google/appinventor/components/runtime/BluetoothClient;)V
    .locals 2
    .param p1, "bluetoothClient"    # Lcom/google/appinventor/components/runtime/BluetoothClient;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "BluetoothClient"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->removeBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->detachComponent(Lcom/google/appinventor/components/runtime/Component;)V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    .line 133
    :cond_0
    if-eqz p1, :cond_1

    .line 134
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const/16 v1, 0x804

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachComponent(Lcom/google/appinventor/components/runtime/Component;Ljava/util/Set;)Z

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->addBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    .line 142
    :cond_1
    return-void
.end method

.method public final Initialize()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 0
    .param p1, "bluetoothConnection"    # Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;

    .prologue
    .line 580
    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 0
    .param p1, "bluetoothConnection"    # Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;

    .prologue
    .line 585
    return-void
.end method

.method protected final checkBluetooth(Ljava/lang/String;)Z
    .locals 4
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 308
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-nez v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x191

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 318
    :goto_0
    return v0

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x192

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 318
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final convertMotorPortLetterToNumber(C)I
    .locals 3
    .param p1, "motorPortLetter"    # C

    .prologue
    .line 521
    const/16 v0, 0x41

    if-eq p1, v0, :cond_0

    const/16 v0, 0x61

    if-ne p1, v0, :cond_1

    .line 522
    :cond_0
    const/4 v0, 0x0

    .line 526
    :goto_0
    return v0

    .line 523
    :cond_1
    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x62

    if-ne p1, v0, :cond_3

    .line 524
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 525
    :cond_3
    const/16 v0, 0x43

    if-eq p1, v0, :cond_4

    const/16 v0, 0x63

    if-ne p1, v0, :cond_5

    .line 526
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 528
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal motor port letter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final convertMotorPortLetterToNumber(Ljava/lang/String;)I
    .locals 3
    .param p1, "motorPortLetter"    # Ljava/lang/String;

    .prologue
    .line 514
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 515
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->convertMotorPortLetterToNumber(C)I

    move-result v0

    return v0

    .line 517
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal motor port letter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final convertSensorPortLetterToNumber(C)I
    .locals 3
    .param p1, "sensorPortLetter"    # C

    .prologue
    .line 539
    const/16 v0, 0x31

    if-ne p1, v0, :cond_0

    .line 540
    const/4 v0, 0x0

    .line 546
    :goto_0
    return v0

    .line 541
    :cond_0
    const/16 v0, 0x32

    if-ne p1, v0, :cond_1

    .line 542
    const/4 v0, 0x1

    goto :goto_0

    .line 543
    :cond_1
    const/16 v0, 0x33

    if-ne p1, v0, :cond_2

    .line 544
    const/4 v0, 0x2

    goto :goto_0

    .line 545
    :cond_2
    const/16 v0, 0x34

    if-ne p1, v0, :cond_3

    .line 546
    const/4 v0, 0x3

    goto :goto_0

    .line 548
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal sensor port letter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final convertSensorPortLetterToNumber(Ljava/lang/String;)I
    .locals 3
    .param p1, "sensorPortLetter"    # Ljava/lang/String;

    .prologue
    .line 532
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 533
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->convertSensorPortLetterToNumber(C)I

    move-result v0

    return v0

    .line 535
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal sensor port letter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final copyBooleanValueToBytes(Z[BI)V
    .locals 1
    .param p1, "value"    # Z
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 397
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-byte v0, p2, p3

    .line 398
    return-void

    .line 397
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final copySBYTEValueToBytes(I[BI)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 401
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 402
    return-void
.end method

.method protected final copySLONGValueToBytes(I[BI)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 421
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 422
    shr-int/lit8 p1, p1, 0x8

    .line 423
    add-int/lit8 v0, p3, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 424
    shr-int/lit8 p1, p1, 0x8

    .line 425
    add-int/lit8 v0, p3, 0x2

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 426
    shr-int/lit8 p1, p1, 0x8

    .line 427
    add-int/lit8 v0, p3, 0x3

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 428
    return-void
.end method

.method protected final copySWORDValueToBytes(I[BI)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 409
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 410
    shr-int/lit8 p1, p1, 0x8

    .line 411
    add-int/lit8 v0, p3, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 412
    return-void
.end method

.method protected final copyStringValueToBytes(Ljava/lang/String;[BII)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I
    .param p4, "maxCount"    # I

    .prologue
    const/4 v6, 0x0

    .line 442
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p4, :cond_0

    .line 443
    invoke-virtual {p1, v6, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 447
    :cond_0
    :try_start_0
    const-string v3, "ISO-8859-1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 452
    .local v2, "valueBytes":[B
    :goto_0
    array-length v3, v2

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 453
    .local v1, "lengthToCopy":I
    invoke-static {v2, v6, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    return-void

    .line 448
    .end local v1    # "lengthToCopy":I
    .end local v2    # "valueBytes":[B
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedEncodingException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2    # "valueBytes":[B
    goto :goto_0
.end method

.method protected final copyUBYTEValueToBytes(I[BI)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 405
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 406
    return-void
.end method

.method protected final copyULONGValueToBytes(J[BI)V
    .locals 7
    .param p1, "value"    # J
    .param p3, "bytes"    # [B
    .param p4, "offset"    # I

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 431
    and-long v0, p1, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, p4

    .line 432
    shr-long/2addr p1, v6

    .line 433
    add-int/lit8 v0, p4, 0x1

    and-long v2, p1, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 434
    shr-long/2addr p1, v6

    .line 435
    add-int/lit8 v0, p4, 0x2

    and-long v2, p1, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 436
    shr-long/2addr p1, v6

    .line 437
    add-int/lit8 v0, p4, 0x3

    and-long v2, p1, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 438
    return-void
.end method

.method protected final copyUWORDValueToBytes(I[BI)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 415
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 416
    shr-int/lit8 p1, p1, 0x8

    .line 417
    add-int/lit8 v0, p3, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 418
    return-void
.end method

.method protected final evaluateStatus(Ljava/lang/String;[BB)Z
    .locals 2
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "returnPackage"    # [B
    .param p3, "command"    # B

    .prologue
    .line 349
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getStatus(Ljava/lang/String;[BB)I

    move-result v0

    .line 350
    .local v0, "status":I
    if-nez v0, :cond_0

    .line 351
    const/4 v1, 0x1

    .line 354
    :goto_0
    return v1

    .line 353
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->handleError(Ljava/lang/String;I)V

    .line 354
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final getBooleanValueFromBytes([BI)Z
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 457
    aget-byte v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getInputValues(Ljava/lang/String;I)[B
    .locals 5
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 206
    .local v0, "command":[B
    aput-byte v3, v0, v3

    .line 207
    const/4 v2, 0x7

    aput-byte v2, v0, v4

    .line 208
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 209
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 210
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 218
    .end local v1    # "returnPackage":[B
    :goto_0
    return-object v1

    .line 214
    .restart local v1    # "returnPackage":[B
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 16)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final getInputValues(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "port"    # Lcom/google/appinventor/components/common/NxtSensorPort;

    .prologue
    .line 222
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method protected final getSBYTEValueFromBytes([BI)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 461
    aget-byte v0, p1, p2

    return v0
.end method

.method protected final getSLONGValueFromBytes([BI)I
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 479
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method protected final getSWORDValueFromBytes([BI)I
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 469
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected final getStatus(Ljava/lang/String;[BB)I
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "returnPackage"    # [B
    .param p3, "command"    # B

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 359
    array-length v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 360
    aget-byte v0, p2, v3

    if-eq v0, v5, :cond_0

    .line 361
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": unexpected return package byte 0: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p2, v3

    and-int/lit16 v2, v2, 0xff

    .line 362
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 0x02)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    aget-byte v0, p2, v4

    if-eq v0, p3, :cond_1

    .line 365
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": unexpected return package byte 1: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p2, v4

    and-int/lit16 v2, v2, 0xff

    .line 366
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p3, 0xff

    .line 367
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_1
    invoke-virtual {p0, p2, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getUBYTEValueFromBytes([BI)I

    move-result v0

    .line 374
    :goto_0
    return v0

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": unexpected return package length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected >= 3)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected final getStringValueFromBytes([BI)Ljava/lang/String;
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 494
    const/4 v1, 0x0

    .line 495
    .local v1, "length":I
    move v0, p2

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 496
    aget-byte v2, p1, v0

    if-nez v2, :cond_1

    .line 497
    sub-int v1, v0, p2

    .line 501
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getStringValueFromBytes([BII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 495
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final getStringValueFromBytes([BII)Ljava/lang/String;
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 506
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_0
    return-object v1

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedEncodingException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method protected final getUBYTEValueFromBytes([BI)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 465
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method protected final getULONGValueFromBytes([BI)J
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    const-wide/16 v6, 0xff

    .line 486
    aget-byte v0, p1, p2

    int-to-long v0, v0

    and-long/2addr v0, v6

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected final getUWORDValueFromBytes([BI)I
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 474
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected final lsGetStatus(Ljava/lang/String;I)I
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 238
    new-array v0, v5, [B

    .line 239
    .local v0, "command":[B
    aput-byte v2, v0, v2

    .line 240
    const/16 v3, 0xe

    aput-byte v3, v0, v4

    .line 241
    const/4 v3, 0x2

    invoke-virtual {p0, p2, v0, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 242
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 243
    .local v1, "returnPackage":[B
    aget-byte v3, v0, v4

    invoke-virtual {p0, p1, v1, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    array-length v3, v1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 245
    invoke-virtual {p0, v1, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getUBYTEValueFromBytes([BI)I

    move-result v2

    .line 251
    :cond_0
    :goto_0
    return v2

    .line 247
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": unexpected return package length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (expected 4)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final lsGetStatus(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)I
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "port"    # Lcom/google/appinventor/components/common/NxtSensorPort;

    .prologue
    .line 255
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->lsGetStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected final lsRead(Ljava/lang/String;I)[B
    .locals 5
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 279
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 280
    .local v0, "command":[B
    aput-byte v3, v0, v3

    .line 281
    const/16 v2, 0x10

    aput-byte v2, v0, v4

    .line 282
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 283
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 284
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    array-length v2, v1

    const/16 v3, 0x14

    if-ne v2, v3, :cond_0

    .line 292
    .end local v1    # "returnPackage":[B
    :goto_0
    return-object v1

    .line 288
    .restart local v1    # "returnPackage":[B
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 20)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final lsRead(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "port"    # Lcom/google/appinventor/components/common/NxtSensorPort;

    .prologue
    .line 296
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->lsRead(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method protected final lsWrite(Ljava/lang/String;I[BI)V
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "data"    # [B
    .param p4, "rxDataLength"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 259
    array-length v2, p3

    const/16 v3, 0x10

    if-le v2, v3, :cond_0

    .line 260
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "length must be <= 16"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    :cond_0
    array-length v2, p3

    add-int/lit8 v2, v2, 0x5

    new-array v0, v2, [B

    .line 263
    .local v0, "command":[B
    aput-byte v4, v0, v4

    .line 264
    const/16 v2, 0xf

    aput-byte v2, v0, v5

    .line 265
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 266
    array-length v2, p3

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v0, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 267
    const/4 v2, 0x4

    invoke-virtual {p0, p4, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 268
    const/4 v2, 0x5

    array-length v3, p3

    invoke-static {p3, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 270
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v5

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    .line 271
    return-void
.end method

.method protected final lsWrite(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;[BI)V
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "port"    # Lcom/google/appinventor/components/common/NxtSensorPort;
    .param p3, "data"    # [B
    .param p4, "rxDataLength"    # I

    .prologue
    .line 275
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->lsWrite(Ljava/lang/String;I[BI)V

    .line 276
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->removeBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V

    .line 593
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->detachComponent(Lcom/google/appinventor/components/runtime/Component;)V

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    .line 596
    :cond_0
    return-void
.end method

.method protected final resetInputScaledValue(Ljava/lang/String;I)V
    .locals 3
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 226
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 227
    .local v0, "command":[B
    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 228
    const/4 v1, 0x1

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    .line 229
    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 230
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    .line 231
    return-void
.end method

.method protected final resetInputScaledValue(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)V
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "port"    # Lcom/google/appinventor/components/common/NxtSensorPort;

    .prologue
    .line 234
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->resetInputScaledValue(Ljava/lang/String;I)V

    .line 235
    return-void
.end method

.method protected final sanitizePower(I)I
    .locals 3
    .param p1, "power"    # I

    .prologue
    .line 552
    const/16 v0, -0x64

    if-ge p1, v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "power "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid, using -100."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/16 p1, -0x64

    .line 556
    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "power "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid, using 100."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/16 p1, 0x64

    .line 560
    :cond_1
    return p1
.end method

.method protected final sanitizeTurnRatio(I)I
    .locals 3
    .param p1, "turnRatio"    # I

    .prologue
    .line 564
    const/16 v0, -0x64

    if-ge p1, v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnRatio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid, using -100."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/16 p1, -0x64

    .line 568
    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnRatio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid, using 100."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/16 p1, 0x64

    .line 572
    :cond_1
    return p1
.end method

.method protected final sendCommand(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "command"    # [B

    .prologue
    .line 327
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 328
    .local v0, "header":[B
    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUWORDValueToBytes(I[BI)V

    .line 329
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->write(Ljava/lang/String;[B)V

    .line 330
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1, p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->write(Ljava/lang/String;[B)V

    .line 331
    return-void
.end method

.method protected final sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "command"    # [B

    .prologue
    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    .line 323
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->receiveReturnPackage(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final setInputMode(Ljava/lang/String;III)V
    .locals 4
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sensorType"    # I
    .param p4, "sensorMode"    # I

    .prologue
    const/4 v3, 0x5

    .line 187
    new-array v0, v3, [B

    .line 188
    .local v0, "command":[B
    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 189
    const/4 v1, 0x1

    aput-byte v3, v0, v1

    .line 190
    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 191
    const/4 v1, 0x3

    invoke-virtual {p0, p3, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 192
    const/4 v1, 0x4

    invoke-virtual {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 193
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    .line 194
    return-void
.end method

.method protected final setInputMode(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;Lcom/google/appinventor/components/common/NxtSensorType;Lcom/google/appinventor/components/common/NxtSensorMode;)V
    .locals 3
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "port"    # Lcom/google/appinventor/components/common/NxtSensorPort;
    .param p3, "type"    # Lcom/google/appinventor/components/common/NxtSensorType;
    .param p4, "mode"    # Lcom/google/appinventor/components/common/NxtSensorMode;

    .prologue
    .line 201
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3}, Lcom/google/appinventor/components/common/NxtSensorType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p4}, Lcom/google/appinventor/components/common/NxtSensorMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->setInputMode(Ljava/lang/String;III)V

    .line 202
    return-void
.end method

.method protected final setOutputState(Ljava/lang/String;IIIIIIJ)V
    .locals 4
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "power"    # I
    .param p4, "mode"    # I
    .param p5, "regulationMode"    # I
    .param p6, "turnRatio"    # I
    .param p7, "runState"    # I
    .param p8, "tachoLimit"    # J

    .prologue
    const/4 v3, 0x4

    .line 146
    invoke-virtual {p0, p3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sanitizePower(I)I

    move-result p3

    .line 147
    invoke-virtual {p0, p6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sanitizeTurnRatio(I)I

    move-result p6

    .line 148
    const/16 v1, 0xc

    new-array v0, v1, [B

    .line 149
    .local v0, "command":[B
    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 150
    const/4 v1, 0x1

    aput-byte v3, v0, v1

    .line 151
    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 152
    const/4 v1, 0x3

    invoke-virtual {p0, p3, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copySBYTEValueToBytes(I[BI)V

    .line 153
    invoke-virtual {p0, p4, v0, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 154
    const/4 v1, 0x5

    invoke-virtual {p0, p5, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 155
    const/4 v1, 0x6

    invoke-virtual {p0, p6, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copySBYTEValueToBytes(I[BI)V

    .line 156
    const/4 v1, 0x7

    invoke-virtual {p0, p7, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 162
    const/16 v1, 0x8

    invoke-virtual {p0, p8, p9, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyULONGValueToBytes(J[BI)V

    .line 163
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    .line 164
    return-void
.end method

.method protected final setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V
    .locals 10
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "port"    # Lcom/google/appinventor/components/common/NxtMotorPort;
    .param p3, "power"    # I
    .param p4, "mode"    # Lcom/google/appinventor/components/common/NxtMotorMode;
    .param p5, "regulationMode"    # Lcom/google/appinventor/components/common/NxtRegulationMode;
    .param p6, "turnRatio"    # I
    .param p7, "runState"    # Lcom/google/appinventor/components/common/NxtRunState;
    .param p8, "tachoLimit"    # J

    .prologue
    .line 175
    .line 177
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtMotorPort;->toInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 179
    invoke-virtual {p4}, Lcom/google/appinventor/components/common/NxtMotorMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 180
    invoke-virtual {p5}, Lcom/google/appinventor/components/common/NxtRegulationMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 182
    invoke-virtual/range {p7 .. p7}, Lcom/google/appinventor/components/common/NxtRunState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move/from16 v6, p6

    move-wide/from16 v8, p8

    .line 175
    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    .line 184
    return-void
.end method
