.class public abstract Lcom/shaded/fasterxml/jackson/databind/Module;
.super Ljava/lang/Object;
.source "Module.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/core/Versioned;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/Module$SetupContext;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method public abstract getModuleName()Ljava/lang/String;
.end method

.method public abstract setupModule(Lcom/shaded/fasterxml/jackson/databind/Module$SetupContext;)V
.end method

.method public abstract version()Lcom/shaded/fasterxml/jackson/core/Version;
.end method
