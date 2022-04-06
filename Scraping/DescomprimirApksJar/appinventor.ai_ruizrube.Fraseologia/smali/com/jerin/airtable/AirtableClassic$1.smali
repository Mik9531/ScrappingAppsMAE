.class Lcom/jerin/airtable/AirtableClassic$1;
.super Ljava/lang/Object;
.source "AirtableClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jerin/airtable/AirtableClassic;->GetAllData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jerin/airtable/AirtableClassic;

.field final synthetic val$jsonarray:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/jerin/airtable/AirtableClassic;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jerin/airtable/AirtableClassic;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/jerin/airtable/AirtableClassic$1;->this$0:Lcom/jerin/airtable/AirtableClassic;

    iput-object p2, p0, Lcom/jerin/airtable/AirtableClassic$1;->val$jsonarray:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jerin/airtable/AirtableClassic$1;->this$0:Lcom/jerin/airtable/AirtableClassic;

    iget-object v1, p0, Lcom/jerin/airtable/AirtableClassic$1;->this$0:Lcom/jerin/airtable/AirtableClassic;

    invoke-static {v1}, Lcom/jerin/airtable/AirtableClassic;->access$000(Lcom/jerin/airtable/AirtableClassic;)I

    move-result v1

    iget-object v2, p0, Lcom/jerin/airtable/AirtableClassic$1;->this$0:Lcom/jerin/airtable/AirtableClassic;

    invoke-static {v2}, Lcom/jerin/airtable/AirtableClassic;->access$100(Lcom/jerin/airtable/AirtableClassic;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jerin/airtable/AirtableClassic$1;->val$jsonarray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jerin/airtable/AirtableClassic;->GotAllRows(ILjava/lang/String;I)V

    .line 155
    return-void
.end method
