.class Lcom/jerin/airtable/AirtableClassic$8;
.super Ljava/lang/Object;
.source "AirtableClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jerin/airtable/AirtableClassic;->ColumnWithOffset(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jerin/airtable/AirtableClassic;

.field final synthetic val$columnValues:Ljava/util/List;

.field final synthetic val$createdTimes:Ljava/util/List;

.field final synthetic val$responseCode:I

.field final synthetic val$rowIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/jerin/airtable/AirtableClassic;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jerin/airtable/AirtableClassic;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/jerin/airtable/AirtableClassic$8;->this$0:Lcom/jerin/airtable/AirtableClassic;

    iput p2, p0, Lcom/jerin/airtable/AirtableClassic$8;->val$responseCode:I

    iput-object p3, p0, Lcom/jerin/airtable/AirtableClassic$8;->val$columnValues:Ljava/util/List;

    iput-object p4, p0, Lcom/jerin/airtable/AirtableClassic$8;->val$rowIds:Ljava/util/List;

    iput-object p5, p0, Lcom/jerin/airtable/AirtableClassic$8;->val$createdTimes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 448
    iget-object v0, p0, Lcom/jerin/airtable/AirtableClassic$8;->this$0:Lcom/jerin/airtable/AirtableClassic;

    iget v1, p0, Lcom/jerin/airtable/AirtableClassic$8;->val$responseCode:I

    iget-object v2, p0, Lcom/jerin/airtable/AirtableClassic$8;->val$columnValues:Ljava/util/List;

    iget-object v3, p0, Lcom/jerin/airtable/AirtableClassic$8;->val$rowIds:Ljava/util/List;

    iget-object v4, p0, Lcom/jerin/airtable/AirtableClassic$8;->val$createdTimes:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jerin/airtable/AirtableClassic;->GotColumn(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 449
    return-void
.end method
