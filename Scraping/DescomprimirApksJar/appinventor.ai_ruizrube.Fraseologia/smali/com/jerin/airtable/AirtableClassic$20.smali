.class Lcom/jerin/airtable/AirtableClassic$20;
.super Ljava/lang/Object;
.source "AirtableClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jerin/airtable/AirtableClassic;->GetAllRows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jerin/airtable/AirtableClassic;


# direct methods
.method constructor <init>(Lcom/jerin/airtable/AirtableClassic;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jerin/airtable/AirtableClassic;

    .prologue
    .line 865
    iput-object p1, p0, Lcom/jerin/airtable/AirtableClassic$20;->this$0:Lcom/jerin/airtable/AirtableClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 869
    :try_start_0
    iget-object v1, p0, Lcom/jerin/airtable/AirtableClassic$20;->this$0:Lcom/jerin/airtable/AirtableClassic;

    invoke-virtual {v1}, Lcom/jerin/airtable/AirtableClassic;->GetAllData()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :goto_0
    return-void

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
