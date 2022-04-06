.class Lcom/jerin/airtable/AirtableClassic$6;
.super Ljava/lang/Object;
.source "AirtableClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jerin/airtable/AirtableClassic;->GetColumn(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jerin/airtable/AirtableClassic;

.field final synthetic val$columnName:Ljava/lang/String;

.field final synthetic val$maxRecord:I


# direct methods
.method constructor <init>(Lcom/jerin/airtable/AirtableClassic;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jerin/airtable/AirtableClassic;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/jerin/airtable/AirtableClassic$6;->this$0:Lcom/jerin/airtable/AirtableClassic;

    iput-object p2, p0, Lcom/jerin/airtable/AirtableClassic$6;->val$columnName:Ljava/lang/String;

    iput p3, p0, Lcom/jerin/airtable/AirtableClassic$6;->val$maxRecord:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/jerin/airtable/AirtableClassic$6;->this$0:Lcom/jerin/airtable/AirtableClassic;

    iget-object v2, p0, Lcom/jerin/airtable/AirtableClassic$6;->val$columnName:Ljava/lang/String;

    iget v3, p0, Lcom/jerin/airtable/AirtableClassic$6;->val$maxRecord:I

    invoke-virtual {v1, v2, v3}, Lcom/jerin/airtable/AirtableClassic;->Column(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
