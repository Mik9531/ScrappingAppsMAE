.class public final Lcom/google/zxing/client/android/result/ResultHandlerFactory;
.super Ljava/lang/Object;
.source "ResultHandlerFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static makeResultHandler(Landroid/app/Activity;Lcom/google/zxing/Result;)Lcom/google/zxing/client/android/result/ResultHandler;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 36
    invoke-static {p1}, Lcom/google/zxing/client/android/result/ResultHandlerFactory;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    .line 37
    .local v0, "result":Lcom/google/zxing/client/result/ParsedResult;
    new-instance v1, Lcom/google/zxing/client/android/result/TextResultHandler;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/zxing/client/android/result/TextResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    return-object v1
.end method

.method private static parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1
    .param p0, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    return-object v0
.end method
