.class Lcom/google/appinventor/components/runtime/Form$15$1;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final deniedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Form$15;

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form$15;Ljava/util/Iterator;)V
    .locals 1
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Form$15;

    .prologue
    .line 2838
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$15$1;->this$1:Lcom/google/appinventor/components/runtime/Form$15;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Form$15$1;->val$it:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form$15$1;->deniedPermissions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    .line 2843
    if-nez p2, :cond_0

    .line 2844
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$15$1;->deniedPermissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2846
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$15$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2847
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$15$1;->this$1:Lcom/google/appinventor/components/runtime/Form$15;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Form$15;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$15$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 2855
    :goto_0
    return-void

    .line 2849
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$15$1;->deniedPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2850
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$15$1;->this$1:Lcom/google/appinventor/components/runtime/Form$15;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form$15;->val$request:Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->onGranted()V

    goto :goto_0

    .line 2852
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$15$1;->this$1:Lcom/google/appinventor/components/runtime/Form$15;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Form$15;->val$request:Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$15$1;->deniedPermissions:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->onDenied([Ljava/lang/String;)V

    goto :goto_0
.end method
