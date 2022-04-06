.class public Lcom/jerin/airtable/AirtableClassic;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "AirtableClassic.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<h4>Non-visible extensions that provides access to the <a href = \"https://airtable.com\" target = \"_blank\">Airtable</a>  spreadsheet storage.<br />Made by <a href = \"https://community.thunkable.com/u/Jerin_Jacob/activity\" target = \"_blank\">Jerin Jacob</a>.<br /><a href = \"https://community.thunkable.com/t/free-extension-airtableclassic/35253?u=jerin_jacob\" target = \"_blank\">Documentation</a>"
    iconName = "http://res.cloudinary.com/gdguru111/image/upload/c_scale,h_20/v1534755820/https_3A_2F_2Fassets.ifttt.com_2Fimages_2Fchannels_2F1540230754_2Ficons_2Fon_color_large.png_3Fversion_3D0_ydmrkz.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private apiKey:Ljava/lang/String;

.field private baseId:Ljava/lang/String;

.field private getAllData:Ljava/lang/String;

.field private getAllDataResponseCode:I

.field private tableName:Ljava/lang/String;

.field private viewName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 66
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 56
    const-string v0, "Grid view"

    iput-object v0, p0, Lcom/jerin/airtable/AirtableClassic;->viewName:Ljava/lang/String;

    .line 68
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/jerin/airtable/AirtableClassic;)I
    .locals 1
    .param p0, "x0"    # Lcom/jerin/airtable/AirtableClassic;

    .prologue
    .line 44
    iget v0, p0, Lcom/jerin/airtable/AirtableClassic;->getAllDataResponseCode:I

    return v0
.end method

