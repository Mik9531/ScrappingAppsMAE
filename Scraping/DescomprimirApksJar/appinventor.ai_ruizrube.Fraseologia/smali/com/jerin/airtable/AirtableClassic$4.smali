.class Lcom/jerin/airtable/AirtableClassic$4;
.super Ljava/lang/Object;
.source "AirtableClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jerin/airtable/AirtableClassic;->Cell(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jerin/airtable/AirtableClassic;

.field final synthetic val$cell:Ljava/lang/String;

.field final synthetic val$createdTime:Ljava/lang/String;

.field final synthetic val$responseCode:I

.field final synthetic val$rowId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jerin/airtable/AirtableClassic;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jerin/airtable/AirtableClassic;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/jerin/airtable/AirtableClassic$4;->this$0:Lcom/jerin/airtable/AirtableClassic;

    iput p2, p0, Lcom/jerin/airtable/AirtableClassic$4;->val$responseCode:I

    iput-object p3, p0, Lcom/jerin/airtable/AirtableClassic$4;->val$cell:Ljava/lang/String;

    iput-object p4, p0, Lcom/jerin/airtable/AirtableClassic$4;->val$rowId:Ljava/lang/String;

    iput-object p5, p0, Lcom/jerin/airtable/AirtableClassic$4;->val$createdTime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 274
    iget-object v0, p0, Lcom/jerin/airtable/AirtableClassic$4;->this$0:Lcom/jerin/airtable/AirtableClassic;

    iget v1, p0, Lcom/jerin/airtable/AirtableClassic$4;->val$responseCode:I

    iget-object v2, p0, Lcom/jerin/airtable/AirtableClassic$4;->val$cell:Ljava/lang/String;

    iget-object v3, p0, Lcom/jerin/airtable/AirtableClassic$4;->val$rowId:Ljava/lang/String;

    iget-object v4, p0, Lcom/jerin/airtable/AirtableClassic$4;->val$createdTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jerin/airtable/AirtableClassic;->GotCell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method
