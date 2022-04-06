.class Lcom/jerin/airtable/AirtableClassic$10;
.super Ljava/lang/Object;
.source "AirtableClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jerin/airtable/AirtableClassic;->getRow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jerin/airtable/AirtableClassic;

.field final synthetic val$responseCode:I

.field final synthetic val$row:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/jerin/airtable/AirtableClassic;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jerin/airtable/AirtableClassic;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/jerin/airtable/AirtableClassic$10;->this$0:Lcom/jerin/airtable/AirtableClassic;

    iput p2, p0, Lcom/jerin/airtable/AirtableClassic$10;->val$responseCode:I

    iput-object p3, p0, Lcom/jerin/airtable/AirtableClassic$10;->val$row:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/jerin/airtable/AirtableClassic$10;->this$0:Lcom/jerin/airtable/AirtableClassic;

    iget v1, p0, Lcom/jerin/airtable/AirtableClassic$10;->val$responseCode:I

    iget-object v2, p0, Lcom/jerin/airtable/AirtableClassic$10;->val$row:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/jerin/airtable/AirtableClassic;->GotRow(ILjava/util/List;)V

    .line 513
    return-void
.end method
