.class public interface abstract annotation Lcom/shaded/fasterxml/jackson/databind/annotation/JsonDeserialize;
.super Ljava/lang/Object;
.source "JsonDeserialize.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/shaded/fasterxml/jackson/annotation/JacksonAnnotation;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/shaded/fasterxml/jackson/databind/annotation/JsonDeserialize;
        as = Lcom/shaded/fasterxml/jackson/databind/annotation/NoClass;
        builder = Lcom/shaded/fasterxml/jackson/databind/annotation/NoClass;
        contentAs = Lcom/shaded/fasterxml/jackson/databind/annotation/NoClass;
        contentConverter = Lcom/shaded/fasterxml/jackson/databind/util/Converter$None;
        contentUsing = Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer$None;
        converter = Lcom/shaded/fasterxml/jackson/databind/util/Converter$None;
        keyAs = Lcom/shaded/fasterxml/jackson/databind/annotation/NoClass;
        keyUsing = Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer$None;
        using = Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer$None;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract as()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract builder()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract contentAs()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract contentConverter()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/shaded/fasterxml/jackson/databind/util/Converter",
            "<**>;>;"
        }
    .end annotation
.end method

.method public abstract contentUsing()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract converter()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/shaded/fasterxml/jackson/databind/util/Converter",
            "<**>;>;"
        }
    .end annotation
.end method

.method public abstract keyAs()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract keyUsing()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract using()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation
.end method
