.class public abstract Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.super Lcom/google/appinventor/components/runtime/VisibleComponent;
.source "AndroidViewComponent.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private column:I

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private lastSetHeight:I

.field private lastSetWidth:I

.field private percentHeightHolder:I

.field private percentWidthHolder:I

.field private row:I


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, -0x1

    const/4 v0, -0x3

    .line 44
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VisibleComponent;-><init>()V

    .line 31
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentWidthHolder:I

    .line 32
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentHeightHolder:I

    .line 33
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetWidth:I

    .line 34
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetHeight:I

    .line 36
    iput v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->column:I

    .line 37
    iput v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->row:I

    .line 45
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 46
    return-void
.end method


# virtual methods
.method public Column()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 239
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->column:I

    return v0
.end method

.method public Column(I)V
    .locals 0
    .param p1, "column"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 249
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->column:I

    .line 250
    return-void
.end method

.method public CopyHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1
    .param p1, "sourceComponent"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimplePropertyCopier;
    .end annotation

    .prologue
    .line 229
    iget v0, p1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetHeight:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 230
    return-void
.end method

.method public CopyWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1
    .param p1, "sourceComponent"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimplePropertyCopier;
    .end annotation

    .prologue
    .line 167
    iget v0, p1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetWidth:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 168
    return-void
.end method

.method public Height()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public Height(I)V
    .locals 2
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the vertical height of the %type%, measured in pixels."
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 190
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetHeight:I

    .line 191
    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    sget-object v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/appinventor/components/runtime/Form;->registerPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    sget-object v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    invoke-virtual {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Form;->unregisterPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    goto :goto_0
.end method

.method public HeightPercent(I)V
    .locals 7
    .param p1, "pCent"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the vertical height of the %type% as a percentage of the height of the Screen."
    .end annotation

    .prologue
    .line 209
    if-ltz p1, :cond_0

    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const-string v2, "HeightPercent"

    const/16 v3, 0xaf1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 210
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_1
    neg-int v1, p1

    add-int/lit16 v0, v1, -0x3e8

    .line 215
    .local v0, "v":I
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    goto :goto_0
.end method

.method public Row()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 259
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->row:I

    return v0
.end method

.method public Row(I)V
    .locals 0
    .param p1, "row"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 269
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->row:I

    .line 270
    return-void
.end method

.method public Visible(Z)V
    .locals 2
    .param p1, "visibility"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the %type% should be visible on the screen. Value is true if the %type% is showing and false if hidden."
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 76
    return-void

    .line 75
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Width()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 88
    .local v0, "zWidth":I
    return v0
.end method

.method public Width(I)V
    .locals 2
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the horizontal width of the %type%, measured in pixels."
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 100
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetWidth:I

    .line 101
    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    sget-object v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->WIDTH:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/appinventor/components/runtime/Form;->registerPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    sget-object v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->WIDTH:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    invoke-virtual {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Form;->unregisterPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    goto :goto_0
.end method

.method public WidthPercent(I)V
    .locals 7
    .param p1, "pCent"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the horizontal width of the %type% as a percentage of the width of the Screen."
    .end annotation

    .prologue
    .line 119
    if-ltz p1, :cond_0

    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const-string v2, "WidthPercent"

    const/16 v3, 0xaf1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 120
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_1
    neg-int v1, p1

    add-int/lit16 v0, v1, -0x3e8

    .line 125
    .local v0, "v":I
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    goto :goto_0
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public getSetHeight()I
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentHeightHolder:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height()I

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentHeightHolder:I

    goto :goto_0
.end method

.method public getSetWidth()I
    .locals 2

    .prologue
    .line 135
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentWidthHolder:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width()I

    move-result v0

    .line 138
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentWidthHolder:I

    goto :goto_0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public setLastHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentHeightHolder:I

    .line 145
    return-void
.end method

.method public setLastWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentWidthHolder:I

    .line 131
    return-void
.end method
