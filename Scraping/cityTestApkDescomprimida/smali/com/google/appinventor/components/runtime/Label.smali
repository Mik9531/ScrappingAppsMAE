.class public final Lcom/google/appinventor/components/runtime/Label;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "Label.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/AccessibleComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Label displays a piece of text, which is specified through the <code>Text</code> property.  Other properties, all of which can be set in the Designer or Blocks Editor, control the appearance and placement of the text."
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_LABEL_MARGIN:I = 0x2


# instance fields
.field private backgroundColor:I

.field private bold:Z

.field private defaultLabelMarginInDp:I

.field private fontTypeface:I

.field private hasMargins:Z

.field private htmlContent:Ljava/lang/String;

.field private htmlFormat:Z

.field private isBigText:Z

.field private italic:Z

.field private final linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private textAlignment:I

.field private textColor:I

.field private final view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v5, 0x0

    .line 91
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 49
    iput v5, p0, Lcom/google/appinventor/components/runtime/Label;->defaultLabelMarginInDp:I

    .line 83
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Label;->isBigText:Z

    .line 92
    new-instance v1, Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    .line 95
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 101
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 104
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/Label;->dpToPx(Landroid/view/View;I)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Label;->defaultLabelMarginInDp:I

    .line 115
    :goto_0
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/Label;->TextAlignment(I)V

    .line 116
    const v1, 0xffffff

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Label;->BackgroundColor(I)V

    .line 117
    iput v5, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    .line 118
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    iget v2, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Label;->bold:Z

    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/Label;->italic:Z

    invoke-static {v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 119
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Label;->FontSize(F)V

    .line 120
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Label;->Text(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/Label;->TextColor(I)V

    .line 122
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/Label;->HTMLFormat(Z)V

    .line 123
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Label;->HasMargins(Z)V

    .line 124
    return-void

    .line 108
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iput v5, p0, Lcom/google/appinventor/components/runtime/Label;->defaultLabelMarginInDp:I

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 110
    const-string v1, "Label"

    const-string v2, "Error: The label\'s view does not have linear layout parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private static dpToPx(Landroid/view/View;I)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dp"    # I

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 129
    .local v0, "density":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private setLabelMargins(Z)V
    .locals 2
    .param p1, "hasMargins"    # Z

    .prologue
    .line 293
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->defaultLabelMarginInDp:I

    .line 294
    .local v0, "m":I
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->linearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 295
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 296
    return-void

    .line 293
    .end local v0    # "m":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 181
    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 194
    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->backgroundColor:I

    .line 195
    if-eqz p1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    const v1, 0xffffff

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public FontBold(Z)V
    .locals 3
    .param p1, "bold"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->bold:Z

    .line 228
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Label;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 229
    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->bold:Z

    return v0
.end method

.method public FontItalic(Z)V
    .locals 3
    .param p1, "italic"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->italic:Z

    .line 257
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Label;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 258
    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .locals 2
    .param p1, "size"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 319
    const/high16 v0, 0x41600000    # 14.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->isBigText:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->BigDefaultText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_0
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 339
    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    return v0
.end method

.method public FontTypeface(I)V
    .locals 4
    .param p1, "typeface"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 356
    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    .line 357
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Label;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Label;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 358
    return-void
.end method

.method public HTMLContent()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->htmlFormat:Z

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->htmlContent:Ljava/lang/String;

    .line 399
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public HTMLFormat(Z)V
    .locals 2
    .param p1, "fmt"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 428
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->htmlFormat:Z

    .line 429
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Label;->htmlFormat:Z

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "txt":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 436
    :goto_0
    return-void

    .line 433
    .end local v0    # "txt":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 434
    .restart local v0    # "txt":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public HTMLFormat()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then this label will show html text else it will show plain text. Note: Not all HTML is supported."
    .end annotation

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->htmlFormat:Z

    return v0
.end method

.method public HasMargins(Z)V
    .locals 0
    .param p1, "hasMargins"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->hasMargins:Z

    .line 289
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Label;->setLabelMargins(Z)V

    .line 290
    return-void
.end method

.method public HasMargins()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports whether or not the label appears with margins.  All four margins (left, right, top, bottom) are the same.  This property has no effect in the designer, where labels are always shown with margins."
        userVisible = true
    .end annotation

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->hasMargins:Z

    return v0
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->htmlFormat:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 385
    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->htmlContent:Ljava/lang/String;

    .line 386
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 150
    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->textAlignment:I

    return v0
.end method

.method public TextAlignment(I)V
    .locals 2
    .param p1, "alignment"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 167
    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->textAlignment:I

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 169
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 448
    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 461
    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->textColor:I

    .line 462
    if-eqz p1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_1
    const/high16 v0, -0x1000000

    goto :goto_1
.end method

.method public getHighContrast()Z
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public getLargeFont()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->isBigText:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    return-object v0
.end method

.method public setHighContrast(Z)V
    .locals 0
    .param p1, "isHighContrast"    # Z

    .prologue
    .line 472
    return-void
.end method

.method public setLargeFont(Z)V
    .locals 5
    .param p1, "isLargeFont"    # Z

    .prologue
    const/high16 v4, 0x41600000    # 14.0f

    .line 481
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    .line 482
    :cond_0
    if-eqz p1, :cond_2

    .line 483
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 488
    :cond_1
    :goto_0
    return-void

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_0
.end method
