.class Lcom/google/appinventor/components/runtime/Twitter$8$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Twitter$8;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Twitter$8;

    .prologue
    .line 780
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$8$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 783
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$8$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$8;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter$8;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->access$1300(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 784
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$8$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$8;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter$8;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/DirectMessage;

    .line 785
    .local v0, "message":Ltwitter4j/DirectMessage;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$8$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$8;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter$8;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->access$1300(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ltwitter4j/DirectMessage;->getSenderScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 786
    invoke-interface {v0}, Ltwitter4j/DirectMessage;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 785
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 788
    .end local v0    # "message":Ltwitter4j/DirectMessage;
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$8$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$8;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter$8;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$8$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$8;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter$8;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->access$1300(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Twitter;->DirectMessagesReceived(Ljava/util/List;)V

    .line 789
    return-void
.end method
