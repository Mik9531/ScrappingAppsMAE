.class public interface abstract annotation Lcom/google/appinventor/components/annotations/UsesActivityMetadata;
.super Ljava/lang/Object;
.source "UsesActivityMetadata.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract metaDataElements()[Lcom/google/appinventor/components/annotations/androidmanifest/MetaDataElement;
.end method
