.class public Llife/inventor/CardView/CardView;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "CardView.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "https://drive.google.com/uc?export=download&id=0B6Gaxelf7K-3NThSUVE2SUVrYXM"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llife/inventor/CardView/CardView$1;,
        Llife/inventor/CardView/CardView$TextButton;,
        Llife/inventor/CardView/CardView$MaterialCard;,
        Llife/inventor/CardView/CardView$cardProperties;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MaterialCard"

.field public static final VERSION:I = 0x1


# instance fields
.field private activity:Landroid/app/Activity;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private fontCustom:Landroid/graphics/Typeface;

.field private fontCustomIcon:Landroid/graphics/Typeface;

.field private isRepl:Z

.field private myBitmap:Landroid/graphics/Bitmap;

.field private valuedpImage:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 79
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Llife/inventor/CardView/CardView;->isRepl:Z

    .line 75
    const/16 v0, 0x38

    iput v0, p0, Llife/inventor/CardView/CardView;->valuedpImage:I

    .line 80
    iget-object v0, p0, Llife/inventor/CardView/CardView;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Llife/inventor/CardView/CardView;->isRepl:Z

    .line 83
    :cond_0
    iput-object p1, p0, Llife/inventor/CardView/CardView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 84
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Llife/inventor/CardView/CardView;->context:Landroid/content/Context;

    .line 85
    const-string v0, "MaterialCard"

    const-string v1, "CardView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Llife/inventor/CardView/CardView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Llife/inventor/CardView/CardView;->activity:Landroid/app/Activity;

    .line 87
    return-void
.end method

.method static synthetic access$000(Llife/inventor/CardView/CardView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Llife/inventor/CardView/CardView;

    .prologue
    .line 65
    iget-object v0, p0, Llife/inventor/CardView/CardView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Llife/inventor/CardView/CardView;)Lcom/google/appinventor/components/runtime/ComponentContainer;
    .locals 1
    .param p0, "x0"    # Llife/inventor/CardView/CardView;

    .prologue
    .line 65
    iget-object v0, p0, Llife/inventor/CardView/CardView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-object v0
.end method

