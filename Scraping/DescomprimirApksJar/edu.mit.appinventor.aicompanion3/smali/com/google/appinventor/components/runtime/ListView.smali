.class public final Lcom/google/appinventor/components/runtime/ListView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "ListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>This is a visible component that displays a list of text and image elements.</p> <p>Simple lists of strings may be set using the ElementsFromString property. More complex lists of elements containing multiple strings and/or images can be created using the ListData and ListViewLayout properties. </p>"
    iconName = "images/listView.png"
    nonVisible = false
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "recyclerview.jar, cardview.jar, cardview.aar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x1000000

.field private static final DEFAULT_ENABLED:Z = false

.field private static final DEFAULT_IMAGE_WIDTH:I = 0xc8

.field private static final DEFAULT_TEXT_SIZE:I = 0x16

.field private static final LOG_TAG:Ljava/lang/String; = "ListView"


# instance fields
.field private backgroundColor:I

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private detailTextColor:I

.field private dictItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private fontSizeDetail:F

.field private fontSizeMain:F

.field private fontTypeDetail:I

.field private fontTypeface:I

.field private imageHeight:I

.field private imageWidth:I

.field private layout:I

.field private final linearLayout:Landroid/widget/LinearLayout;

.field private listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

.field private orientation:I

.field private propertyValue:Ljava/lang/String;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private selection:Ljava/lang/String;

.field private selectionColor:I

.field private selectionDetailText:Ljava/lang/String;

.field private selectionIndex:I

.field private showFilter:Z

.field private stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

.field private textColor:I

