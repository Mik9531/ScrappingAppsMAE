.class public Lappinventor/ai_ruizrube/Fraseologia/Screen1$frame0;
.super Lgnu/expr/ModuleBody;
.source "Screen1.yail"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lappinventor/ai_ruizrube/Fraseologia/Screen1;->AirtableClassic1$GotAllRows(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation


# instance fields
.field $responseContent:Ljava/lang/Object;

.field final lambda$Fn24:Lgnu/expr/ModuleMethod;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_ruizrube/Fraseologia/Screen1$frame0;->lambda$Fn24:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lappinventor/ai_ruizrube/Fraseologia/Screen1$frame0;->lambda25(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda25(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "$index"    # Ljava/lang/Object;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 153
    sget-object v3, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit91:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit98:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit91:Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit99:Lgnu/mapping/SimpleSymbol;

    iget-object v2, p0, Lappinventor/ai_ruizrube/Fraseologia/Screen1$frame0;->$responseContent:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Package;

    if-eqz v2, :cond_3

    new-array v2, v12, [Ljava/lang/Object;

    const-string v7, "The variable "

    aput-object v7, v2, v9

    sget-object v7, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit100:Lgnu/mapping/SimpleSymbol;

    invoke-static {v7}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v2, v10

    const-string v7, " is not bound in the current context"

    aput-object v7, v2, v11

    invoke-static {v2}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v2

    const-string v7, "Unbound Variable"

    invoke-static {v2, v7}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    instance-of v7, p1, Ljava/lang/Package;

    if-eqz v7, :cond_0

    new-array v7, v12, [Ljava/lang/Object;

    const-string v8, "The variable "

    aput-object v8, v7, v9

    sget-object v8, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit101:Lgnu/mapping/SimpleSymbol;

    invoke-static {v8}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v10

    const-string v8, " is not bound in the current context"

    aput-object v8, v7, v11

    invoke-static {v7}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v7

    const-string v8, "Unbound Variable"

    invoke-static {v7, v8}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "$index":Ljava/lang/Object;
    :cond_0
    invoke-static {v2, p1}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    sget-object v7, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit102:Lgnu/lists/PairWithPosition;

    invoke-static {v5, v6, v2, v7}, Lcom/google/youngandroid/runtime;->callComponentMethod(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "fields"

    invoke-static {v2, v5}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    sget-object v5, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit103:Lgnu/lists/PairWithPosition;

    invoke-static {v3, v4, v2, v5}, Lcom/google/youngandroid/runtime;->callComponentMethod(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "$stone":Ljava/lang/Object;
    sget-object v3, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit91:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit104:Lgnu/mapping/SimpleSymbol;

    instance-of v2, v0, Ljava/lang/Package;

    if-eqz v2, :cond_4

    new-array v2, v12, [Ljava/lang/Object;

    const-string v5, "The variable "

    aput-object v5, v2, v9

    sget-object v5, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit105:Lgnu/mapping/SimpleSymbol;

    invoke-static {v5}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v10

    const-string v5, " is not bound in the current context"

    aput-object v5, v2, v11

    invoke-static {v2}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v2

    const-string v5, "Unbound Variable"

    invoke-static {v2, v5}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    const-string v5, "Code"

    invoke-static {v2, v5}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    sget-object v5, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit106:Lgnu/lists/PairWithPosition;

    invoke-static {v3, v4, v2, v5}, Lcom/google/youngandroid/runtime;->callComponentMethod(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "$stoneCode":Ljava/lang/Object;
    sget-object v3, Lcom/google/youngandroid/runtime;->yail$Mnnot$Mnequal$Qu:Lgnu/expr/ModuleMethod;

    instance-of v2, v1, Ljava/lang/Package;

    if-eqz v2, :cond_5

    new-array v2, v12, [Ljava/lang/Object;

    const-string v4, "The variable "

    aput-object v4, v2, v9

    sget-object v4, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit107:Lgnu/mapping/SimpleSymbol;

    invoke-static {v4}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v10

    const-string v4, " is not bound in the current context"

    aput-object v4, v2, v11

    invoke-static {v2}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v2

    const-string v4, "Unbound Variable"

    invoke-static {v2, v4}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_2
    const-string v4, ""

    invoke-static {v2, v4}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    sget-object v4, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit108:Lgnu/lists/PairWithPosition;

    const-string v5, "="

    invoke-static {v3, v2, v4, v5}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_6

    sget-object v2, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit7:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit109:Lgnu/mapping/SimpleSymbol;

    instance-of v4, v1, Ljava/lang/Package;

    if-eqz v4, :cond_1

    new-array v4, v12, [Ljava/lang/Object;

    const-string v5, "The variable "

    aput-object v5, v4, v9

    sget-object v5, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit107:Lgnu/mapping/SimpleSymbol;

    invoke-static {v5}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, " is not bound in the current context"

    aput-object v5, v4, v11

    invoke-static {v4}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v4

    const-string v5, "Unbound Variable"

    invoke-static {v4, v5}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "$stoneCode":Ljava/lang/Object;
    :cond_1
    instance-of v4, v0, Ljava/lang/Package;

    if-eqz v4, :cond_2

    new-array v4, v12, [Ljava/lang/Object;

    const-string v5, "The variable "

    aput-object v5, v4, v9

    sget-object v5, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit105:Lgnu/mapping/SimpleSymbol;

    invoke-static {v5}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, " is not bound in the current context"

    aput-object v5, v4, v11

    invoke-static {v4}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v4

    const-string v5, "Unbound Variable"

    invoke-static {v4, v5}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$stone":Ljava/lang/Object;
    :cond_2
    invoke-static {v1, v0}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    sget-object v5, Lappinventor/ai_ruizrube/Fraseologia/Screen1;->Lit110:Lgnu/lists/PairWithPosition;

    invoke-static {v2, v3, v4, v5}, Lcom/google/youngandroid/runtime;->callComponentMethod(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_3
    return-object v2

    .restart local p1    # "$index":Ljava/lang/Object;
    :cond_3
    iget-object v2, p0, Lappinventor/ai_ruizrube/Fraseologia/Screen1$frame0;->$responseContent:Ljava/lang/Object;

    goto/16 :goto_0

    .end local p1    # "$index":Ljava/lang/Object;
    .restart local v0    # "$stone":Ljava/lang/Object;
    :cond_4
    move-object v2, v0

    goto/16 :goto_1

    .restart local v1    # "$stoneCode":Ljava/lang/Object;
    :cond_5
    move-object v2, v1

    goto :goto_2

    :cond_6
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_3
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    const/4 v1, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    if-ne v0, v1, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method
