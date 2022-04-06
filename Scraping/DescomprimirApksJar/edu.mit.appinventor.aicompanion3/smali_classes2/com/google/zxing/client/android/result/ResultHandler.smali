.class public abstract Lcom/google/zxing/client/android/result/ResultHandler;
.super Ljava/lang/Object;
.source "ResultHandler.java"


# static fields
.field private static final ADDRESS_TYPE_STRINGS:[Ljava/lang/String;

.field private static final ADDRESS_TYPE_VALUES:[I

.field private static final EMAIL_TYPE_STRINGS:[Ljava/lang/String;

.field private static final EMAIL_TYPE_VALUES:[I

.field private static final GOOGLE_SHOPPER_ACTIVITY:Ljava/lang/String; = "com.google.android.apps.shopper.results.SearchResultsActivity"

.field private static final GOOGLE_SHOPPER_PACKAGE:Ljava/lang/String; = "com.google.android.apps.shopper"

.field private static final MARKET_REFERRER_SUFFIX:Ljava/lang/String; = "&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan"

.field private static final MARKET_URI_PREFIX:Ljava/lang/String; = "market://details?id="

.field public static final MAX_BUTTON_COUNT:I = 0x4

.field private static final NO_TYPE:I = -0x1

.field private static final PHONE_TYPE_STRINGS:[Ljava/lang/String;

.field private static final PHONE_TYPE_VALUES:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final customProductSearch:Ljava/lang/String;

.field private final rawResult:Lcom/google/zxing/Result;

.field private final result:Lcom/google/zxing/client/result/ParsedResult;

.field private final shopperMarketListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 57
    const-class v0, Lcom/google/zxing/client/android/result/ResultHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/result/ResultHandler;->TAG:Ljava/lang/String;

    .line 66
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "home"

    aput-object v1, v0, v4

    const-string v1, "work"

    aput-object v1, v0, v5

    const-string v1, "mobile"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/zxing/client/android/result/ResultHandler;->EMAIL_TYPE_STRINGS:[Ljava/lang/String;

    .line 67
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "home"

    aput-object v1, v0, v4

    const-string v1, "work"

    aput-object v1, v0, v5

    const-string v1, "mobile"

    aput-object v1, v0, v3

    const-string v1, "fax"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "pager"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "main"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/result/ResultHandler;->PHONE_TYPE_STRINGS:[Ljava/lang/String;

    .line 68
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "home"

    aput-object v1, v0, v4

    const-string v1, "work"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/client/android/result/ResultHandler;->ADDRESS_TYPE_STRINGS:[Ljava/lang/String;

    .line 69
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/client/android/result/ResultHandler;->EMAIL_TYPE_VALUES:[I

    .line 74
    new-array v0, v7, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/client/android/result/ResultHandler;->PHONE_TYPE_VALUES:[I

    .line 82
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/client/android/result/ResultHandler;->ADDRESS_TYPE_VALUES:[I

    return-void

    .line 69
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
    .end array-data

    .line 74
    :array_1
    .array-data 4
        0x1
        0x3
        0x2
        0x4
        0x6
        0xc
    .end array-data

    .line 82
    :array_2
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    .line 106
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;
    .param p3, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/google/zxing/client/android/result/ResultHandler$1;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/result/ResultHandler$1;-><init>(Lcom/google/zxing/client/android/result/ResultHandler;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/result/ResultHandler;->shopperMarketListener:Landroid/content/DialogInterface$OnClickListener;

    .line 109
    iput-object p2, p0, Lcom/google/zxing/client/android/result/ResultHandler;->result:Lcom/google/zxing/client/result/ParsedResult;

    .line 110
    iput-object p1, p0, Lcom/google/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    .line 111
    iput-object p3, p0, Lcom/google/zxing/client/android/result/ResultHandler;->rawResult:Lcom/google/zxing/Result;

    .line 112
    invoke-direct {p0}, Lcom/google/zxing/client/android/result/ResultHandler;->parseCustomSearchURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/client/android/result/ResultHandler;->customProductSearch:Ljava/lang/String;

    .line 116
    return-void
.end method

.method private static doToContractType(Ljava/lang/String;[Ljava/lang/String;[I)I
    .locals 4
    .param p0, "typeString"    # Ljava/lang/String;
    .param p1, "types"    # [Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    const/4 v2, -0x1

    .line 289
    if-nez p0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v2

    .line 292
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 293
    aget-object v1, p1, v0

    .line 294
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 295
    :cond_2
    aget v2, p2, v0

    goto :goto_0

    .line 292
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private parseCustomSearchURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    return-object v0
.end method

.method private static putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 485
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 486
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    :cond_0
    return-void
.end method

.method private static toAddressContractType(Ljava/lang/String;)I
    .locals 2
    .param p0, "typeString"    # Ljava/lang/String;

    .prologue
    .line 285
    sget-object v0, Lcom/google/zxing/client/android/result/ResultHandler;->ADDRESS_TYPE_STRINGS:[Ljava/lang/String;

    sget-object v1, Lcom/google/zxing/client/android/result/ResultHandler;->ADDRESS_TYPE_VALUES:[I

    invoke-static {p0, v0, v1}, Lcom/google/zxing/client/android/result/ResultHandler;->doToContractType(Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method private static toEmailContractType(Ljava/lang/String;)I
    .locals 2
    .param p0, "typeString"    # Ljava/lang/String;

    .prologue
    .line 277
    sget-object v0, Lcom/google/zxing/client/android/result/ResultHandler;->EMAIL_TYPE_STRINGS:[Ljava/lang/String;

    sget-object v1, Lcom/google/zxing/client/android/result/ResultHandler;->EMAIL_TYPE_VALUES:[I

    invoke-static {p0, v0, v1}, Lcom/google/zxing/client/android/result/ResultHandler;->doToContractType(Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method private static toPhoneContractType(Ljava/lang/String;)I
    .locals 2
    .param p0, "typeString"    # Ljava/lang/String;

    .prologue
    .line 281
    sget-object v0, Lcom/google/zxing/client/android/result/ResultHandler;->PHONE_TYPE_STRINGS:[Ljava/lang/String;

    sget-object v1, Lcom/google/zxing/client/android/result/ResultHandler;->PHONE_TYPE_VALUES:[I

    invoke-static {p0, v0, v1}, Lcom/google/zxing/client/android/result/ResultHandler;->doToContractType(Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method


# virtual methods
.method final addContact([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "pronunciation"    # Ljava/lang/String;
    .param p3, "phoneNumbers"    # [Ljava/lang/String;
    .param p4, "phoneTypes"    # [Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;
    .param p6, "emailTypes"    # [Ljava/lang/String;
    .param p7, "note"    # Ljava/lang/String;
    .param p8, "instantMessenger"    # Ljava/lang/String;
    .param p9, "address"    # Ljava/lang/String;
    .param p10, "addressType"    # Ljava/lang/String;
    .param p11, "org"    # Ljava/lang/String;
    .param p12, "title"    # Ljava/lang/String;
    .param p13, "url"    # Ljava/lang/String;
    .param p14, "birthday"    # Ljava/lang/String;

    .prologue
    .line 221
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.INSERT_OR_EDIT"

    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 222
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "vnd.android.cursor.item/contact"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v9, "name"

    if-eqz p1, :cond_1

    const/4 v8, 0x0

    aget-object v8, p1, v8

    :goto_0
    invoke-static {v4, v9, v8}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v8, "phonetic_name"

    invoke-static {v4, v8, p2}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    if-eqz p3, :cond_2

    array-length v8, p3

    :goto_1
    sget-object v9, Lcom/google/zxing/client/android/Contents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 228
    .local v5, "phoneCount":I
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_2
    if-ge v7, v5, :cond_3

    .line 229
    sget-object v8, Lcom/google/zxing/client/android/Contents;->PHONE_KEYS:[Ljava/lang/String;

    aget-object v8, v8, v7

    aget-object v9, p3, v7

    invoke-static {v4, v8, v9}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v8, v0

    if-ge v7, v8, :cond_0

    .line 231
    aget-object v8, p4, v7

    invoke-static {v8}, Lcom/google/zxing/client/android/result/ResultHandler;->toPhoneContractType(Ljava/lang/String;)I

    move-result v6

    .line 232
    .local v6, "type":I
    if-ltz v6, :cond_0

    .line 233
    sget-object v8, Lcom/google/zxing/client/android/Contents;->PHONE_TYPE_KEYS:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    .end local v6    # "type":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 223
    .end local v5    # "phoneCount":I
    .end local v7    # "x":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 227
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 238
    .restart local v5    # "phoneCount":I
    .restart local v7    # "x":I
    :cond_3
    if-eqz p5, :cond_5

    move-object/from16 v0, p5

    array-length v8, v0

    :goto_3
    sget-object v9, Lcom/google/zxing/client/android/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 239
    .local v3, "emailCount":I
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v3, :cond_6

    .line 240
    sget-object v8, Lcom/google/zxing/client/android/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    aget-object v8, v8, v7

    aget-object v9, p5, v7

    invoke-static {v4, v8, v9}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    if-eqz p6, :cond_4

    move-object/from16 v0, p6

    array-length v8, v0

    if-ge v7, v8, :cond_4

    .line 242
    aget-object v8, p6, v7

    invoke-static {v8}, Lcom/google/zxing/client/android/result/ResultHandler;->toEmailContractType(Ljava/lang/String;)I

    move-result v6

    .line 243
    .restart local v6    # "type":I
    if-ltz v6, :cond_4

    .line 244
    sget-object v8, Lcom/google/zxing/client/android/Contents;->EMAIL_TYPE_KEYS:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    .end local v6    # "type":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 238
    .end local v3    # "emailCount":I
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 250
    .restart local v3    # "emailCount":I
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v2, "aggregatedNotes":Ljava/lang/StringBuilder;
    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p13, v9, v8

    const/4 v8, 0x1

    aput-object p14, v9, v8

    const/4 v8, 0x2

    aput-object p7, v9, v8

    array-length v10, v9

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v10, :cond_9

    aget-object v1, v9, v8

    .line 252
    .local v1, "aNote":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 253
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_7

    .line 254
    const/16 v11, 0xa

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    :cond_7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 259
    .end local v1    # "aNote":Ljava/lang/String;
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_a

    .line 260
    const-string v8, "notes"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_a
    const-string v8, "im_handle"

    move-object/from16 v0, p8

    invoke-static {v4, v8, v0}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v8, "postal"

    move-object/from16 v0, p9

    invoke-static {v4, v8, v0}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    if-eqz p10, :cond_b

    .line 266
    invoke-static/range {p10 .. p10}, Lcom/google/zxing/client/android/result/ResultHandler;->toAddressContractType(Ljava/lang/String;)I

    move-result v6

    .line 267
    .restart local v6    # "type":I
    if-ltz v6, :cond_b

    .line 268
    const-string v8, "postal_type"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    .end local v6    # "type":I
    :cond_b
    const-string v8, "company"

    move-object/from16 v0, p11

    invoke-static {v4, v8, v0}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v8, "job_title"

    move-object/from16 v0, p12

    invoke-static {v4, v8, v0}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, v4}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 274
    return-void
.end method

.method final addEmailOnlyContact([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "emailTypes"    # [Ljava/lang/String;

    .prologue
    .line 202
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v0 .. v14}, Lcom/google/zxing/client/android/result/ResultHandler;->addContact([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method final addPhoneOnlyContact([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .param p1, "phoneNumbers"    # [Ljava/lang/String;
    .param p2, "phoneTypes"    # [Ljava/lang/String;

    .prologue
    .line 198
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v14}, Lcom/google/zxing/client/android/result/ResultHandler;->addContact([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public areContentsSecure()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method final dialPhone(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 358
    return-void
.end method

.method final dialPhoneFromUri(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 361
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 362
    return-void
.end method

.method fillInCustomSearchURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 502
    iget-object v2, p0, Lcom/google/zxing/client/android/result/ResultHandler;->customProductSearch:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 513
    .end local p1    # "text":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 505
    .restart local p1    # "text":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/client/android/result/ResultHandler;->customProductSearch:Ljava/lang/String;

    const-string v3, "%s"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/zxing/client/android/result/ResultHandler;->rawResult:Lcom/google/zxing/Result;

    if-eqz v2, :cond_1

    .line 507
    const-string v2, "%f"

    iget-object v3, p0, Lcom/google/zxing/client/android/result/ResultHandler;->rawResult:Lcom/google/zxing/Result;

    invoke-virtual {v3}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 508
    const-string v2, "%t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    iget-object v2, p0, Lcom/google/zxing/client/android/result/ResultHandler;->rawResult:Lcom/google/zxing/Result;

    invoke-static {v2}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    .line 510
    .local v0, "parsedResultAgain":Lcom/google/zxing/client/result/ParsedResult;
    const-string v2, "%t"

    invoke-virtual {v0}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .end local v0    # "parsedResultAgain":Lcom/google/zxing/client/result/ParsedResult;
    :cond_1
    move-object p1, v1

    .line 513
    goto :goto_0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public abstract getButtonCount()I
.end method

.method public abstract getButtonText(I)I
.end method

.method final getDirections(DD)V
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 383
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://maps.google."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    .line 384
    invoke-static {v3}, Lcom/google/zxing/client/android/LocaleManager;->getCountryTLD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/maps?f=d&daddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 383
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 385
    return-void
.end method

.method public getDisplayContents()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/google/zxing/client/android/result/ResultHandler;->result:Lcom/google/zxing/client/result/ParsedResult;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "contents":Ljava/lang/String;
    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract getDisplayTitle()I
.end method

.method public getResult()Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/zxing/client/android/result/ResultHandler;->result:Lcom/google/zxing/client/result/ParsedResult;

    return-object v0
.end method

.method public final getType()Lcom/google/zxing/client/result/ParsedResultType;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/zxing/client/android/result/ResultHandler;->result:Lcom/google/zxing/client/result/ParsedResult;

    invoke-virtual {v0}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v0

    return-object v0
.end method

.method public abstract handleButtonPress(I)V
.end method

.method hasCustomProductSearch()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/zxing/client/android/result/ResultHandler;->customProductSearch:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method launchIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 474
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/android/result/ResultHandler;->rawLaunchIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :goto_0
    return-void

    .line 475
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final openBookSearch(Ljava/lang/String;)V
    .locals 3
    .param p1, "isbn"    # Ljava/lang/String;

    .prologue
    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://books.google."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/zxing/client/android/LocaleManager;->getBookSearchCountryTLD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/books?vid=isbn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 397
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 398
    return-void
.end method

.method final openGoogleShopper(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 453
    return-void
.end method

.method final openMap(Ljava/lang/String;)V
    .locals 3
    .param p1, "geoURI"    # Ljava/lang/String;

    .prologue
    .line 365
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 366
    return-void
.end method

.method final openProductSearch(Ljava/lang/String;)V
    .locals 3
    .param p1, "upc"    # Ljava/lang/String;

    .prologue
    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.google."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/zxing/client/android/LocaleManager;->getProductSearchCountryTLD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/m/products?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&source=zxing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 391
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 392
    return-void
.end method

.method final openURL(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 410
    const-string v2, "HTTP://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 415
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 417
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_1
    return-void

    .line 412
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v2, "HTTPS://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 418
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 419
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/google/zxing/client/android/result/ResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nothing available to handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method rawLaunchIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 462
    if-eqz p1, :cond_0

    .line 463
    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 464
    sget-object v0, Lcom/google/zxing/client/android/result/ResultHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/google/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 467
    :cond_0
    return-void
.end method

.method final searchBookContents(Ljava/lang/String;)V
    .locals 0
    .param p1, "isbnOrUrl"    # Ljava/lang/String;

    .prologue
    .line 405
    return-void
.end method

.method final searchMap(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 375
    move-object v0, p1

    .line 376
    .local v0, "query":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geo:0,0?q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 380
    return-void
.end method

.method final sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/zxing/client/android/result/ResultHandler;->sendEmailFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method final sendEmailFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 313
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 314
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    :cond_0
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-static {v0, v1, p3}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "android.intent.extra.TEXT"

    invoke-static {v0, v1, p4}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 320
    return-void
.end method

.method final sendMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mmsto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/zxing/client/android/result/ResultHandler;->sendMMSFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method final sendMMSFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 354
    return-void
.end method

.method final sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/client/android/result/ResultHandler;->sendSMSFromUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method final sendSMSFromUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 332
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 333
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "sms_body"

    invoke-static {v0, v1, p2}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v1, "compose_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 337
    return-void
.end method

.method final shareByEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 304
    return-void
.end method

.method final shareBySMS(Ljava/lang/String;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 325
    return-void
.end method

.method showGoogleShopperButton(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 169
    return-void
.end method

.method final webSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 424
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 427
    return-void
.end method
