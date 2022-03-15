.class public Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ListAdapterWithRecyclerView.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.READ_EXTERNAL_STORAGE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;,
        Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<",
        "Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ListAdapterRecyclerView"

.field private static clickListener:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;


# instance fields
.field private backgroundColor:I

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private filterItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private idCard:I

.field private idFirst:I

.field private idImages:I

.field private idSecond:I

.field private imageHeight:I

.field private imageWidth:I

.field public isSelected:Z

.field public isVisible:[Ljava/lang/Boolean;

.field private itemViews:[Landroidx/cardview/widget/CardView;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private layoutType:I

.field private multiSelect:Z

.field public selection:[Ljava/lang/Boolean;

.field private selectionColor:I

.field private textDetailColor:I

.field private textDetailFont:I

.field private textDetailSize:F

.field private textMainColor:I

.field private textMainFont:I

.field private textMainSize:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/util/YailList;IFIII)V
    .locals 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "stringItems"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "textMainColor"    # I
    .param p4, "textMainSize"    # F
    .param p5, "textMainFont"    # I
    .param p6, "backgroundColor"    # I
    .param p7, "selectionColor"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 85
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 59
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isSelected:Z

    .line 61
    iput v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idFirst:I

    iput v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idSecond:I

    iput v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idImages:I

    const/4 v3, 0x1

    iput v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idCard:I

    .line 87
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 88
    iput p4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainSize:F

    .line 89
    iput p3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainColor:I

    .line 90
    iput p5, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainFont:I

    .line 91
    iput p3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailColor:I

    .line 92
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailSize:F

    .line 93
    iput v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailFont:I

    .line 94
    iput v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    .line 95
    iput p6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    .line 96
    iput p7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    .line 97
    iput v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageHeight:I

    .line 98
    iput v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageWidth:I

    .line 99
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->multiSelect:Z

    .line 100
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    new-array v3, v3, [Landroidx/cardview/widget/CardView;

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    .line 101
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    .line 102
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    .line 104
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    .line 109
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    if-gt v0, v3, :cond_0

    .line 110
    invoke-virtual {p2, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "itemString":Ljava/lang/String;
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 112
    .local v1, "itemDict":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v3, "Text1"

    invoke-virtual {v1, v3, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "itemDict":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .end local v2    # "itemString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IIFFIIIIIIIZ)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p3, "textMainColor"    # I
    .param p4, "textDetailColor"    # I
    .param p5, "textMainSize"    # F
    .param p6, "textDetailSize"    # F
    .param p7, "textMainFont"    # I
    .param p8, "textDetailFont"    # I
    .param p9, "layoutType"    # I
    .param p10, "backgroundColor"    # I
    .param p11, "selectionColor"    # I
    .param p12, "imageWidth"    # I
    .param p13, "imageHeight"    # I
    .param p14, "multiSelect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/ComponentContainer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;IIFFIIIIIIIZ)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailDictionary;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isSelected:Z

    .line 61
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idFirst:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idSecond:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idImages:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idCard:I

    .line 63
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    .line 64
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 65
    iput p5, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainSize:F

    .line 66
    iput p3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainColor:I

    .line 67
    iput p4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailColor:I

    .line 68
    iput p6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailSize:F

    .line 69
    iput p7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainFont:I

    .line 70
    iput p8, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailFont:I

    .line 71
    iput p9, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    .line 72
    iput p10, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    .line 73
    iput p11, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    .line 74
    move/from16 v0, p13

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageHeight:I

    .line 75
    iput p12, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageWidth:I

    .line 76
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/cardview/widget/CardView;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    .line 77
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->multiSelect:Z

    .line 79
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    .line 80
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    .line 82
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .prologue
    .line 34
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idCard:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .prologue
    .line 34
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idFirst:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .prologue
    .line 34
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idSecond:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .prologue
    .line 34
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idImages:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->multiSelect:Z

    return v0
.end method

.method static synthetic access$500()Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->clickListener:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filterItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filterItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)[Landroidx/cardview/widget/CardView;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    return-object v0
.end method


# virtual methods
.method public changeSelections(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 150
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, p1

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 156
    :goto_1
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public clearSelections()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 368
    new-instance v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$2;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V

    .line 418
    .local v0, "filter":Landroid/widget/Filter;
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    array-length v0, v0

    return v0
.end method

.method public getSelectedItems()Ljava/lang/String;
    .locals 5

    .prologue
    .line 356
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 357
    .local v2, "selectedItems":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 358
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 360
    .local v0, "dictItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Text1"

    invoke-virtual {v0, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 357
    .end local v0    # "dictItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_2
    const-string v3, ""

    goto :goto_1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V
    .locals 9
    .param p1, "holder"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 247
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    new-instance v7, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;

    invoke-direct {v7, p0, p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;)V

    invoke-virtual {v6, v7}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 255
    .local v0, "dictItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v6, "Text1"

    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "first":Ljava/lang/String;
    const-string v5, ""

    .line 257
    .local v5, "second":Ljava/lang/String;
    const-string v6, "Text2"

    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 258
    const-string v6, "Text2"

    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 260
    :cond_0
    iget v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    if-nez v6, :cond_2

    .line 261
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :goto_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    aget-object v6, v6, p2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 293
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    iget v7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    invoke-virtual {v6, v7}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 297
    :goto_1
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    aget-object v6, v6, p2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 299
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 300
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v6}, Landroidx/cardview/widget/CardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/4 v7, 0x0

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 302
    :cond_1
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    iget-object v7, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    aput-object v7, v6, p2

    .line 303
    return-void

    .line 262
    :cond_2
    iget v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 263
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewSecond:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :cond_3
    iget v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 266
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewSecond:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 268
    :cond_4
    iget v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 269
    const-string v6, "Image"

    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "imageName":Ljava/lang/String;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 272
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 276
    :goto_2
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->imageVieww:Landroid/widget/ImageView;

    invoke-static {v6, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 273
    :catch_0
    move-exception v4

    .line 274
    .local v4, "ioe":Ljava/io/IOException;
    const-string v6, "ListAdapterRecyclerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBindViewHolder Unable to load image "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 278
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "imageName":Ljava/lang/String;
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_5
    iget v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    .line 279
    const-string v6, "Image"

    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .restart local v3    # "imageName":Ljava/lang/String;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 282
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_1
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 286
    :goto_3
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewSecond:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->imageVieww:Landroid/widget/ImageView;

    invoke-static {v6, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 283
    :catch_1
    move-exception v4

    .line 284
    .restart local v4    # "ioe":Ljava/io/IOException;
    const-string v6, "ListAdapterRecyclerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBindViewHolder Unable to load image "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 290
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "imageName":Ljava/lang/String;
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_6
    const-string v6, "ListAdapterRecyclerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBindViewHolder Layout not recognized: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 295
    :cond_7
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    iget v7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v6, v7}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    goto/16 :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    .locals 17
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 160
    new-instance v1, Landroidx/cardview/widget/CardView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v13}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v1, v13}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 161
    .local v1, "cardView":Landroidx/cardview/widget/CardView;
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    .line 162
    const/16 v13, 0xa

    const/16 v14, 0xa

    const/16 v15, 0xa

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    .line 163
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    .line 164
    const v13, 0x40066666    # 2.1f

    invoke-virtual {v1, v13}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 165
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 166
    const/high16 v13, 0x40400000    # 3.0f

    invoke-virtual {v1, v13}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    .line 167
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v1, v13}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 168
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isSelected:Z

    invoke-virtual {v1, v13}, Landroidx/cardview/widget/CardView;->setClickable(Z)V

    .line 169
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idCard:I

    .line 170
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idCard:I

    invoke-virtual {v1, v13}, Landroidx/cardview/widget/CardView;->setId(I)V

    .line 172
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v10, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 173
    .local v10, "params1":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v13, v14, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 175
    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v1, v13}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 178
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v13}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 179
    .local v11, "textViewFirst":Landroid/widget/TextView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idFirst:I

    .line 180
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idFirst:I

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setId(I)V

    .line 181
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v3, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 182
    .local v3, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v13, 0xa

    iput v13, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 183
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainSize:F

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 185
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainColor:I

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainFont:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v11, v13, v14, v15}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 187
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v13}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 188
    .local v8, "linearLayout1":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v6, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 189
    .local v6, "layoutParamslinear1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 192
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v14, 0x4

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_1

    .line 194
    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v13}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v2, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 195
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idImages:I

    .line 196
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idImages:I

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setId(I)V

    .line 197
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageHeight:I

    invoke-direct {v5, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 198
    .local v5, "layoutParamsImage":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "layoutParamsImage":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_4

    .line 204
    :cond_2
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    :cond_3
    :goto_0
    invoke-virtual {v1, v10}, Landroidx/cardview/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    invoke-virtual {v1, v8}, Landroidx/cardview/widget/CardView;->addView(Landroid/view/View;)V

    .line 241
    new-instance v13, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Landroid/view/View;)V

    return-object v13

    .line 207
    :cond_4
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v13}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 208
    .local v12, "textViewSecond":Landroid/widget/TextView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idSecond:I

    .line 209
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idSecond:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setId(I)V

    .line 210
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v4, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 211
    .local v4, "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailSize:F

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 212
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailFont:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 213
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailColor:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_6

    .line 215
    :cond_5
    const/16 v13, 0xa

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 216
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v13}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v9, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 219
    .local v9, "linearLayout2":Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, 0x0

    const/4 v14, -0x2

    const/high16 v15, 0x40000000    # 2.0f

    invoke-direct {v7, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 220
    .local v7, "layoutParamslinear2":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 223
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 227
    .end local v7    # "layoutParamslinear2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "linearLayout2":Landroid/widget/LinearLayout;
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 229
    const/16 v13, 0x32

    const/16 v14, 0xa

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v13, v14, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 230
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 232
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 234
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public selectFromText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text1"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 120
    .local v0, "d":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v2, "Text1"

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 121
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    .line 122
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    invoke-virtual {v2, v3}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 126
    .end local v0    # "d":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_0
    return-void

    .line 118
    .restart local v0    # "d":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

    .prologue
    .line 348
    sput-object p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->clickListener:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

    .line 349
    return-void
.end method

.method public toggleSelection(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 137
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, p1

    .line 145
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object v1, v1, p1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 146
    return-void
.end method
