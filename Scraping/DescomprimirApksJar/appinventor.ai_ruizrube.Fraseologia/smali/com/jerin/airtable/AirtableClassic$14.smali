.class Lcom/jerin/airtable/AirtableClassic$14;
.super Ljava/lang/Object;
.source "AirtableClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jerin/airtable/AirtableClassic;->DeleteRowNum(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jerin/airtable/AirtableClassic;

.field final synthetic val$rowNumber:I


# direct methods
.method constructor <init>(Lcom/jerin/airtable/AirtableClassic;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jerin/airtable/AirtableClassic;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/jerin/airtable/AirtableClassic$14;->this$0:Lcom/jerin/airtable/AirtableClassic;

    iput p2, p0, Lcom/jerin/airtable/AirtableClassic$14;->val$rowNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/jerin/airtable/AirtableClassic$14;->this$0:Lcom/jerin/airtable/AirtableClassic;

    iget v2, p0, Lcom/jerin/airtable/AirtableClassic$14;->val$rowNumber:I

    invoke-virtual {v1, v2}, Lcom/jerin/airtable/AirtableClassic;->deleteRowNum(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :goto_0
    return-void

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
