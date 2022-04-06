.class public Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;
.super Lgnu/expr/ModuleBody;
.source "MainScreen.yail"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->lambda13()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame1"
.end annotation


# instance fields
.field $contents:Ljava/lang/Object;

.field $images:Ljava/lang/Object;

.field $subTitles:Ljava/lang/Object;

.field $titles:Ljava/lang/Object;

.field final lambda$Fn13:Lgnu/expr/ModuleMethod;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;->lambda$Fn13:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;->lambda14(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda14(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "$index"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 11
    sget-object v2, Lcom/google/youngandroid/runtime;->yail$Mnlist$Mnget$Mnitem:Lgnu/expr/ModuleMethod;

    sget-object v1, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit3:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lcom/google/youngandroid/runtime;->$Stthe$Mnnull$Mnvalue$St:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/youngandroid/runtime;->lookupGlobalVarInCurrentFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v1, p1, Ljava/lang/Package;

    if-eqz v1, :cond_2

    new-array v1, v8, [Ljava/lang/Object;

    const-string v4, "The variable "

    aput-object v4, v1, v9

    sget-object v4, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit16:Lgnu/mapping/SimpleSymbol;

    invoke-static {v4}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v10

    const-string v4, " is not bound in the current context"

    aput-object v4, v1, v11

    invoke-static {v1}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    const-string v4, "Unbound Variable"

    invoke-static {v1, v4}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v3, v1}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v3, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit40:Lgnu/lists/PairWithPosition;

    const-string v4, "select list item"

    invoke-static {v2, v1, v3, v4}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "$phrase":Ljava/lang/Object;
    sget-object v2, Lcom/google/youngandroid/runtime;->yail$Mnlist$Mnadd$Mnto$Mnlist$Ex:Lgnu/expr/ModuleMethod;

    sget-object v1, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit4:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lcom/google/youngandroid/runtime;->$Stthe$Mnnull$Mnvalue$St:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/youngandroid/runtime;->lookupGlobalVarInCurrentFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/google/youngandroid/runtime;->make$Mnyail$Mnlist:Lgnu/expr/ModuleMethod;

    instance-of v1, p1, Ljava/lang/Package;

    if-eqz v1, :cond_0

    new-array v1, v8, [Ljava/lang/Object;

    const-string v5, "The variable "

    aput-object v5, v1, v9

    sget-object v5, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit16:Lgnu/mapping/SimpleSymbol;

    invoke-static {v5}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v10

    const-string v5, " is not bound in the current context"

    aput-object v5, v1, v11

    invoke-static {v1}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    const-string v5, "Unbound Variable"

    invoke-static {v1, v5}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "$index":Ljava/lang/Object;
    :cond_0
    sget-object v5, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit18:Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit7:Lgnu/mapping/SimpleSymbol;

    instance-of v1, v0, Ljava/lang/Package;

    if-eqz v1, :cond_3

    new-array v1, v8, [Ljava/lang/Object;

    const-string v7, "The variable "

    aput-object v7, v1, v9

    sget-object v7, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-static {v7}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v1, v10

    const-string v7, " is not bound in the current context"

    aput-object v7, v1, v11

    invoke-static {v1}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    const-string v7, "Unbound Variable"

    invoke-static {v1, v7}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    const-string v7, "Code"

    invoke-static {v1, v7}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v7, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit41:Lgnu/lists/PairWithPosition;

    invoke-static {v5, v6, v1, v7}, Lcom/google/youngandroid/runtime;->callComponentMethod(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v5, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit42:Lgnu/lists/PairWithPosition;

    const-string v6, "make a list"

    invoke-static {v4, v1, v5, v6}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v3, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit43:Lgnu/lists/PairWithPosition;

    const-string v4, "add items to list"

    invoke-static {v2, v1, v3, v4}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/google/youngandroid/runtime;->yail$Mnlist$Mnadd$Mnto$Mnlist$Ex:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;->$images:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Package;

    if-eqz v1, :cond_4

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "The variable "

    aput-object v2, v1, v9

    sget-object v2, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit22:Lgnu/mapping/SimpleSymbol;

    invoke-static {v2}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v10

    const-string v2, " is not bound in the current context"

    aput-object v2, v1, v11

    invoke-static {v1}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    const-string v2, "Unbound Variable"

    invoke-static {v1, v2}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    sget-object v4, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit18:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit7:Lgnu/mapping/SimpleSymbol;

    instance-of v2, v0, Ljava/lang/Package;

    if-eqz v2, :cond_5

    new-array v2, v8, [Ljava/lang/Object;

    const-string v6, "The variable "

    aput-object v6, v2, v9

    sget-object v6, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-static {v6}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v10

    const-string v6, " is not bound in the current context"

    aput-object v6, v2, v11

    invoke-static {v2}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v2

    const-string v6, "Unbound Variable"

    invoke-static {v2, v6}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_3
    const-string v6, "Image"

    invoke-static {v2, v6}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    sget-object v6, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit44:Lgnu/lists/PairWithPosition;

    invoke-static {v4, v5, v2, v6}, Lcom/google/youngandroid/runtime;->callComponentMethod(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v2, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit45:Lgnu/lists/PairWithPosition;

    const-string v4, "add items to list"

    invoke-static {v3, v1, v2, v4}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/google/youngandroid/runtime;->yail$Mnlist$Mnadd$Mnto$Mnlist$Ex:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;->$titles:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Package;

    if-eqz v1, :cond_6

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "The variable "

    aput-object v2, v1, v9

    sget-object v2, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit25:Lgnu/mapping/SimpleSymbol;

    invoke-static {v2}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v10

    const-string v2, " is not bound in the current context"

    aput-object v2, v1, v11

    invoke-static {v1}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    const-string v2, "Unbound Variable"

    invoke-static {v1, v2}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_4
    sget-object v4, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit18:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit7:Lgnu/mapping/SimpleSymbol;

    instance-of v2, v0, Ljava/lang/Package;

    if-eqz v2, :cond_7

    new-array v2, v8, [Ljava/lang/Object;

    const-string v6, "The variable "

    aput-object v6, v2, v9

    sget-object v6, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-static {v6}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v10

    const-string v6, " is not bound in the current context"

    aput-object v6, v2, v11

    invoke-static {v2}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v2

    const-string v6, "Unbound Variable"

    invoke-static {v2, v6}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_5
    const-string v6, "Title"

    invoke-static {v2, v6}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    sget-object v6, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit46:Lgnu/lists/PairWithPosition;

    invoke-static {v4, v5, v2, v6}, Lcom/google/youngandroid/runtime;->callComponentMethod(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v2, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit47:Lgnu/lists/PairWithPosition;

    const-string v4, "add items to list"

    invoke-static {v3, v1, v2, v4}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/youngandroid/runtime;->yail$Mnlist$Mnadd$Mnto$Mnlist$Ex:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;->$subTitles:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Package;

    if-eqz v1, :cond_8

    new-array v1, v8, [Ljava/lang/Object;

    const-string v3, "The variable "

    aput-object v3, v1, v9

    sget-object v3, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit28:Lgnu/mapping/SimpleSymbol;

    invoke-static {v3}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v10

    const-string v3, " is not bound in the current context"

    aput-object v3, v1, v11

    invoke-static {v1}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    const-string v3, "Unbound Variable"

    invoke-static {v1, v3}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_6
    const-string v3, "Pulsa para ver m\u00e1s detalles"

    invoke-static {v1, v3}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v3, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit48:Lgnu/lists/PairWithPosition;

    const-string v4, "add items to list"

    invoke-static {v2, v1, v3, v4}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/youngandroid/runtime;->yail$Mnlist$Mnadd$Mnto$Mnlist$Ex:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;->$contents:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Package;

    if-eqz v1, :cond_9

    new-array v1, v8, [Ljava/lang/Object;

    const-string v3, "The variable "

    aput-object v3, v1, v9

    sget-object v3, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit30:Lgnu/mapping/SimpleSymbol;

    invoke-static {v3}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v10

    const-string v3, " is not bound in the current context"

    aput-object v3, v1, v11

    invoke-static {v1}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    const-string v3, "Unbound Variable"

    invoke-static {v1, v3}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_7
    sget-object v3, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit18:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit7:Lgnu/mapping/SimpleSymbol;

    instance-of v5, v0, Ljava/lang/Package;

    if-eqz v5, :cond_1

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "The variable "

    aput-object v6, v5, v9

    sget-object v6, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-static {v6}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, " is not bound in the current context"

    aput-object v6, v5, v11

    invoke-static {v5}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v5

    const-string v6, "Unbound Variable"

    invoke-static {v5, v6}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$phrase":Ljava/lang/Object;
    :cond_1
    const-string v5, "Description"

    invoke-static {v0, v5}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    sget-object v6, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit49:Lgnu/lists/PairWithPosition;

    invoke-static {v3, v4, v5, v6}, Lcom/google/youngandroid/runtime;->callComponentMethod(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v3, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit50:Lgnu/lists/PairWithPosition;

    const-string v4, "add items to list"

    invoke-static {v2, v1, v3, v4}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit33:Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit34:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit35:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1}, Lcom/google/youngandroid/runtime;->lookupInCurrentFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    iget-object v1, p0, Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;->$images:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Package;

    if-eqz v1, :cond_a

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "The variable "

    aput-object v2, v1, v9

    sget-object v2, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit22:Lgnu/mapping/SimpleSymbol;

    invoke-static {v2}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v10

    const-string v2, " is not bound in the current context"

    aput-object v2, v1, v11

    invoke-static {v1}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    const-string v2, "Unbound Variable"

    invoke-static {v1, v2}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_8
    iget-object v2, p0, Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;->$titles:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Package;

    if-eqz v2, :cond_b

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "The variable "

    aput-object v3, v2, v9

    sget-object v3, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit25:Lgnu/mapping/SimpleSymbol;

    invoke-static {v3}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v10

    const-string v3, " is not bound in the current context"

    aput-object v3, v2, v11

    invoke-static {v2}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v2

    const-string v3, "Unbound Variable"

    invoke-static {v2, v3}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_9
    iget-object v3, p0, Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;->$subTitles:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Package;

    if-eqz v3, :cond_c

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "The variable "

    aput-object v4, v3, v9

    sget-object v4, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit28:Lgnu/mapping/SimpleSymbol;

    invoke-static {v4}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v10

    const-string v4, " is not bound in the current context"

    aput-object v4, v3, v11

    invoke-static {v3}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v3

    const-string v4, "Unbound Variable"

    invoke-static {v3, v4}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_a
    iget-object v4, p0, Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;->$contents:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Package;

    if-eqz v4, :cond_d

    new-array v4, v8, [Ljava/lang/Object;

    const-string v8, "The variable "

    aput-object v8, v4, v9

    sget-object v8, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit30:Lgnu/mapping/SimpleSymbol;

    invoke-static {v8}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v10

    const-string v8, " is not bound in the current context"

    aput-object v8, v4, v11

    invoke-static {v4}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v4

    const-string v8, "Unbound Variable"

    invoke-static {v4, v8}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_b
    invoke-static {v7, v1, v2, v3, v4}, Lgnu/lists/LList;->chain4(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v2, Lcom/google/youngandroid/runtime;->make$Mnyail$Mnlist:Lgnu/expr/ModuleMethod;

    const-string v3, "share"

    invoke-static {v3}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    sget-object v4, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit51:Lgnu/lists/PairWithPosition;

    const-string v8, "make a list"

    invoke-static {v2, v3, v4, v8}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/lists/LList;->chain1(Lgnu/lists/Pair;Ljava/lang/Object;)Lgnu/lists/Pair;

    sget-object v1, Lappinventor/ai_ruizrube/Fraseologia/MainScreen;->Lit52:Lgnu/lists/PairWithPosition;

    invoke-static {v5, v6, v7, v1}, Lcom/google/youngandroid/runtime;->callComponentMethod(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .restart local p1    # "$index":Ljava/lang/Object;
    :cond_2
    move-object v1, p1

    goto/16 :goto_0

    .end local p1    # "$index":Ljava/lang/Object;
    .restart local v0    # "$phrase":Ljava/lang/Object;
    :cond_3
    move-object v1, v0

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;->$images:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_5
    move-object v2, v0

    goto/16 :goto_3

    :cond_6
    iget-object v1, p0, Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;->$titles:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_7
    move-object v2, v0

    goto/16 :goto_5

    :cond_8
    iget-object v1, p0, Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;->$subTitles:Ljava/lang/Object;

    goto/16 :goto_6

    :cond_9
    iget-object v1, p0, Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;->$contents:Ljava/lang/Object;

    goto/16 :goto_7

    .end local v0    # "$phrase":Ljava/lang/Object;
    :cond_a
    iget-object v1, p0, Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;->$images:Ljava/lang/Object;

    goto/16 :goto_8

    :cond_b
    iget-object v2, p0, Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;->$titles:Ljava/lang/Object;

    goto/16 :goto_9

    :cond_c
    iget-object v3, p0, Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;->$subTitles:Ljava/lang/Object;

    goto :goto_a

    :cond_d
    iget-object v4, p0, Lappinventor/ai_ruizrube/Fraseologia/MainScreen$frame1;->$contents:Ljava/lang/Object;

    goto :goto_b
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x1

    iput v0, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method
