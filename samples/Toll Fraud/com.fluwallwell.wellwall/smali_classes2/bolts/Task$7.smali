.class final Lbolts/Task$7;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->whenAllResult(Ljava/util/Collection;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "TTResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$tasks:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lbolts/Task$7;->val$tasks:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 488
    invoke-virtual {p0, p1}, Lbolts/Task$7;->then(Lbolts/Task;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/List<",
            "TTResult;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 491
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lbolts/Task$7;->val$tasks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 492
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 495
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<TTResult;>;"
    iget-object v1, p0, Lbolts/Task$7;->val$tasks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/Task;

    .line 497
    .local v2, "individualTask":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    invoke-virtual {v2}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    .end local v2    # "individualTask":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    goto :goto_0

    .line 499
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method
