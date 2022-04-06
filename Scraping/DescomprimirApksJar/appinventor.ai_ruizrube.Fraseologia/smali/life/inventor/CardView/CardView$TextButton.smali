.class Llife/inventor/CardView/CardView$TextButton;
.super Landroid/widget/TextView;
.source "CardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llife/inventor/CardView/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextButton"
.end annotation


# instance fields
.field final synthetic this$0:Llife/inventor/CardView/CardView;


# direct methods
.method public constructor <init>(Llife/inventor/CardView/CardView;Landroid/content/Context;Ljava/lang/String;II)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "idTextView"    # I

    .prologue
    const/16 v4, 0x10

    .line 319
    iput-object p1, p0, Llife/inventor/CardView/CardView$TextButton;->this$0:Llife/inventor/CardView/CardView;

    .line 320
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 321
    new-instance v0, Llife/inventor/CardView/CardView$cardProperties;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Llife/inventor/CardView/CardView$cardProperties;-><init>(Llife/inventor/CardView/CardView;Llife/inventor/CardView/CardView$1;)V

    .line 322
    .local v0, "c":Llife/inventor/CardView/CardView$cardProperties;
    invoke-virtual {p0, p5}, Llife/inventor/CardView/CardView$TextButton;->setId(I)V

    .line 323
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {p0, v1}, Llife/inventor/CardView/CardView$TextButton;->setTextSize(F)V

    .line 324
    invoke-static {p1}, Llife/inventor/CardView/CardView;->access$400(Llife/inventor/CardView/CardView;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Llife/inventor/CardView/CardView$TextButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 325
    const v1, 0x3f0f5c29    # 0.56f

    invoke-virtual {p0, v1}, Llife/inventor/CardView/CardView$TextButton;->setAlpha(F)V

    .line 326
    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Llife/inventor/CardView/CardView$TextButton;->setTextColor(I)V

    .line 327
    invoke-virtual {p0, p3}, Llife/inventor/CardView/CardView$TextButton;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {v0, v4}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v1

    invoke-virtual {v0, v4}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v2

    invoke-virtual {v0, v4}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v3

    invoke-virtual {v0, v4}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Llife/inventor/CardView/CardView$TextButton;->setPadding(IIII)V

    .line 329
    new-instance v1, Llife/inventor/CardView/CardView$TextButton$1;

    invoke-direct {v1, p0, p1, p4, p3}, Llife/inventor/CardView/CardView$TextButton$1;-><init>(Llife/inventor/CardView/CardView$TextButton;Llife/inventor/CardView/CardView;ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Llife/inventor/CardView/CardView$TextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    return-void
.end method
