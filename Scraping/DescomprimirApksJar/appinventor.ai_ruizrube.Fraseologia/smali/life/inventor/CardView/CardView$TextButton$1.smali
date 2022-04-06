.class Llife/inventor/CardView/CardView$TextButton$1;
.super Ljava/lang/Object;
.source "CardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llife/inventor/CardView/CardView$TextButton;-><init>(Llife/inventor/CardView/CardView;Landroid/content/Context;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llife/inventor/CardView/CardView$TextButton;

.field final synthetic val$id:I

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$this$0:Llife/inventor/CardView/CardView;


# direct methods
.method constructor <init>(Llife/inventor/CardView/CardView$TextButton;Llife/inventor/CardView/CardView;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Llife/inventor/CardView/CardView$TextButton$1;->this$1:Llife/inventor/CardView/CardView$TextButton;

    iput-object p2, p0, Llife/inventor/CardView/CardView$TextButton$1;->val$this$0:Llife/inventor/CardView/CardView;

    iput p3, p0, Llife/inventor/CardView/CardView$TextButton$1;->val$id:I

    iput-object p4, p0, Llife/inventor/CardView/CardView$TextButton$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 333
    iget-object v0, p0, Llife/inventor/CardView/CardView$TextButton$1;->this$1:Llife/inventor/CardView/CardView$TextButton;

    iget-object v0, v0, Llife/inventor/CardView/CardView$TextButton;->this$0:Llife/inventor/CardView/CardView;

    iget v1, p0, Llife/inventor/CardView/CardView$TextButton$1;->val$id:I

    iget-object v2, p0, Llife/inventor/CardView/CardView$TextButton$1;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Llife/inventor/CardView/CardView;->ButtonClick(ILjava/lang/String;)V

    .line 334
    return-void
.end method
