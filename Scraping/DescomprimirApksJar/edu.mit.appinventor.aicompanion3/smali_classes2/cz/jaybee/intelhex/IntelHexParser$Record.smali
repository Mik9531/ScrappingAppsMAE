.class Lcz/jaybee/intelhex/IntelHexParser$Record;
.super Ljava/lang/Object;
.source "IntelHexParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/jaybee/intelhex/IntelHexParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Record"
.end annotation


# instance fields
.field address:I

.field data:[B

.field length:I

.field final synthetic this$0:Lcz/jaybee/intelhex/IntelHexParser;

.field type:Lcz/jaybee/intelhex/IntelHexRecordType;


# direct methods
.method private constructor <init>(Lcz/jaybee/intelhex/IntelHexParser;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcz/jaybee/intelhex/IntelHexParser$Record;->this$0:Lcz/jaybee/intelhex/IntelHexParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcz/jaybee/intelhex/IntelHexParser;Lcz/jaybee/intelhex/IntelHexParser$Record;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcz/jaybee/intelhex/IntelHexParser$Record;-><init>(Lcz/jaybee/intelhex/IntelHexParser;)V

    return-void
.end method
