.class Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;
.super Landroid/os/AsyncTask;
.source "Texting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Texting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncSendMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Texting;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Texting;

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1102
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 1113
    const/4 v5, 0x0

    aget-object v2, p1, v5

    .line 1114
    .local v2, "phoneNumber":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v1, p1, v5

    .line 1115
    .local v1, "message":Ljava/lang/String;
    const-string v3, ""

    .line 1116
    .local v3, "response":Ljava/lang/String;
    const-string v4, ""

    .line 1118
    .local v4, "smsData":Ljava/lang/String;
    const-string v5, "Texting Component"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Async sending phoneNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " message = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phoneNumber"

    const-string v7, "UTF-8"

    .line 1124
    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "text"

    const-string v7, "UTF-8"

    .line 1125
    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1127
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Texting;->access$800(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1128
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    new-instance v6, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/Texting;->access$600(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;-><init>(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/Texting;->access$802(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;)Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    .line 1130
    :cond_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Texting;->access$800(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1131
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Texting;->access$800(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->access$900(Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1132
    const-string v5, "Texting Component"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sent SMS, response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v5, v3

    .line 1139
    :goto_1
    return-object v5

    .line 1134
    :cond_1
    const-string v5, "IO Error: unable to create GvHelper"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1136
    :catch_0
    move-exception v0

    .line 1137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1102
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1144
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1147
    const/4 v3, 0x0

    .line 1148
    .local v3, "ok":Z
    const/4 v0, 0x0

    .line 1150
    .local v0, "code":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1151
    .local v2, "json":Lorg/json/JSONObject;
    const-string v4, "ok"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1152
    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1157
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    if-eqz v3, :cond_1

    .line 1158
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->access$400()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "Message sent"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1163
    :cond_0
    :goto_1
    return-void

    .line 1153
    :catch_0
    move-exception v1

    .line 1155
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1159
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    const/16 v4, 0x3a

    if-ne v0, v4, :cond_2

    .line 1160
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->access$400()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "Errcode 58: SMS limit reached"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1161
    :cond_2
    const-string v4, "IO Error"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1162
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->access$400()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