.field private txtSearchBox:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v7, -0x2

    const/high16 v6, -0x1000000

    const/16 v5, 0xa

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 123
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 88
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 125
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    .line 128
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    .line 129
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 130
    iput v3, p0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    .line 131
    iput v3, p0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    .line 133
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 134
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 135
    .local v0, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v1, Landroid/widget/EditText;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    .line 138
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 139
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setWidth(I)V

    .line 140
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 141
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const-string v2, "Search list..."

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 142
    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    new-instance v2, Lcom/google/appinventor/components/runtime/ListView$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/ListView$1;-><init>(Lcom/google/appinventor/components/runtime/ListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 174
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 185
    :goto_0
    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/ListView;->BackgroundColor(I)V

    .line 186
    const v1, -0x333334

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->SelectionColor(I)V

    .line 187
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ListView;->TextColor(I)V

    .line 188
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ListView;->TextColorDetail(I)V

    .line 189
    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->FontSize(F)V

    .line 190
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->FontSizeDetail(F)V

    .line 191
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ListView;->FontTypeface(I)V

    .line 192
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ListView;->FontTypefaceDetail(I)V

    .line 194
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->ImageWidth(I)V

    .line 195
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->ImageHeight(I)V

    .line 196
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->ElementsFromString(Ljava/lang/String;)V

    .line 197
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->ListData(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 202
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 203
    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/ListView;->Width(I)V

    .line 204
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ListView;->ListViewLayout(I)V

    .line 206
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ListView;->SelectionIndex(I)V

    .line 207
    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/ListView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/ListView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method


# virtual methods
.method public AfterPicking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Simple event to be raised after the an element has been chosen in the list. The selected element is available in the Selection property."
    .end annotation

    .prologue
    .line 488
    const-string v0, "AfterPicking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 489
    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the listview background."
    .end annotation

    .prologue
    .line 506
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 522
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    .line 523
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 524
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 526
    return-void
.end method

.method public CreateElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 2
    .param p1, "mainText"    # Ljava/lang/String;
    .param p2, "detailText"    # Ljava/lang/String;
    .param p3, "imageName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a ListView entry. MainText is required. DetailText and ImageName are optional."
    .end annotation

    .prologue
    .line 935
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 936
    .local v0, "dictItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v1, "Text1"

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    const-string v1, "Text2"

    invoke-virtual {v0, v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    const-string v1, "Image"

    invoke-virtual {v0, v1, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    return-object v0
.end method

.method public Elements()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_0
.end method

.method public Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 6
    .param p1, "itemsList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "List of elements to show in the ListView. Depending on the ListView, this may be a list of strings or a list of 3-element sub-lists containing Text, Description, and Image file name."
    .end annotation

    .prologue
    .line 283
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 284
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 285
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 286
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 288
    .local v0, "firstitem":Ljava/lang/Object;
    instance-of v4, v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v4, :cond_1

    .line 291
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 292
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 293
    .local v2, "o":Ljava/lang/Object;
    instance-of v4, v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 294
    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 295
    .local v3, "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v4, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 291
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v3    # "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_0
    new-instance v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 299
    .restart local v3    # "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v4, "Text1"

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v4, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 305
    .end local v1    # "i":I
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_1
    const-string v4, "Listview"

    invoke-static {p1, v4}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elements(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 308
    .end local v0    # "firstitem":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 309
    return-void
.end method

.method public ElementsFromString(Ljava/lang/String;)V
    .locals 1
    .param p1, "itemstring"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The TextView elements specified as a string with the stringItems separated by commas such as: Cheese,Fruit,Bacon,Radish. Each word before the comma will be an element in the list."
    .end annotation

    .prologue
    .line 338
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elementsFromString(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 339
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 340
    return-void
.end method

.method public FontSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text size of the listview stringItems."
        userVisible = false
    .end annotation

    .prologue
    .line 661
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    return v0
.end method

.method public FontSize(F)V
    .locals 1
    .param p1, "fontSize"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 675
    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 676
    :cond_0
    const v0, 0x4479c000    # 999.0f

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    .line 679
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 680
    return-void

    .line 678
    :cond_1
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    goto :goto_0
.end method

.method public FontSizeDetail()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text size of the listview stringItems."
    .end annotation

    .prologue
    .line 690
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    return v0
.end method

.method public FontSizeDetail(F)V
    .locals 1
    .param p1, "fontSize"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 703
    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 704
    :cond_0
    const v0, 0x4479c000    # 999.0f

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    .line 707
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 708
    return-void

    .line 706
    :cond_1
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    goto :goto_0
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 723
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:I

    return v0
.end method

.method public FontTypeface(I)V
    .locals 0
    .param p1, "typeface"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 740
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:I

    .line 741
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 742
    return-void
.end method

.method public FontTypefaceDetail()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 757
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:I

    return v0
.end method

.method public FontTypefaceDetail(I)V
    .locals 0
    .param p1, "typeface"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 774
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:I

    .line 775
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 776
    return-void
.end method

.method public GetDetailText(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/String;
    .locals 1
    .param p1, "listElement"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Detail Text of a ListView element."
    .end annotation

    .prologue
    .line 949
    const-string v0, "Text2"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetImageName(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/String;
    .locals 1
    .param p1, "listElement"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the filename of the image of a ListView element that has been uploaded to Media."
    .end annotation

    .prologue
    .line 954
    const-string v0, "Image"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetMainText(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/String;
    .locals 1
    .param p1, "listElement"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Main Text of a ListView element."
    .end annotation

    .prologue
    .line 944
    const-string v0, "Text1"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Height(I)V
    .locals 1
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the height of the list on the view."
    .end annotation

    .prologue
    .line 223
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 224
    const/4 p1, -0x2

    .line 226
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 227
    return-void
.end method

.method public ImageHeight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The image height of the listview image stringItems."
    .end annotation

    .prologue
    .line 811
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    return v0
.end method

.method public ImageHeight(I)V
    .locals 0
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "200"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 823
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    .line 824
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 825
    return-void
.end method

.method public ImageWidth()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The image width of the listview image."
    .end annotation

    .prologue
    .line 786
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    return v0
.end method

.method public ImageWidth(I)V
    .locals 0
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "200"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 798
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    .line 799
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 800
    return-void
.end method

.method public ListData()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 886
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->propertyValue:Ljava/lang/String;

    return-object v0
.end method

.method public ListData(Ljava/lang/String;)V
    .locals 10
    .param p1, "propertyValue"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "ListViewAddData"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 901
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->propertyValue:Ljava/lang/String;

    .line 902
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 903
    if-eqz p1, :cond_3

    const-string v5, ""

    if-eq p1, v5, :cond_3

    .line 905
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 907
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 908
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 909
    .local v3, "jsonItem":Lorg/json/JSONObject;
    new-instance v4, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 910
    .local v4, "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v5, "Text1"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 911
    const-string v5, "Text1"

    const-string v6, "Text1"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    const-string v6, "Text2"

    const-string v5, "Text2"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Text2"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v6, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const-string v6, "Image"

    const-string v5, "Image"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Image"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v6, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 912
    :cond_1
    const-string v5, ""

    goto :goto_1

    .line 913
    :cond_2
    const-string v5, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 917
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "jsonItem":Lorg/json/JSONObject;
    .end local v4    # "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :catch_0
    move-exception v1

    .line 918
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "ListView"

    const-string v6, "Malformed JSON in ListView.ListData"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 919
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    const-string v6, "ListView.ListData"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, p0, v6, v9, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 922
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 923
    return-void
.end method

.method public ListViewLayout()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 834
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    return v0
.end method

.method public ListViewLayout(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "ListViewLayout"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 846
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    .line 847
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 848
    return-void
.end method

.method public Orientation()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 859
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    return v0
.end method

.method public Orientation(I)V
    .locals 0
    .param p1, "orientation"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "recyclerview_orientation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the layout\'s orientation (vertical, horizontal). "
    .end annotation

    .prologue
    .line 875
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    .line 876
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 877
    return-void
.end method

.method public Refresh()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reload the ListView to reflect any changes in the data."
    .end annotation

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 960
    return-void
.end method

.method public Selection()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the text last selected in the ListView."
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    return-object v0
.end method

.method public Selection(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 440
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 442
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 443
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 445
    .local v1, "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v2, "Text1"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 446
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 447
    const-string v2, "Text2"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    .line 456
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_0
    :goto_1
    iget v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->SelectionIndex(I)V

    .line 457
    return-void

    .line 451
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v2}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectedIndexFromValue(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    goto :goto_1
.end method

.method public SelectionColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The color of the item when it is selected."
    .end annotation

    .prologue
    .line 540
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    return v0
.end method

.method public SelectionColor(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 557
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    .line 558
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 559
    return-void
.end method

.method public SelectionDetailText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the secondary text of the selected row in the ListView."
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    return-object v0
.end method

.method public SelectionIndex()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The index of the currently selected item, starting at 1.  If no item is selected, the value will be 0.  If an attempt is made to set this to a number less than 1 or greater than the number of stringItems in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .prologue
    .line 388
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    return v0
.end method

.method public SelectionIndex(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the one-indexed position of the selected item in the ListView. This could be used to retrievethe text at the chosen position. If an attempt is made to set this to a number less than 1 or greater than the number of stringItems in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 408
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v1, "Text1"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v1, "Text2"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    .line 416
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->toggleSelection(I)V

    .line 419
    :cond_0
    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 413
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectionFromIndex(ILcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 414
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    goto :goto_0
.end method

.method public ShowFilterBar(Z)V
    .locals 2
    .param p1, "showFilter"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets visibility of ShowFilterBar. True will show the bar, False will hide it."
    .end annotation

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    .line 256
    if-eqz p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method public ShowFilterBar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current state of ShowFilterBar for visibility."
    .end annotation

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    return v0
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text color of the listview stringItems."
    .end annotation

    .prologue
    .line 574
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 590
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    .line 591
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 592
    return-void
.end method

.method public TextColorDetail()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text color of DetailText of listview stringItems. "
    .end annotation

    .prologue
    .line 603
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    return v0
.end method

.method public TextColorDetail(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 616
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    .line 617
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 618
    return-void
.end method

.method public TextSize()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text size of the listview items."
    .end annotation

    .prologue
    .line 633
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public TextSize(I)V
    .locals 1
    .param p1, "textSize"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "22"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 645
    const/16 v0, 0x3e8

    if-le p1, v0, :cond_0

    .line 646
    const/16 p1, 0x3e7

    .line 648
    :cond_0
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->FontSize(F)V

    .line 649
    return-void
.end method

.method public Width(I)V
    .locals 1
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the width of the list on the view."
    .end annotation

    .prologue
    .line 238
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 239
    const/4 p1, -0x2

    .line 241
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 242
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 475
    .local v0, "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v1, "Text1"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 476
    const-string v1, "Text2"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    .line 477
    add-int/lit8 v1, p3, 0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 478
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->AfterPicking()V

    .line 479
    return-void
.end method

.method public setAdapterData()V
    .locals 17

    .prologue
    .line 347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    new-instance v1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    const/4 v15, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IIFFIIIIIIIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .line 351
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 352
    new-instance v16, Landroidx/recyclerview/widget/LinearLayoutManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 362
    .local v16, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    new-instance v2, Lcom/google/appinventor/components/runtime/ListView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/appinventor/components/runtime/ListView$2;-><init>(Lcom/google/appinventor/components/runtime/ListView;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->setOnItemClickListener(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 372
    return-void

    .line 354
    .end local v16    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    new-instance v16, Landroidx/recyclerview/widget/LinearLayoutManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .restart local v16    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    goto :goto_0

    .line 358
    .end local v16    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_1
    new-instance v1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    invoke-direct/range {v1 .. v8}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/util/YailList;IFIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .line 360
    new-instance v16, Landroidx/recyclerview/widget/LinearLayoutManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .restart local v16    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    goto :goto_0
.end method
