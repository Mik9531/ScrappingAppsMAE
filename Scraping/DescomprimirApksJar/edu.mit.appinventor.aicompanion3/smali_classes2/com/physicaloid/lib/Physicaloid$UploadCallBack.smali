.class public interface abstract Lcom/physicaloid/lib/Physicaloid$UploadCallBack;
.super Ljava/lang/Object;
.source "Physicaloid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/physicaloid/lib/Physicaloid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadCallBack"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onError(Lcom/physicaloid/lib/programmer/avr/UploadErrors;)V
.end method

.method public abstract onPostUpload(Z)V
.end method

.method public abstract onPreUpload()V
.end method

.method public abstract onUploading(I)V
.end method
