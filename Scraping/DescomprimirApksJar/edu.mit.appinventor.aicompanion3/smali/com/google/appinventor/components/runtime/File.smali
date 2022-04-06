.class public Lcom/google/appinventor/components/runtime/File;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "File.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi",
        "SdCardPath"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component for storing and retrieving files. Use this component to write or read files on your device. The default behaviour is to write files to the private data directory associated with your App. The Companion is special cased to write files to a public directory for debugging. Use the More information link to read more about how the File component uses paths and scopes to manage access to files."
    iconName = "images/file.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileComponent"


# instance fields
.field private scope:Lcom/google/appinventor/components/common/FileScope;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 118
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 111
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    .line 119
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/File;->DefaultScope(Lcom/google/appinventor/components/common/FileScope;)V

    .line 120
    return-void
.end method

.method private write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "append"    # Z

    .prologue
    const/4 v2, 0x1

    .line 646
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x83a

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, p2, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 699
    :goto_0
    return-void

    .line 651
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileUtil;->checkExternalStorageWriteable()V

    .line 655
    :cond_1
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/File$10;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    const/4 v8, 0x1

    move-object v1, p0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move v7, p4

    move-object v9, p3

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/appinventor/components/runtime/File$10;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/File$10;->run()V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public AfterFileSaved(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the contents of the file have been written."
    .end annotation

    .prologue
    .line 720
    const-string v0, "AfterFileSaved"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 721
    return-void
.end method

.method public AppendToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Appends text to the end of a file storage, creating the file if it does not exist. See the help text under SaveFile for information about where files are written."
    .end annotation

    .prologue
    .line 545
    const-string v0, "AppendToFile"

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/google/appinventor/components/runtime/File;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 546
    return-void
.end method

.method public CopyFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 7
    .param p1, "fromScope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "fromFileName"    # Ljava/lang/String;
    .param p3, "toScope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p4, "toFileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p5, "continuation":Lcom/google/appinventor/components/runtime/util/Continuation;, "Lcom/google/appinventor/components/runtime/util/Continuation<Ljava/lang/Boolean;>;"
    const-string v0, "CopyFile"

    .line 379
    .local v0, "method":Ljava/lang/String;
    sget-object v2, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne p3, v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "CopyFile"

    const/16 v4, 0x83a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p4, v5, v6

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 382
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw v2

    .line 386
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 387
    .local v1, "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "CopyFile"

    invoke-direct {v2, v3, p0, v4}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 388
    invoke-virtual {v2, p1, p2, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 389
    invoke-virtual {v2, p3, p4, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/File$5;

    invoke-direct {v3, p0, v1}, Lcom/google/appinventor/components/runtime/File$5;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 390
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v2

    .line 418
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 419
    invoke-static {v1, p5}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    .line 420
    return-void
.end method

.method public DefaultScope(Lcom/google/appinventor/components/common/FileScope;)V
    .locals 0
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "App"
        editorType = "file_scope"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    .line 134
    return-void
.end method

.method public Delete(Ljava/lang/String;)V
    .locals 9
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes a file from storage. Prefix the filename with / to delete a specific file in the SD card, for instance /myFile.txt. will delete the file /sdcard/myFile.txt. If the file does not begin with a /, then the file located in the programs private storage will be deleted. Starting the file with // is an error because assets files cannot be deleted."
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 614
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Delete"

    const/16 v2, 0x839

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 635
    :goto_0
    return-void

    .line 620
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/File$9;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "Delete"

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/File$9;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V

    .line 631
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/File$9;->run()V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 632
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public Exists(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 4
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p3, "continuation":Lcom/google/appinventor/components/runtime/util/Continuation;, "Lcom/google/appinventor/components/runtime/util/Continuation<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 477
    .local v0, "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "Exists"

    invoke-direct {v1, v2, p0, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 478
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/File$7;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/File$7;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 479
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v1

    .line 484
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 485
    invoke-static {v0, p3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    .line 486
    return-void
.end method

.method public GotText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the contents from the file have been read."
    .end annotation

    .prologue
    .line 709
    const-string v0, "GotText"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 710
    return-void
.end method

.method public IsDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 9
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "continuation":Lcom/google/appinventor/components/runtime/util/Continuation;, "Lcom/google/appinventor/components/runtime/util/Continuation<Ljava/lang/Boolean;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 338
    sget-object v4, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne p1, v4, :cond_1

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v4

    if-nez v4, :cond_1

    .line 339
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 341
    .local v2, "manager":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "files":[Ljava/lang/String;
    const-string v4, "FileComponent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contents of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p3, v4}, Lcom/google/appinventor/components/runtime/util/Continuation;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v1    # "files":[Ljava/lang/String;
    .end local v2    # "manager":Landroid/content/res/AssetManager;
    :goto_1
    return-void

    .restart local v1    # "files":[Ljava/lang/String;
    .restart local v2    # "manager":Landroid/content/res/AssetManager;
    :cond_0
    move v4, v6

    .line 343
    goto :goto_0

    .line 344
    .end local v1    # "files":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v7, "IsDirectory"

    const/16 v8, 0x83e

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-virtual {v4, p0, v7, v8, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 351
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "manager":Landroid/content/res/AssetManager;
    :cond_1
    new-instance v3, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 352
    .local v3, "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    new-instance v4, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v6, "IsDirectory"

    invoke-direct {v4, v5, p0, v6}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v5, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 353
    invoke-virtual {v4, p1, p2, v5}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v4

    new-instance v5, Lcom/google/appinventor/components/runtime/File$4;

    invoke-direct {v5, p0, v3}, Lcom/google/appinventor/components/runtime/File$4;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 354
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v4

    .line 360
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 361
    invoke-static {v3, p3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    goto :goto_1
.end method

.method public LegacyMode(Z)V
    .locals 1
    .param p1, "legacy"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    .line 140
    return-void

    .line 139
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    goto :goto_0
.end method

.method public LegacyMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Allows app to access files from the root of the external storage directory (legacy mode)."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ListDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 7
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "directoryName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "continuation":Lcom/google/appinventor/components/runtime/util/Continuation;, "Lcom/google/appinventor/components/runtime/util/Continuation<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v5, 0x1

    .line 297
    sget-object v2, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-direct {v3, p1, p2}, Lcom/google/appinventor/components/runtime/util/ScopedFile;-><init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->listDirectory(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/appinventor/components/runtime/util/Continuation;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "ListDirectory"

    const/16 v4, 0x840

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 310
    :cond_1
    new-instance v1, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 311
    .local v1, "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v2, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "ListDirectory"

    invoke-direct {v2, v3, p0, v4}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->setAskPermission(Z)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v2

    .line 313
    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->setAsynchronous(Z)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 314
    invoke-virtual {v2, p1, p2, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/File$3;

    invoke-direct {v3, p0, v1}, Lcom/google/appinventor/components/runtime/File$3;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 315
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v2

    .line 325
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 326
    invoke-static {v1, p3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    goto :goto_0
.end method

.method public MakeDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 10
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "directoryName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "continuation":Lcom/google/appinventor/components/runtime/util/Continuation;, "Lcom/google/appinventor/components/runtime/util/Continuation<Ljava/lang/Boolean;>;"
    const/4 v8, 0x0

    .line 214
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne p1, v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "MakeDirectory"

    const/16 v2, 0x83c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v8

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 250
    :goto_0
    return-void

    .line 219
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/File$1;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "MakeDirectory"

    sget-object v7, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    move-object v1, p0

    move-object v3, p0

    move-object v5, p2

    move-object v6, p1

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/File$1;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;ZLcom/google/appinventor/components/runtime/util/Continuation;)V

    .line 249
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/File$1;->run()V

    goto :goto_0
.end method

.method public MakeFullPath(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p2, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MoveFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 7
    .param p1, "fromScope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "fromFileName"    # Ljava/lang/String;
    .param p3, "toScope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p4, "toFileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "continuation":Lcom/google/appinventor/components/runtime/util/Continuation;, "Lcom/google/appinventor/components/runtime/util/Continuation<Ljava/lang/Boolean;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 438
    const-string v0, "MoveFile"

    .line 441
    .local v0, "method":Ljava/lang/String;
    sget-object v2, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne p1, v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "MoveFile"

    const/16 v4, 0x839

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 464
    :goto_0
    return-void

    .line 446
    :cond_0
    sget-object v2, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne p3, v2, :cond_1

    .line 447
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "MoveFile"

    const/16 v4, 0x83a

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p4, v5, v6

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 453
    :cond_1
    new-instance v1, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 454
    .local v1, "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "MoveFile"

    invoke-direct {v2, v3, p0, v4}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 455
    invoke-virtual {v2, p1, p2, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 456
    invoke-virtual {v2, p3, p4, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/File$6;

    invoke-direct {v3, p0, v1}, Lcom/google/appinventor/components/runtime/File$6;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 457
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v2

    .line 462
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 463
    invoke-static {v1, p5}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    goto :goto_0
.end method

.method public ReadFrom(Ljava/lang/String;)V
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads text from a file in storage. Prefix the filename with / to read from a specific file on the SD card. for instance /myFile.txt will read the file /sdcard/myFile.txt. To read assets packaged with an application (also works for the Companion) start the filename with // (two slashes). If a filename does not start with a slash, it will be read from the applications private storage (for packaged apps) and from /sdcard/AppInventor/data for the Companion."
    .end annotation

    .prologue
    .line 567
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/File$8;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "ReadFrom"

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/File$8;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Z)V

    .line 592
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/File$8;->run()V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public ReadPermission(Z)V
    .locals 0
    .param p1, "required"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    .prologue
    .line 171
    return-void
.end method

.method public RemoveDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;ZLcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 6
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "directoryName"    # Ljava/lang/String;
    .param p3, "recursive"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/appinventor/components/runtime/util/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p4, "continuation":Lcom/google/appinventor/components/runtime/util/Continuation;, "Lcom/google/appinventor/components/runtime/util/Continuation<Ljava/lang/Boolean;>;"
    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne p1, v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "RemoveDirectory"

    const/16 v3, 0x841

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 285
    :goto_0
    return-void

    .line 270
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 271
    .local v0, "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "RemoveDirectory"

    invoke-direct {v1, v2, p0, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 272
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/File$2;

    invoke-direct {v2, p0, v0, p3}, Lcom/google/appinventor/components/runtime/File$2;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;Z)V

    .line 273
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v1

    .line 283
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 284
    invoke-static {v0, p4}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    goto :goto_0
.end method

.method public SaveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves text to a file. If the filename begins with a slash (/) the file is written to the sdcard. For example writing to /myFile.txt will write the file to /sdcard/myFile.txt. If the filename does not start with a slash, it will be written in the programs private data directory where it will not be accessible to other programs on the phone. There is a special exception for the AI Companion where these files are written to /sdcard/AppInventor/data to facilitate debugging. Note that this block will overwrite a file if it already exists.\n\nIf you want to add content to a file use the append block."
    .end annotation

    .prologue
    .line 527
    const-string v0, "SaveFile"

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/google/appinventor/components/runtime/File;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 528
    return-void
.end method

.method public Scope()Lcom/google/appinventor/components/common/FileScope;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method

.method public Scope(Lcom/google/appinventor/components/common/FileScope;)V
    .locals 0
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    .line 181
    return-void
.end method

.method public WritePermission(Z)V
    .locals 0
    .param p1, "required"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.WRITE_EXTERNAL_STORAGE"
        }
    .end annotation

    .prologue
    .line 200
    return-void
.end method