.method static synthetic access$300(Llife/inventor/CardView/CardView;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Llife/inventor/CardView/CardView;

    .prologue
    .line 65
    iget-object v0, p0, Llife/inventor/CardView/CardView;->fontCustom:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$400(Llife/inventor/CardView/CardView;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Llife/inventor/CardView/CardView;

    .prologue
    .line 65
    iget-object v0, p0, Llife/inventor/CardView/CardView;->fontCustomIcon:Landroid/graphics/Typeface;

    return-object v0
.end method


# virtual methods
.method public AfterPicking(I)V
    .locals 4
    .param p1, "position"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = ""
    .end annotation

    .prologue
    .line 341
    const-string v0, "AfterPicking"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 342
    return-void
.end method

.method public ButtonClick(ILjava/lang/String;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = ""
    .end annotation

    .prologue
    .line 346
    const-string v0, "ButtonClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 347
    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = ""
    .end annotation

    .prologue
    .line 351
    const-string v0, "ErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method public FontIcon(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 107
    :try_start_0
    iget-boolean v1, p0, Llife/inventor/CardView/CardView;->isRepl:Z

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/mnt/sdcard/AppInventor/assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Llife/inventor/CardView/CardView;->fontCustomIcon:Landroid/graphics/Typeface;

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Llife/inventor/CardView/CardView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Llife/inventor/CardView/CardView;->fontCustomIcon:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v1, p0, Llife/inventor/CardView/CardView;->fontCustomIcon:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public FontText(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 93
    :try_start_0
    iget-boolean v1, p0, Llife/inventor/CardView/CardView;->isRepl:Z

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/mnt/sdcard/AppInventor/assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Llife/inventor/CardView/CardView;->fontCustom:Landroid/graphics/Typeface;

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Llife/inventor/CardView/CardView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Llife/inventor/CardView/CardView;->fontCustom:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v1, p0, Llife/inventor/CardView/CardView;->fontCustom:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public Type1(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 19
    .param p1, "input"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "images"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "titles"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p4, "subTitles"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p5, "content"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p6, "buttons"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .prologue
    .line 119
    invoke-virtual/range {p2 .. p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 120
    .local v16, "listImages":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v18

    .line 121
    .local v18, "listTitles":[Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v17

    .line 122
    .local v17, "listSubTitles":[Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 123
    .local v15, "listContent":[Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 124
    .local v9, "listButtons":[Ljava/lang/String;
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Llife/inventor/CardView/CardView;->context:Landroid/content/Context;

    invoke-direct {v14, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 125
    .local v14, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 126
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 127
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v13, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 130
    .local v13, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v2, v0

    if-ge v12, v2, :cond_0

    .line 131
    new-instance v1, Llife/inventor/CardView/CardView$MaterialCard;

    move-object/from16 v0, p0

    iget-object v3, v0, Llife/inventor/CardView/CardView;->context:Landroid/content/Context;

    const/4 v4, 0x1

    aget-object v5, v16, v12

    aget-object v6, v18, v12

    aget-object v7, v17, v12

    aget-object v8, v15, v12

    add-int/lit8 v10, v12, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Llife/inventor/CardView/CardView$MaterialCard;-><init>(Llife/inventor/CardView/CardView;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 132
    .local v1, "cardview":Llife/inventor/CardView/CardView$MaterialCard;
    invoke-virtual {v14, v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "cardview":Llife/inventor/CardView/CardView$MaterialCard;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 136
    .local v11, "arrangement":Landroid/view/ViewGroup;
    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 137
    invoke-virtual {v11, v14, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    return-void
.end method

.method public Type2(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 17
    .param p1, "input"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "images"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "content"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p4, "buttons"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .prologue
    .line 142
    invoke-virtual/range {p2 .. p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 143
    .local v16, "listImages":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 144
    .local v15, "listContent":[Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 145
    .local v9, "listButtons":[Ljava/lang/String;
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Llife/inventor/CardView/CardView;->context:Landroid/content/Context;

    invoke-direct {v14, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 146
    .local v14, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 148
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v13, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 151
    .local v13, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v2, v0

    if-ge v12, v2, :cond_0

    .line 152
    new-instance v1, Llife/inventor/CardView/CardView$MaterialCard;

    move-object/from16 v0, p0

    iget-object v3, v0, Llife/inventor/CardView/CardView;->context:Landroid/content/Context;

    const/4 v4, 0x2

    aget-object v5, v16, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v8, v15, v12

    add-int/lit8 v10, v12, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Llife/inventor/CardView/CardView$MaterialCard;-><init>(Llife/inventor/CardView/CardView;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 153
    .local v1, "cardview":Llife/inventor/CardView/CardView$MaterialCard;
    invoke-virtual {v14, v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "cardview":Llife/inventor/CardView/CardView$MaterialCard;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 157
    .local v11, "arrangement":Landroid/view/ViewGroup;
    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 158
    invoke-virtual {v11, v14, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    return-void
.end method

.method public Type3(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 15
    .param p1, "input"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "images"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "buttons"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .prologue
    .line 163
    invoke-virtual/range {p2 .. p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v14

    .line 164
    .local v14, "listImages":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, "listButtons":[Ljava/lang/String;
    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v1, p0, Llife/inventor/CardView/CardView;->context:Landroid/content/Context;

    invoke-direct {v13, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 166
    .local v13, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 167
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 168
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v12, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 171
    .local v12, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v1, v14

    if-ge v11, v1, :cond_0

    .line 172
    new-instance v0, Llife/inventor/CardView/CardView$MaterialCard;

    iget-object v2, p0, Llife/inventor/CardView/CardView;->context:Landroid/content/Context;

    const/4 v3, 0x3

    aget-object v4, v14, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    add-int/lit8 v9, v11, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Llife/inventor/CardView/CardView$MaterialCard;-><init>(Llife/inventor/CardView/CardView;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 173
    .local v0, "cardview":Llife/inventor/CardView/CardView$MaterialCard;
    invoke-virtual {v13, v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "cardview":Llife/inventor/CardView/CardView$MaterialCard;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 177
    .local v10, "arrangement":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 178
    invoke-virtual {v10, v13, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    return-void
.end method