.method static synthetic access$100(Lcom/jerin/airtable/AirtableClassic;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jerin/airtable/AirtableClassic;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jerin/airtable/AirtableClassic;->getAllData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jerin/airtable/AirtableClassic;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/jerin/airtable/AirtableClassic;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public ApiKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jerin/airtable/AirtableClassic;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Your apiKey"
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jerin/airtable/AirtableClassic;->apiKey:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public BaseId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jerin/airtable/AirtableClassic;->baseId:Ljava/lang/String;

    return-object v0
.end method

.method public BaseId(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 94
    iput-object p1, p0, Lcom/jerin/airtable/AirtableClassic;->baseId:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public Cell(ILjava/lang/String;)V
    .locals 20
    .param p1, "rowNumber"    # I
    .param p2, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jerin/airtable/AirtableClassic;->apiKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 240
    .local v17, "token":Ljava/lang/String;
    new-instance v18, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://api.airtable.com/v0/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jerin/airtable/AirtableClassic;->baseId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jerin/airtable/AirtableClassic;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?fields[]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jerin/airtable/AirtableClassic;->viewName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v19, "%20"

    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 241
    .local v18, "url":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 244
    .local v9, "con":Ljava/net/HttpURLConnection;
    const-string v3, "Authorization"

    move-object/from16 v0, v17

    invoke-virtual {v9, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-virtual {v9, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 248
    .local v5, "responseCode":I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\nSending \'GET\' request to URL : "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 249
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Response Code : "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 252
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 254
    .local v10, "in":Ljava/io/BufferedReader;
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 256
    .local v16, "response":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, "inputLine":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 257
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 260
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 261
    .local v15, "output":Ljava/lang/String;
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 262
    .local v14, "obj":Lorg/json/JSONObject;
    const-string v3, "records"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 263
    .local v12, "jsonarray":Lorg/json/JSONArray;
    const-string v3, "offset"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    const-string v3, "offset"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-virtual {v0, v3, v12, v1, v2}, Lcom/jerin/airtable/AirtableClassic;->GetCellWithOffset(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;I)V

    .line 278
    :goto_1
    return-void

    .line 266
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 267
    .local v13, "jsonobject":Lorg/json/JSONObject;
    const-string v3, "id"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 268
    .local v7, "rowId":Ljava/lang/String;
    const-string v3, "createdTime"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 269
    .local v8, "createdTime":Ljava/lang/String;
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "fields"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, "cell":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    new-instance v3, Lcom/jerin/airtable/AirtableClassic$4;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/jerin/airtable/AirtableClassic$4;-><init>(Lcom/jerin/airtable/AirtableClassic;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public CellChanged(I)V
    .locals 4
    .param p1, "responseCode"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 897
    const-string v0, "CellChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 898
    return-void
.end method

.method public Column(Ljava/lang/String;I)V
    .locals 26
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "maxRecord"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bearer "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jerin/airtable/AirtableClassic;->apiKey:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 353
    .local v24, "token":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v3, "lrowId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v4, "lcreatedTime":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v5, "lcolumn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v25, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://api.airtable.com/v0/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jerin/airtable/AirtableClassic;->baseId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jerin/airtable/AirtableClassic;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "?fields[]="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "&maxRecords="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "&view="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jerin/airtable/AirtableClassic;->viewName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, " "

    const-string v7, "%20"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 358
    .local v25, "url":Ljava/net/URL;
    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    .line 361
    .local v13, "con":Ljava/net/HttpURLConnection;
    const-string v2, "Authorization"

    move-object/from16 v0, v24

    invoke-virtual {v13, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v2, "Content-Type"

    const-string v6, "application/json"

    invoke-virtual {v13, v2, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 365
    .local v8, "responseCode":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nSending \'GET\' request to URL : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response Code : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 368
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 369
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 371
    .local v16, "in":Ljava/io/BufferedReader;
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 373
    .local v22, "response":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, "inputLine":Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 374
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    .line 377
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    .line 378
    .local v21, "output":Ljava/lang/String;
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v21}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 379
    .local v20, "obj":Lorg/json/JSONObject;
    const-string v2, "records"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 381
    .local v18, "jsonarray":Lorg/json/JSONArray;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v15, v2, :cond_1

    .line 382
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 383
    .local v19, "jsonobject":Lorg/json/JSONObject;
    const-string v2, "id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 384
    .local v23, "rowId":Ljava/lang/String;
    const-string v2, "createdTime"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 385
    .local v14, "createdTime":Ljava/lang/String;
    const-string v2, "fields"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 387
    .local v12, "columnValue":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 392
    .end local v12    # "columnValue":Ljava/lang/String;
    .end local v14    # "createdTime":Ljava/lang/String;
    .end local v19    # "jsonobject":Lorg/json/JSONObject;
    .end local v23    # "rowId":Ljava/lang/String;
    :cond_1
    const-string v2, "offset"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 393
    const-string v2, "offset"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .end local v8    # "responseCode":I
    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/jerin/airtable/AirtableClassic;->ColumnWithOffset(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    .line 402
    :goto_2
    return-void

    .line 395
    .restart local v8    # "responseCode":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    new-instance v6, Lcom/jerin/airtable/AirtableClassic$7;

    move-object/from16 v7, p0

    move-object v9, v5

    move-object v10, v3

    move-object v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/jerin/airtable/AirtableClassic$7;-><init>(Lcom/jerin/airtable/AirtableClassic;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public ColumnWithOffset(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V
    .locals 23
    .param p4, "columnName"    # Ljava/lang/String;
    .param p5, "maxRecord"    # I
    .param p6, "offset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "rowIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "createdTimes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "columnValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jerin/airtable/AirtableClassic;->apiKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 408
    .local v21, "token":Ljava/lang/String;
    new-instance v22, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.airtable.com/v0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jerin/airtable/AirtableClassic;->baseId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jerin/airtable/AirtableClassic;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?fields[]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&maxRecords="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jerin/airtable/AirtableClassic;->viewName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v5, "%20"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 409
    .local v22, "url":Ljava/net/URL;
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    .line 412
    .local v10, "con":Ljava/net/HttpURLConnection;
    const-string v2, "Authorization"

    move-object/from16 v0, v21

    invoke-virtual {v10, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v10, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 416
    .local v4, "responseCode":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nSending \'GET\' request to URL : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response Code : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 419
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 420
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v13, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 422
    .local v13, "in":Ljava/io/BufferedReader;
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 424
    .local v19, "response":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "inputLine":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 425
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 428
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    .line 429
    .local v18, "output":Ljava/lang/String;
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 430
    .local v17, "obj":Lorg/json/JSONObject;
    const-string v2, "records"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 432
    .local v15, "jsonarray":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v12, v2, :cond_1

    .line 433
    invoke-virtual {v15, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 434
    .local v16, "jsonobject":Lorg/json/JSONObject;
    const-string v2, "id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 435
    .local v20, "rowId":Ljava/lang/String;
    const-string v2, "createdTime"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 436
    .local v11, "createdTime":Ljava/lang/String;
    const-string v2, "fields"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 438
    .local v9, "columnValue":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 442
    .end local v9    # "columnValue":Ljava/lang/String;
    .end local v11    # "createdTime":Ljava/lang/String;
    .end local v16    # "jsonobject":Lorg/json/JSONObject;
    .end local v20    # "rowId":Ljava/lang/String;
    :cond_1
    const-string v2, "offset"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 443
    const-string v2, "offset"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/jerin/airtable/AirtableClassic;->ColumnWithOffset(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    .line 452
    .end local v4    # "responseCode":I
    :goto_2
    return-void

    .line 445
    .restart local v4    # "responseCode":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/jerin/airtable/AirtableClassic$8;

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/jerin/airtable/AirtableClassic$8;-><init>(Lcom/jerin/airtable/AirtableClassic;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v8, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public CreateRow(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .param p1, "columnNames"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "values"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .prologue
    .line 711
    new-instance v0, Lcom/jerin/airtable/AirtableClassic$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/jerin/airtable/AirtableClassic$16;-><init>(Lcom/jerin/airtable/AirtableClassic;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 721
    return-void
.end method

.method public DeleteRowNum(I)V
    .locals 1
    .param p1, "rowNumber"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .prologue
    .line 657
    new-instance v0, Lcom/jerin/airtable/AirtableClassic$14;

    invoke-direct {v0, p0, p1}, Lcom/jerin/airtable/AirtableClassic$14;-><init>(Lcom/jerin/airtable/AirtableClassic;I)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 667
    return-void
.end method

.method public DeletedRowByNumber(I)V
    .locals 4
    .param p1, "responseCode"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 902
    const-string v0, "DeletedRowByNumber"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 903
    return-void
.end method

.method public GetAllData()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 122
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bearer "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/jerin/airtable/AirtableClassic;->apiKey:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 124
    .local v9, "token":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://api.airtable.com/v0/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/jerin/airtable/AirtableClassic;->baseId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/jerin/airtable/AirtableClassic;->tableName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "?&view="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/jerin/airtable/AirtableClassic;->viewName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    const-string v13, "%20"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 125
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 128
    .local v0, "con":Ljava/net/HttpURLConnection;
    const-string v11, "Authorization"

    invoke-virtual {v0, v11, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v11, "Content-Type"

    const-string v12, "application/json"

    invoke-virtual {v0, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 132
    .local v8, "responseCode":I
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\nSending \'GET\' request to URL : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Response Code : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    .line 136
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 138
    .local v1, "in":Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 140
    .local v7, "response":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "inputLine":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 158
    .end local v0    # "con":Ljava/net/HttpURLConnection;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "inputLine":Ljava/lang/String;
    .end local v7    # "response":Ljava/lang/StringBuffer;
    .end local v8    # "responseCode":I
    .end local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 159
    .local v3, "ioe":Ljava/io/IOException;
    const-string v11, "GetAllData"

    const-string v12, "Unable"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v11, p0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    const-string v12, "Unable"

    invoke-static {v11, v12, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 165
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_1
    return-void

    .line 143
    .restart local v0    # "con":Ljava/net/HttpURLConnection;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "inputLine":Ljava/lang/String;
    .restart local v7    # "response":Ljava/lang/StringBuffer;
    .restart local v8    # "responseCode":I
    .restart local v10    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 144
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 145
    .local v6, "obj":Lorg/json/JSONObject;
    const-string v11, "records"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 146
    .local v5, "jsonarray":Lorg/json/JSONArray;
    const-string v11, "offset"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 147
    const-string v11, "offset"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11, v5}, Lcom/jerin/airtable/AirtableClassic;->GetAllWithOffset(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 161
    .end local v0    # "con":Ljava/net/HttpURLConnection;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "inputLine":Ljava/lang/String;
    .end local v5    # "jsonarray":Lorg/json/JSONArray;
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v7    # "response":Ljava/lang/StringBuffer;
    .end local v8    # "responseCode":I
    .end local v10    # "url":Ljava/net/URL;
    :catch_1
    move-exception v4

    .line 162
    .local v4, "jse":Lorg/json/JSONException;
    const-string v11, "GetAllData"

    const-string v12, "Unable"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v11, p0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    const-string v12, "Unable"

    invoke-static {v11, v12, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 149
    .end local v4    # "jse":Lorg/json/JSONException;
    .restart local v0    # "con":Ljava/net/HttpURLConnection;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "inputLine":Ljava/lang/String;
    .restart local v5    # "jsonarray":Lorg/json/JSONArray;
    .restart local v6    # "obj":Lorg/json/JSONObject;
    .restart local v7    # "response":Ljava/lang/StringBuffer;
    .restart local v8    # "responseCode":I
    .restart local v10    # "url":Ljava/net/URL;
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/jerin/airtable/AirtableClassic;->getAllData:Ljava/lang/String;

    .line 150
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    iput v11, p0, Lcom/jerin/airtable/AirtableClassic;->getAllDataResponseCode:I

    .line 151
    iget-object v11, p0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    new-instance v12, Lcom/jerin/airtable/AirtableClassic$1;

    invoke-direct {v12, p0, v5}, Lcom/jerin/airtable/AirtableClassic$1;-><init>(Lcom/jerin/airtable/AirtableClassic;Lorg/json/JSONArray;)V

    invoke-virtual {v11, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method public GetAllRows()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .prologue
    .line 865
    new-instance v0, Lcom/jerin/airtable/AirtableClassic$20;

    invoke-direct {v0, p0}, Lcom/jerin/airtable/AirtableClassic$20;-><init>(Lcom/jerin/airtable/AirtableClassic;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 875
    return-void
.end method

.method public GetAllWithOffset(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 20
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 169
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Bearer "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->apiKey:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 171
    .local v14, "token":Ljava/lang/String;
    :try_start_0
    new-instance v16, Ljava/net/URL;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "https://api.airtable.com/v0/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->baseId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->tableName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "?&view="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->viewName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "&offset="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, " "

    const-string v19, "%20"

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 172
    .local v16, "url":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 175
    .local v3, "con":Ljava/net/HttpURLConnection;
    const-string v17, "Authorization"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v17, "Content-Type"

    const-string v18, "application/json"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    .line 179
    .local v13, "responseCode":I
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\nSending \'GET\' request to URL : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Response Code : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    .line 183
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 185
    .local v5, "in":Ljava/io/BufferedReader;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    .local v12, "response":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "inputLine":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 188
    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 212
    .end local v3    # "con":Ljava/net/HttpURLConnection;
    .end local v5    # "in":Ljava/io/BufferedReader;
    .end local v6    # "inputLine":Ljava/lang/String;
    .end local v12    # "response":Ljava/lang/StringBuffer;
    .end local v13    # "responseCode":I
    .end local v16    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 213
    .local v7, "ioe":Ljava/io/IOException;
    const-string v17, "GetAllData"

    const-string v18, "Unable"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    move-object/from16 v17, v0

    const-string v18, "Unable"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 219
    .end local v7    # "ioe":Ljava/io/IOException;
    :goto_1
    return-void

    .line 190
    .restart local v3    # "con":Ljava/net/HttpURLConnection;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "inputLine":Ljava/lang/String;
    .restart local v12    # "response":Ljava/lang/StringBuffer;
    .restart local v13    # "responseCode":I
    .restart local v16    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 191
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 192
    .local v11, "output":Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    .local v10, "obj":Lorg/json/JSONObject;
    const-string v17, "records"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 194
    .local v9, "jsonarray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_1

    .line 195
    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 194
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 198
    :cond_1
    const-string v17, "offset"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 199
    const-string v17, "offset"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/jerin/airtable/AirtableClassic;->GetAllWithOffset(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 215
    .end local v3    # "con":Ljava/net/HttpURLConnection;
    .end local v4    # "i":I
    .end local v5    # "in":Ljava/io/BufferedReader;
    .end local v6    # "inputLine":Ljava/lang/String;
    .end local v9    # "jsonarray":Lorg/json/JSONArray;
    .end local v10    # "obj":Lorg/json/JSONObject;
    .end local v11    # "output":Ljava/lang/String;
    .end local v12    # "response":Ljava/lang/StringBuffer;
    .end local v13    # "responseCode":I
    .end local v16    # "url":Ljava/net/URL;
    :catch_1
    move-exception v8

    .line 216
    .local v8, "jse":Lorg/json/JSONException;
    const-string v17, "GetAllData"

    const-string v18, "Unable"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    move-object/from16 v17, v0

    const-string v18, "Unable"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 201
    .end local v8    # "jse":Lorg/json/JSONException;
    .restart local v3    # "con":Ljava/net/HttpURLConnection;
    .restart local v4    # "i":I
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "inputLine":Ljava/lang/String;
    .restart local v9    # "jsonarray":Lorg/json/JSONArray;
    .restart local v10    # "obj":Lorg/json/JSONObject;
    .restart local v11    # "output":Ljava/lang/String;
    .restart local v12    # "response":Ljava/lang/StringBuffer;
    .restart local v13    # "responseCode":I
    .restart local v16    # "url":Ljava/net/URL;
    :cond_2
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jerin/airtable/AirtableClassic;->getAllData:Ljava/lang/String;

    .line 202
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jerin/airtable/AirtableClassic;->getAllDataResponseCode:I

    .line 203
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v15

    .line 205
    .local v15, "totalRows":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    move-object/from16 v17, v0

    new-instance v18, Lcom/jerin/airtable/AirtableClassic$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/jerin/airtable/AirtableClassic$2;-><init>(Lcom/jerin/airtable/AirtableClassic;I)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method public GetCell(ILjava/lang/String;)V
    .locals 1
    .param p1, "rowNumber"    # I
    .param p2, "columnName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .prologue
    .line 224
    new-instance v0, Lcom/jerin/airtable/AirtableClassic$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/jerin/airtable/AirtableClassic$3;-><init>(Lcom/jerin/airtable/AirtableClassic;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method public GetCellWithOffset(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;I)V
    .locals 24
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "jsonArray"    # Lorg/json/JSONArray;
    .param p3, "columnName"    # Ljava/lang/String;
    .param p4, "rowNumber"    # I

    .prologue
    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bearer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jerin/airtable/AirtableClassic;->apiKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 284
    .local v21, "token":Ljava/lang/String;
    :try_start_0
    new-instance v22, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://api.airtable.com/v0/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jerin/airtable/AirtableClassic;->baseId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jerin/airtable/AirtableClassic;->tableName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?fields[]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&view="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jerin/airtable/AirtableClassic;->viewName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v23, "%20"

    move-object/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 285
    .local v22, "url":Ljava/net/URL;
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    .line 288
    .local v10, "con":Ljava/net/HttpURLConnection;
    const-string v4, "Authorization"

    move-object/from16 v0, v21

    invoke-virtual {v10, v4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v4, "Content-Type"

    const-string v5, "application/json"

    invoke-virtual {v10, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 292
    .local v6, "responseCode":I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\nSending \'GET\' request to URL : "

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 293
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Response Code : "

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 296
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 298
    .local v12, "in":Ljava/io/BufferedReader;
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 300
    .local v20, "response":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, "inputLine":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 301
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 326
    .end local v6    # "responseCode":I
    .end local v10    # "con":Ljava/net/HttpURLConnection;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v13    # "inputLine":Ljava/lang/String;
    .end local v20    # "response":Ljava/lang/StringBuffer;
    .end local v22    # "url":Ljava/net/URL;
    :catch_0
    move-exception v14

    .line 327
    .local v14, "ioe":Ljava/io/IOException;
    const-string v4, "GetCell"

    const-string v5, "Unable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    const-string v5, "Unable"

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v4, v5, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 333
    .end local v14    # "ioe":Ljava/io/IOException;
    :goto_1
    return-void

    .line 303
    .restart local v6    # "responseCode":I
    .restart local v10    # "con":Ljava/net/HttpURLConnection;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "inputLine":Ljava/lang/String;
    .restart local v20    # "response":Ljava/lang/StringBuffer;
    .restart local v22    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 304
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    .line 305
    .local v19, "output":Ljava/lang/String;
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v19}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 306
    .local v18, "obj":Lorg/json/JSONObject;
    const-string v4, "records"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 307
    .local v16, "jsonarray":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v11, v4, :cond_1

    .line 308
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 307
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 311
    :cond_1
    const-string v4, "offset"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 312
    const-string v4, "offset"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/jerin/airtable/AirtableClassic;->GetCellWithOffset(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 329
    .end local v6    # "responseCode":I
    .end local v10    # "con":Ljava/net/HttpURLConnection;
    .end local v11    # "i":I
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v13    # "inputLine":Ljava/lang/String;
    .end local v16    # "jsonarray":Lorg/json/JSONArray;
    .end local v18    # "obj":Lorg/json/JSONObject;
    .end local v19    # "output":Ljava/lang/String;
    .end local v20    # "response":Ljava/lang/StringBuffer;
    .end local v22    # "url":Ljava/net/URL;
    :catch_1
    move-exception v15

    .line 330
    .local v15, "jse":Lorg/json/JSONException;
    const-string v4, "GetCell"

    const-string v5, "Unable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    const-string v5, "Unable"

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v4, v5, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 314
    .end local v15    # "jse":Lorg/json/JSONException;
    .restart local v6    # "responseCode":I
    .restart local v10    # "con":Ljava/net/HttpURLConnection;
    .restart local v11    # "i":I
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "inputLine":Ljava/lang/String;
    .restart local v16    # "jsonarray":Lorg/json/JSONArray;
    .restart local v18    # "obj":Lorg/json/JSONObject;
    .restart local v19    # "output":Ljava/lang/String;
    .restart local v20    # "response":Ljava/lang/StringBuffer;
    .restart local v22    # "url":Ljava/net/URL;
    :cond_2
    add-int/lit8 v4, p4, -0x1

    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 315
    .local v17, "jsonobject":Lorg/json/JSONObject;
    const-string v4, "id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 316
    .local v8, "rowId":Ljava/lang/String;
    const-string v4, "createdTime"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 317
    .local v9, "createdTime":Ljava/lang/String;
    add-int/lit8 v4, p4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "fields"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 319
    .local v7, "cell":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    move-object/from16 v23, v0

    new-instance v4, Lcom/jerin/airtable/AirtableClassic$5;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/jerin/airtable/AirtableClassic$5;-><init>(Lcom/jerin/airtable/AirtableClassic;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method public GetColumn(Ljava/lang/String;I)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "maxRecord"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .prologue
    .line 339
    new-instance v0, Lcom/jerin/airtable/AirtableClassic$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/jerin/airtable/AirtableClassic$6;-><init>(Lcom/jerin/airtable/AirtableClassic;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 349
    return-void
.end method

.method public GetRow(I)V
    .locals 1
    .param p1, "rowNumber"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .prologue
    .line 458
    new-instance v0, Lcom/jerin/airtable/AirtableClassic$9;

    invoke-direct {v0, p0, p1}, Lcom/jerin/airtable/AirtableClassic$9;-><init>(Lcom/jerin/airtable/AirtableClassic;I)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 468
    return-void
.end method

.method public GotAllRows(ILjava/lang/String;I)V
    .locals 4
    .param p1, "responseCode"    # I
    .param p2, "responseContent"    # Ljava/lang/String;
    .param p3, "totalRows"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 917
    const-string v0, "GotAllRows"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 918
    return-void
.end method

.method public GotCell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "responseCode"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "rowId"    # Ljava/lang/String;
    .param p4, "createdTime"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 882
    const-string v0, "GotCell"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 883
    return-void
.end method

.method public GotColumn(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p1, "responseCode"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 887
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "rowIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "createdTimes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "GotColumn"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 888
    return-void
.end method

.method public GotRow(ILjava/util/List;)V
    .locals 4
    .param p1, "responseCode"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 892
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "GotRow"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 893
    return-void
.end method

.method public RowCreated(I)V
    .locals 4
    .param p1, "responseCode"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 907
    const-string v0, "RowCreated"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 908
    return-void
.end method

.method public RowUpdated(I)V
    .locals 4
    .param p1, "responseCode"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 912
    const-string v0, "RowUpdated"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 913
    return-void
.end method

.method public RowWithOffset(ILjava/lang/String;Ljava/util/List;Lorg/json/JSONArray;)V
    .locals 25
    .param p1, "rowNum"    # I
    .param p2, "offset"    # Ljava/lang/String;
    .param p4, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .prologue
    .line 528
    .local p3, "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Bearer "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->apiKey:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 530
    .local v19, "token":Ljava/lang/String;
    :try_start_0
    new-instance v20, Ljava/net/URL;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "https://api.airtable.com/v0/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->baseId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->tableName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "?&view="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->viewName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&offset="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, " "

    const-string v24, "%20"

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 531
    .local v20, "url":Ljava/net/URL;
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 534
    .local v5, "con":Ljava/net/HttpURLConnection;
    const-string v22, "Authorization"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v22, "Content-Type"

    const-string v23, "application/json"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    .line 538
    .local v18, "responseCode":I
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\nSending \'GET\' request to URL : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 539
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Response Code : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 541
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/InputStreamReader;

    .line 542
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 544
    .local v7, "in":Ljava/io/BufferedReader;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 546
    .local v17, "response":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "inputLine":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 547
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 574
    .end local v5    # "con":Ljava/net/HttpURLConnection;
    .end local v7    # "in":Ljava/io/BufferedReader;
    .end local v8    # "inputLine":Ljava/lang/String;
    .end local v17    # "response":Ljava/lang/StringBuffer;
    .end local v18    # "responseCode":I
    .end local v20    # "url":Ljava/net/URL;
    :catch_0
    move-exception v9

    .line 575
    .local v9, "ioe":Ljava/io/IOException;
    const-string v22, "GetRow"

    const-string v23, "Unable"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    move-object/from16 v22, v0

    const-string v23, "Unable"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 581
    .end local v9    # "ioe":Ljava/io/IOException;
    :goto_1
    return-void

    .line 549
    .restart local v5    # "con":Ljava/net/HttpURLConnection;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "inputLine":Ljava/lang/String;
    .restart local v17    # "response":Ljava/lang/StringBuffer;
    .restart local v18    # "responseCode":I
    .restart local v20    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 550
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    .line 551
    .local v16, "output":Ljava/lang/String;
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct/range {v15 .. v16}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 552
    .local v15, "obj":Lorg/json/JSONObject;
    const-string v22, "records"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 553
    .local v11, "jsonarray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v6, v0, :cond_1

    .line 554
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 553
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 557
    :cond_1
    const-string v22, "offset"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 558
    const-string v22, "offset"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jerin/airtable/AirtableClassic;->RowWithOffset(ILjava/lang/String;Ljava/util/List;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 577
    .end local v5    # "con":Ljava/net/HttpURLConnection;
    .end local v6    # "i":I
    .end local v7    # "in":Ljava/io/BufferedReader;
    .end local v8    # "inputLine":Ljava/lang/String;
    .end local v11    # "jsonarray":Lorg/json/JSONArray;
    .end local v15    # "obj":Lorg/json/JSONObject;
    .end local v16    # "output":Ljava/lang/String;
    .end local v17    # "response":Ljava/lang/StringBuffer;
    .end local v18    # "responseCode":I
    .end local v20    # "url":Ljava/net/URL;
    :catch_1
    move-exception v10

    .line 578
    .local v10, "jse":Lorg/json/JSONException;
    const-string v22, "GetRow"

    const-string v23, "Unable"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    move-object/from16 v22, v0

    const-string v23, "Unable"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 560
    .end local v10    # "jse":Lorg/json/JSONException;
    .restart local v5    # "con":Ljava/net/HttpURLConnection;
    .restart local v6    # "i":I
    .restart local v7    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "inputLine":Ljava/lang/String;
    .restart local v11    # "jsonarray":Lorg/json/JSONArray;
    .restart local v15    # "obj":Lorg/json/JSONObject;
    .restart local v16    # "output":Ljava/lang/String;
    .restart local v17    # "response":Ljava/lang/StringBuffer;
    .restart local v18    # "responseCode":I
    .restart local v20    # "url":Ljava/net/URL;
    :cond_2
    add-int/lit8 v22, p1, -0x1

    :try_start_2
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "fields"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 561
    .local v12, "jsonobject":Lorg/json/JSONObject;
    invoke-virtual {v12}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v14

    .line 562
    .local v14, "keys":Lorg/json/JSONArray;
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v6, v0, :cond_3

    .line 563
    invoke-virtual {v14, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 564
    .local v13, "key":Ljava/lang/String;
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 565
    .local v21, "value":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 567
    .end local v13    # "key":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    move-object/from16 v22, v0

    new-instance v23, Lcom/jerin/airtable/AirtableClassic$11;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v18

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/jerin/airtable/AirtableClassic$11;-><init>(Lcom/jerin/airtable/AirtableClassic;ILjava/util/List;)V

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method public SetCell(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rowNumber"    # I
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Change a cell value."
    .end annotation

    .prologue
    .line 587
    new-instance v0, Lcom/jerin/airtable/AirtableClassic$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jerin/airtable/AirtableClassic$12;-><init>(Lcom/jerin/airtable/AirtableClassic;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 597
    return-void
.end method

.method public TableName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jerin/airtable/AirtableClassic;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public TableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 105
    iput-object p1, p0, Lcom/jerin/airtable/AirtableClassic;->tableName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public UpdateRowByNum(ILcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .param p1, "rowNumber"    # I
    .param p2, "columnNames"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "values"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = ""
    .end annotation

    .prologue
    .line 786
    new-instance v0, Lcom/jerin/airtable/AirtableClassic$18;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jerin/airtable/AirtableClassic$18;-><init>(Lcom/jerin/airtable/AirtableClassic;ILcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 796
    return-void
.end method

.method public ViewName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jerin/airtable/AirtableClassic;->viewName:Ljava/lang/String;

    return-object v0
.end method

.method public ViewName(Ljava/lang/String;)V
    .locals 0
    .param p1, "viewName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Grid view"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 116
    iput-object p1, p0, Lcom/jerin/airtable/AirtableClassic;->viewName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public createRow(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 19
    .param p1, "columnNames"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "values"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 725
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Bearer "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->apiKey:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 726
    .local v13, "token":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 727
    .local v4, "colums":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 730
    .local v2, "arrayValues":[Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 731
    .local v9, "obj":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v4

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_0

    .line 732
    aget-object v16, v4, v7

    aget-object v17, v2, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 731
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 734
    :cond_0
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 737
    .local v8, "jsonRecord":Ljava/lang/String;
    :try_start_0
    new-instance v14, Ljava/net/URL;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "https://api.airtable.com/v0/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->baseId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->tableName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, " "

    const-string v18, "%20"

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 738
    .local v14, "url":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 739
    .local v5, "conn":Ljava/net/HttpURLConnection;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "{\"fields\":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",\"typecast\": true}"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 741
    .local v11, "parameters":Ljava/lang/String;
    const-string v16, "Content-Type"

    const-string v17, "application/json"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v16, "Authorization"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v13}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v16, "POST"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 746
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 747
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 748
    .local v15, "writer":Ljava/io/DataOutputStream;
    invoke-virtual {v15, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 750
    if-eqz v15, :cond_1

    .line 751
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 753
    :cond_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    const/16 v17, 0xc8

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    .line 754
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 755
    new-instance v16, Ljava/lang/RuntimeException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed : HTTP error code : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 756
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 775
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v11    # "parameters":Ljava/lang/String;
    .end local v14    # "url":Ljava/net/URL;
    .end local v15    # "writer":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v6

    .line 776
    .local v6, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 780
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :goto_1
    return-void

    .line 759
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v11    # "parameters":Ljava/lang/String;
    .restart local v14    # "url":Ljava/net/URL;
    .restart local v15    # "writer":Ljava/io/DataOutputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 760
    .local v12, "responseCode":I
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/InputStreamReader;

    .line 761
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 763
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "output":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    move-object/from16 v16, v0

    new-instance v17, Lcom/jerin/airtable/AirtableClassic$17;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/jerin/airtable/AirtableClassic$17;-><init>(Lcom/jerin/airtable/AirtableClassic;I)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 777
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v10    # "output":Ljava/lang/String;
    .end local v11    # "parameters":Ljava/lang/String;
    .end local v12    # "responseCode":I
    .end local v14    # "url":Ljava/net/URL;
    .end local v15    # "writer":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v6

    .line 778
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 774
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v10    # "output":Ljava/lang/String;
    .restart local v11    # "parameters":Ljava/lang/String;
    .restart local v12    # "responseCode":I
    .restart local v14    # "url":Ljava/net/URL;
    .restart local v15    # "writer":Ljava/io/DataOutputStream;
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method public deleteRowNum(I)V
    .locals 14
    .param p1, "rowNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/jerin/airtable/AirtableClassic;->GetAllData()V

    .line 672
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bearer "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/jerin/airtable/AirtableClassic;->apiKey:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 674
    .local v9, "token":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONArray;

    iget-object v11, p0, Lcom/jerin/airtable/AirtableClassic;->getAllData:Ljava/lang/String;

    invoke-direct {v3, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 675
    .local v3, "jsonarray":Lorg/json/JSONArray;
    add-int/lit8 v11, p1, -0x1

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 676
    .local v4, "jsonobject":Lorg/json/JSONObject;
    const-string v11, "id"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 678
    .local v8, "rowId":Ljava/lang/String;
    new-instance v10, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://api.airtable.com/v0/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/jerin/airtable/AirtableClassic;->baseId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/jerin/airtable/AirtableClassic;->tableName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    const-string v13, "%20"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 679
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 682
    .local v0, "con":Ljava/net/HttpURLConnection;
    const-string v11, "Authorization"

    invoke-virtual {v0, v11, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v11, "Content-Type"

    const-string v12, "application/json"

    invoke-virtual {v0, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v11, "DELETE"

    invoke-virtual {v0, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 687
    .local v7, "responseCode":I
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\nSending \'GET\' request to URL : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 688
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Response Code : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 690
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    .line 691
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 693
    .local v1, "in":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 695
    .local v6, "response":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "inputLine":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 696
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 698
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 699
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 700
    .local v5, "output":Ljava/lang/String;
    iget-object v11, p0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    new-instance v12, Lcom/jerin/airtable/AirtableClassic$15;

    invoke-direct {v12, p0, v7}, Lcom/jerin/airtable/AirtableClassic$15;-><init>(Lcom/jerin/airtable/AirtableClassic;I)V

    invoke-virtual {v11, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 707
    return-void
.end method

.method public getRow(I)V
    .locals 25
    .param p1, "rowNumber"    # I

    .prologue
    .line 472
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Bearer "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->apiKey:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 473
    .local v19, "token":Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v18, "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v20, Ljava/net/URL;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "https://api.airtable.com/v0/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->baseId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->tableName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "?&view="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->viewName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, " "

    const-string v24, "%20"

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 477
    .local v20, "url":Ljava/net/URL;
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 480
    .local v4, "con":Ljava/net/HttpURLConnection;
    const-string v22, "Authorization"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v22, "Content-Type"

    const-string v23, "application/json"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 484
    .local v17, "responseCode":I
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\nSending \'GET\' request to URL : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 485
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Response Code : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 487
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/InputStreamReader;

    .line 488
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 490
    .local v6, "in":Ljava/io/BufferedReader;
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 492
    .local v16, "response":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "inputLine":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 493
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 517
    .end local v4    # "con":Ljava/net/HttpURLConnection;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v7    # "inputLine":Ljava/lang/String;
    .end local v16    # "response":Ljava/lang/StringBuffer;
    .end local v17    # "responseCode":I
    .end local v20    # "url":Ljava/net/URL;
    :catch_0
    move-exception v8

    .line 518
    .local v8, "ioe":Ljava/io/IOException;
    const-string v22, "GetRow"

    const-string v23, "Unable"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    move-object/from16 v22, v0

    const-string v23, "Unable"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 524
    .end local v8    # "ioe":Ljava/io/IOException;
    :goto_1
    return-void

    .line 495
    .restart local v4    # "con":Ljava/net/HttpURLConnection;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "inputLine":Ljava/lang/String;
    .restart local v16    # "response":Ljava/lang/StringBuffer;
    .restart local v17    # "responseCode":I
    .restart local v20    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 496
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 497
    .local v15, "output":Ljava/lang/String;
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 498
    .local v14, "obj":Lorg/json/JSONObject;
    const-string v22, "records"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 499
    .local v10, "jsonarray":Lorg/json/JSONArray;
    const-string v22, "offset"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 500
    const-string v22, "offset"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/jerin/airtable/AirtableClassic;->RowWithOffset(ILjava/lang/String;Ljava/util/List;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 520
    .end local v4    # "con":Ljava/net/HttpURLConnection;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v7    # "inputLine":Ljava/lang/String;
    .end local v10    # "jsonarray":Lorg/json/JSONArray;
    .end local v14    # "obj":Lorg/json/JSONObject;
    .end local v15    # "output":Ljava/lang/String;
    .end local v16    # "response":Ljava/lang/StringBuffer;
    .end local v17    # "responseCode":I
    .end local v20    # "url":Ljava/net/URL;
    :catch_1
    move-exception v9

    .line 521
    .local v9, "jse":Lorg/json/JSONException;
    const-string v22, "GetRow"

    const-string v23, "Unable"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    move-object/from16 v22, v0

    const-string v23, "Unable"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 502
    .end local v9    # "jse":Lorg/json/JSONException;
    .restart local v4    # "con":Ljava/net/HttpURLConnection;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "inputLine":Ljava/lang/String;
    .restart local v10    # "jsonarray":Lorg/json/JSONArray;
    .restart local v14    # "obj":Lorg/json/JSONObject;
    .restart local v15    # "output":Ljava/lang/String;
    .restart local v16    # "response":Ljava/lang/StringBuffer;
    .restart local v17    # "responseCode":I
    .restart local v20    # "url":Ljava/net/URL;
    :cond_1
    add-int/lit8 v22, p1, -0x1

    :try_start_2
    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "fields"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 503
    .local v11, "jsonobject":Lorg/json/JSONObject;
    invoke-virtual {v11}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v13

    .line 504
    .local v13, "keys":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v5, v0, :cond_2

    .line 505
    invoke-virtual {v13, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 506
    .local v12, "key":Ljava/lang/String;
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 507
    .local v21, "value":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 509
    .end local v12    # "key":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    move-object/from16 v22, v0

    new-instance v23, Lcom/jerin/airtable/AirtableClassic$10;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/jerin/airtable/AirtableClassic$10;-><init>(Lcom/jerin/airtable/AirtableClassic;ILjava/util/List;)V

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method public setCell(ILjava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "rowNumber"    # I
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/jerin/airtable/AirtableClassic;->GetAllData()V

    .line 602
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bearer "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jerin/airtable/AirtableClassic;->apiKey:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 604
    .local v10, "token":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jerin/airtable/AirtableClassic;->getAllData:Ljava/lang/String;

    invoke-direct {v4, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 605
    .local v4, "jsonarray":Lorg/json/JSONArray;
    add-int/lit8 v13, p1, -0x1

    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 606
    .local v5, "jsonobject":Lorg/json/JSONObject;
    const-string v13, "id"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 609
    .local v9, "rowId":Ljava/lang/String;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "https://api.airtable.com/v0/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jerin/airtable/AirtableClassic;->baseId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jerin/airtable/AirtableClassic;->tableName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, " "

    const-string v15, "%20"

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 610
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 611
    .local v2, "conn":Ljava/net/HttpURLConnection;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "{\"fields\": {\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\": \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\"},\"typecast\": true}"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 613
    .local v7, "parameters":Ljava/lang/String;
    const-string v13, "Content-Type"

    const-string v14, "application/json"

    invoke-virtual {v2, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v13, "Authorization"

    invoke-virtual {v2, v13, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v13, "PATCH"

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 618
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 619
    new-instance v12, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 620
    .local v12, "writer":Ljava/io/DataOutputStream;
    invoke-virtual {v12, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V

    .line 622
    if-eqz v12, :cond_0

    .line 623
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V

    .line 625
    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    const/16 v14, 0xc8

    if-eq v13, v14, :cond_1

    .line 626
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 627
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed : HTTP error code : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 628
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 648
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "parameters":Ljava/lang/String;
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "writer":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    .line 649
    .local v3, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 653
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :goto_0
    return-void

    .line 631
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "parameters":Ljava/lang/String;
    .restart local v11    # "url":Ljava/net/URL;
    .restart local v12    # "writer":Ljava/io/DataOutputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 632
    .local v8, "responseCode":I
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    .line 633
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 635
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "output":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 638
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    new-instance v14, Lcom/jerin/airtable/AirtableClassic$13;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8}, Lcom/jerin/airtable/AirtableClassic$13;-><init>(Lcom/jerin/airtable/AirtableClassic;I)V

    invoke-virtual {v13, v14}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 650
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "output":Ljava/lang/String;
    .end local v7    # "parameters":Ljava/lang/String;
    .end local v8    # "responseCode":I
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "writer":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v3

    .line 651
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 647
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "output":Ljava/lang/String;
    .restart local v7    # "parameters":Ljava/lang/String;
    .restart local v8    # "responseCode":I
    .restart local v11    # "url":Ljava/net/URL;
    .restart local v12    # "writer":Ljava/io/DataOutputStream;
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public updateRowByNum(ILcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 22
    .param p1, "rowNumber"    # I
    .param p2, "columnNames"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "values"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 800
    invoke-virtual/range {p0 .. p0}, Lcom/jerin/airtable/AirtableClassic;->GetAllData()V

    .line 802
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Bearer "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->apiKey:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 803
    .local v16, "token":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 804
    .local v4, "colums":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 806
    .local v2, "arrayValues":[Ljava/lang/String;
    new-instance v10, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->getAllData:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 807
    .local v10, "jsonarray":Lorg/json/JSONArray;
    add-int/lit8 v19, p1, -0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 808
    .local v11, "jsonobject":Lorg/json/JSONObject;
    const-string v19, "id"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 811
    .local v15, "rowId":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 812
    .local v7, "fields":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_0

    .line 813
    aget-object v19, v4, v8

    aget-object v20, v2, v8

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 812
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 815
    :cond_0
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 818
    .local v9, "jsonRecord":Ljava/lang/String;
    :try_start_0
    new-instance v17, Ljava/net/URL;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "https://api.airtable.com/v0/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->baseId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->tableName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, " "

    const-string v21, "%20"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 819
    .local v17, "url":Ljava/net/URL;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 820
    .local v5, "conn":Ljava/net/HttpURLConnection;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "{\"fields\":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",\"typecast\": true}"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 822
    .local v13, "parameters":Ljava/lang/String;
    const-string v19, "Content-Type"

    const-string v20, "application/json"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v19, "Authorization"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v19, "PUT"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 827
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 828
    new-instance v18, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 829
    .local v18, "writer":Ljava/io/DataOutputStream;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 830
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->flush()V

    .line 831
    if-eqz v18, :cond_1

    .line 832
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->close()V

    .line 834
    :cond_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 835
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 836
    new-instance v19, Ljava/lang/RuntimeException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed : HTTP error code : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 837
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 855
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v13    # "parameters":Ljava/lang/String;
    .end local v17    # "url":Ljava/net/URL;
    .end local v18    # "writer":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v6

    .line 856
    .local v6, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 860
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :goto_1
    return-void

    .line 840
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v13    # "parameters":Ljava/lang/String;
    .restart local v17    # "url":Ljava/net/URL;
    .restart local v18    # "writer":Ljava/io/DataOutputStream;
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    .line 841
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 843
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, "output":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 844
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 846
    .local v14, "responseCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jerin/airtable/AirtableClassic;->activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    new-instance v20, Lcom/jerin/airtable/AirtableClassic$19;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/jerin/airtable/AirtableClassic$19;-><init>(Lcom/jerin/airtable/AirtableClassic;I)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 857
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v12    # "output":Ljava/lang/String;
    .end local v13    # "parameters":Ljava/lang/String;
    .end local v14    # "responseCode":I
    .end local v17    # "url":Ljava/net/URL;
    .end local v18    # "writer":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v6

    .line 858
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 854
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v12    # "output":Ljava/lang/String;
    .restart local v13    # "parameters":Ljava/lang/String;
    .restart local v17    # "url":Ljava/net/URL;
    .restart local v18    # "writer":Ljava/io/DataOutputStream;
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
