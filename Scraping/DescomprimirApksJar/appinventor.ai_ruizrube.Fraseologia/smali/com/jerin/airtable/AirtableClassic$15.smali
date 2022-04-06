.class Lcom/jerin/airtable/AirtableClassic$15;
.super Ljava/lang/Object;
.source "AirtableClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jerin/airtable/AirtableClassic;->deleteRowNum(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jerin/airtable/AirtableClassic;

.field final synthetic val$responseCode:I


# direct methods
.method constructor <init>(Lcom/jerin/airtable/AirtableClassic;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jerin/airtable/AirtableClassic;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/jerin/airtable/AirtableClassic$15;->this$0:Lcom/jerin/airtable/AirtableClassic;

    iput p2, p0, Lcom/jerin/airtable/AirtableClassic$15;->val$responseCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/jerin/airtable/AirtableClassic$15;->this$0:Lcom/jerin/airtable/AirtableClassic;

    iget v1, p0, Lcom/jerin/airtable/AirtableClassic$15;->val$responseCode:I

    invoke-virtual {v0, v1}, Lcom/jerin/airtable/AirtableClassic;->DeletedRowByNumber(I)V

    .line 704
    return-void
.end method
