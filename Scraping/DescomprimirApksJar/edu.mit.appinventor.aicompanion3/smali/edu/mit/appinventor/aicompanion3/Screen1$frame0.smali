.class public Ledu/mit/appinventor/aicompanion3/Screen1$frame0;
.super Lgnu/expr/ModuleBody;
.source "Screen1.yail"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/mit/appinventor/aicompanion3/Screen1;->lambda15(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation


# instance fields
.field $input:Ljava/lang/Object;

.field final lambda$Fn15:Lgnu/expr/ModuleMethod;

.field final lambda$Fn16:Lgnu/expr/ModuleMethod;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Ledu/mit/appinventor/aicompanion3/Screen1$frame0;->lambda$Fn15:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Ledu/mit/appinventor/aicompanion3/Screen1$frame0;->lambda$Fn16:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Ledu/mit/appinventor/aicompanion3/Screen1$frame0;->lambda16()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Ledu/mit/appinventor/aicompanion3/Screen1$frame0;->lambda17()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method lambda16()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 12
    sget-object v1, Lcom/google/youngandroid/runtime;->yail$Mnequal$Qu:Lgnu/expr/ModuleMethod;

    sget-object v2, Lcom/google/youngandroid/runtime;->string$Mnstarts$Mnat:Lgnu/expr/ModuleMethod;

    iget-object v0, p0, Ledu/mit/appinventor/aicompanion3/Screen1$frame0;->$input:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Package;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "The variable "

    aput-object v4, v0, v3

    const/4 v3, 0x1

    sget-object v4, Ledu/mit/appinventor/aicompanion3/Screen1;->Lit69:Lgnu/mapping/SimpleSymbol;

    invoke-static {v4}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, " is not bound in the current context"

    aput-object v4, v0, v3

    invoke-static {v0}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v0

    const-string v3, "Unbound Variable"

    invoke-static {v0, v3}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const-string v3, "http://"

    invoke-static {v0, v3}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    sget-object v3, Ledu/mit/appinventor/aicompanion3/Screen1;->Lit70:Lgnu/lists/PairWithPosition;

    const-string v4, "starts at"

    invoke-static {v2, v0, v3, v4}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ledu/mit/appinventor/aicompanion3/Screen1;->Lit54:Lgnu/math/IntNum;

    invoke-static {v0, v2}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    sget-object v2, Ledu/mit/appinventor/aicompanion3/Screen1;->Lit71:Lgnu/lists/PairWithPosition;

    const-string v3, "="

    invoke-static {v1, v0, v2, v3}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/mit/appinventor/aicompanion3/Screen1$frame0;->$input:Ljava/lang/Object;

    goto :goto_0
.end method

.method lambda17()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 12
    sget-object v1, Lcom/google/youngandroid/runtime;->yail$Mnequal$Qu:Lgnu/expr/ModuleMethod;

    sget-object v2, Lcom/google/youngandroid/runtime;->string$Mnstarts$Mnat:Lgnu/expr/ModuleMethod;

    iget-object v0, p0, Ledu/mit/appinventor/aicompanion3/Screen1$frame0;->$input:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Package;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "The variable "

    aput-object v4, v0, v3

    const/4 v3, 0x1

    sget-object v4, Ledu/mit/appinventor/aicompanion3/Screen1;->Lit69:Lgnu/mapping/SimpleSymbol;

    invoke-static {v4}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, " is not bound in the current context"

    aput-object v4, v0, v3

    invoke-static {v0}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v0

    const-string v3, "Unbound Variable"

    invoke-static {v0, v3}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const-string v3, "https://"

    invoke-static {v0, v3}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    sget-object v3, Ledu/mit/appinventor/aicompanion3/Screen1;->Lit72:Lgnu/lists/PairWithPosition;

    const-string v4, "starts at"

    invoke-static {v2, v0, v3, v4}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ledu/mit/appinventor/aicompanion3/Screen1;->Lit54:Lgnu/math/IntNum;

    invoke-static {v0, v2}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    sget-object v2, Ledu/mit/appinventor/aicompanion3/Screen1;->Lit73:Lgnu/lists/PairWithPosition;

    const-string v3, "="

    invoke-static {v1, v0, v2, v3}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/mit/appinventor/aicompanion3/Screen1$frame0;->$input:Ljava/lang/Object;

    goto :goto_0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
