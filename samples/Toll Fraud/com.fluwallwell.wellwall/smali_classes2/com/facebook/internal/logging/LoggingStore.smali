.class public interface abstract Lcom/facebook/internal/logging/LoggingStore;
.super Ljava/lang/Object;
.source "LoggingStore.java"


# virtual methods
.method public abstract readAndClearStore()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/internal/logging/ExternalLog;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveLogsToDisk(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/internal/logging/ExternalLog;",
            ">;)V"
        }
    .end annotation
.end method
