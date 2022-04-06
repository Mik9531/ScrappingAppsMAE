.class Llife/inventor/CardView/CardView$cardProperties;
.super Ljava/lang/Object;
.source "CardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llife/inventor/CardView/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "cardProperties"
.end annotation


# instance fields
.field alto:I

.field altoImagen:I

.field ancho:I

.field density:F

.field display:Landroid/util/DisplayMetrics;

.field height:I

.field final synthetic this$0:Llife/inventor/CardView/CardView;

.field width:I


# direct methods
.method private constructor <init>(Llife/inventor/CardView/CardView;)V
    .locals 2

    .prologue
    .line 181
    iput-object p1, p0, Llife/inventor/CardView/CardView$cardProperties;->this$0:Llife/inventor/CardView/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iget-object v0, p0, Llife/inventor/CardView/CardView$cardProperties;->this$0:Llife/inventor/CardView/CardView;

    invoke-static {v0}, Llife/inventor/CardView/CardView;->access$000(Llife/inventor/CardView/CardView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Llife/inventor/CardView/CardView$cardProperties;->display:Landroid/util/DisplayMetrics;

    .line 183
    iget-object v0, p0, Llife/inventor/CardView/CardView$cardProperties;->display:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Llife/inventor/CardView/CardView$cardProperties;->width:I

    .line 184
    iget-object v0, p0, Llife/inventor/CardView/CardView$cardProperties;->display:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Llife/inventor/CardView/CardView$cardProperties;->height:I

    .line 185
    iget-object v0, p0, Llife/inventor/CardView/CardView$cardProperties;->display:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Llife/inventor/CardView/CardView$cardProperties;->density:F

    .line 191
    iget v0, p0, Llife/inventor/CardView/CardView$cardProperties;->width:I

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Llife/inventor/CardView/CardView$cardProperties;->ancho:I

    .line 192
    iget v0, p0, Llife/inventor/CardView/CardView$cardProperties;->ancho:I

    iget v1, p0, Llife/inventor/CardView/CardView$cardProperties;->ancho:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iput v0, p0, Llife/inventor/CardView/CardView$cardProperties;->alto:I

    .line 194
    iget v0, p0, Llife/inventor/CardView/CardView$cardProperties;->ancho:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x10

    iput v0, p0, Llife/inventor/CardView/CardView$cardProperties;->altoImagen:I

    return-void
.end method

.method synthetic constructor <init>(Llife/inventor/CardView/CardView;Llife/inventor/CardView/CardView$1;)V
    .locals 0
    .param p1, "x0"    # Llife/inventor/CardView/CardView;
    .param p2, "x1"    # Llife/inventor/CardView/CardView$1;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Llife/inventor/CardView/CardView$cardProperties;-><init>(Llife/inventor/CardView/CardView;)V

    return-void
.end method


# virtual methods
.method public getPixels(I)I
    .locals 2
    .param p1, "dp"    # I

    .prologue
    .line 188
    int-to-float v0, p1

    iget v1, p0, Llife/inventor/CardView/CardView$cardProperties;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
