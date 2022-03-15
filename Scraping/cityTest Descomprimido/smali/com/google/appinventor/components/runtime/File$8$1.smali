.class Lcom/google/appinventor/components/runtime/File$8$1;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File$8;->process(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/File$8;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File$8;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/File$8;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$8$1;->this$1:Lcom/google/appinventor/components/runtime/File$8;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/File$8$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$8$1;->this$1:Lcom/google/appinventor/components/runtime/File$8;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/File$8;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$8$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/File;->GotText(Ljava/lang/String;)V

    .line 575
    return-void
.end method
