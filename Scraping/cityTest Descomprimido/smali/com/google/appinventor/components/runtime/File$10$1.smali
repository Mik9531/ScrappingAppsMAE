.class Lcom/google/appinventor/components/runtime/File$10$1;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File$10;->process(Ljava/io/OutputStreamWriter;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/File$10;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/File$10;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$10$1;->this$1:Lcom/google/appinventor/components/runtime/File$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$10$1;->this$1:Lcom/google/appinventor/components/runtime/File$10;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/File$10;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$10$1;->this$1:Lcom/google/appinventor/components/runtime/File$10;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/File$10;->val$filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/File;->AfterFileSaved(Ljava/lang/String;)V

    .line 684
    return-void
.end method
