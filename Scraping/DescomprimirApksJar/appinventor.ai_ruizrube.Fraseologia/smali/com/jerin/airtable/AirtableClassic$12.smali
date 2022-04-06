.class Lcom/jerin/airtable/AirtableClassic$12;
.super Ljava/lang/Object;
.source "AirtableClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jerin/airtable/AirtableClassic;->SetCell(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jerin/airtable/AirtableClassic;

.field final synthetic val$columnName:Ljava/lang/String;

.field final synthetic val$rowNumber:I

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jerin/airtable/AirtableClassic;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jerin/airtable/AirtableClassic;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/jerin/airtable/AirtableClassic$12;->this$0:Lcom/jerin/airtable/AirtableClassic;

    iput p2, p0, Lcom/jerin/airtable/AirtableClassic$12;->val$rowNumber:I

    iput-object p3, p0, Lcom/jerin/airtable/AirtableClassic$12;->val$columnName:Ljava/lang/String;

    iput-object p4, p0, Lcom/jerin/airtable/AirtableClassic$12;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/jerin/airtable/AirtableClassic$12;->this$0:Lcom/jerin/airtable/AirtableClassic;

    iget v2, p0, Lcom/jerin/airtable/AirtableClassic$12;->val$rowNumber:I

    iget-object v3, p0, Lcom/jerin/airtable/AirtableClassic$12;->val$columnName:Ljava/lang/String;

    iget-object v4, p0, Lcom/jerin/airtable/AirtableClassic$12;->val$value:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/jerin/airtable/AirtableClassic;->setCell(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/jerin/airtable/AirtableClassic$12;->this$0:Lcom/jerin/airtable/AirtableClassic;

    invoke-static {v1}, Lcom/jerin/airtable/AirtableClassic;->access$200(Lcom/jerin/airtable/AirtableClassic;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Unable to update"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
