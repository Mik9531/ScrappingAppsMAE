.class Llife/inventor/CardView/CardView$MaterialCard$1;
.super Ljava/lang/Object;
.source "CardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llife/inventor/CardView/CardView$MaterialCard;-><init>(Llife/inventor/CardView/CardView;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llife/inventor/CardView/CardView$MaterialCard;

.field final synthetic val$id:I

.field final synthetic val$this$0:Llife/inventor/CardView/CardView;


# direct methods
.method constructor <init>(Llife/inventor/CardView/CardView$MaterialCard;Llife/inventor/CardView/CardView;I)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Llife/inventor/CardView/CardView$MaterialCard$1;->this$1:Llife/inventor/CardView/CardView$MaterialCard;

    iput-object p2, p0, Llife/inventor/CardView/CardView$MaterialCard$1;->val$this$0:Llife/inventor/CardView/CardView;

    iput p3, p0, Llife/inventor/CardView/CardView$MaterialCard$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 312
    iget-object v0, p0, Llife/inventor/CardView/CardView$MaterialCard$1;->this$1:Llife/inventor/CardView/CardView$MaterialCard;

    iget-object v0, v0, Llife/inventor/CardView/CardView$MaterialCard;->this$0:Llife/inventor/CardView/CardView;

    iget v1, p0, Llife/inventor/CardView/CardView$MaterialCard$1;->val$id:I

    invoke-virtual {v0, v1}, Llife/inventor/CardView/CardView;->AfterPicking(I)V

    .line 313
    return-void
.end method
