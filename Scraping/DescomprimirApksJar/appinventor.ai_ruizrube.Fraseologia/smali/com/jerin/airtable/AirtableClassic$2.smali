.class Lcom/jerin/airtable/AirtableClassic$2;
.super Ljava/lang/Object;
.source "AirtableClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jerin/airtable/AirtableClassic;->GetAllWithOffset(Ljava/lang/String;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jerin/airtable/AirtableClassic;

.field final synthetic val$totalRows:I


# direct methods
.method constructor <init>(Lcom/jerin/airtable/AirtableClassic;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jerin/airtable/AirtableClassic;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/jerin/airtable/AirtableClassic$2;->this$0:Lcom/jerin/airtable/AirtableClassic;

    iput p2, p0, Lcom/jerin/airtable/AirtableClassic$2;->val$totalRows:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/jerin/airtable/AirtableClassic$2;->this$0:Lcom/jerin/airtable/AirtableClassic;

    iget-object v1, p0, Lcom/jerin/airtable/AirtableClassic$2;->this$0:Lcom/jerin/airtable/AirtableClassic;

    invoke-static {v1}, Lcom/jerin/airtable/AirtableClassic;->access$000(Lcom/jerin/airtable/AirtableClassic;)I

    move-result v1

    iget-object v2, p0, Lcom/jerin/airtable/AirtableClassic$2;->this$0:Lcom/jerin/airtable/AirtableClassic;

    invoke-static {v2}, Lcom/jerin/airtable/AirtableClassic;->access$100(Lcom/jerin/airtable/AirtableClassic;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/jerin/airtable/AirtableClassic$2;->val$totalRows:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/jerin/airtable/AirtableClassic;->GotAllRows(ILjava/lang/String;I)V

    .line 209
    return-void
.end method
