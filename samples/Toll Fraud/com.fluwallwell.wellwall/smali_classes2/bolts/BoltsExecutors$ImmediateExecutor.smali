.class Lbolts/BoltsExecutors$ImmediateExecutor;
.super Ljava/lang/Object;
.source "BoltsExecutors.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/BoltsExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmediateExecutor"
.end annotation


# static fields
.field private static final MAX_DEPTH:I = 0xf


# instance fields
.field private executionDepth:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    return-void
.end method

.method synthetic constructor <init>(Lbolts/BoltsExecutors$1;)V
    .locals 0
    .param p1, "x0"    # Lbolts/BoltsExecutors$1;

    .line 62
    invoke-direct {p0}, Lbolts/BoltsExecutors$ImmediateExecutor;-><init>()V

    return-void
.end method

.method private decrementDepth()I
    .locals 4

    .line 87
    iget-object v0, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 88
    .local v0, "oldDepth":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 89
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 92
    .local v1, "newDepth":I
    if-nez v1, :cond_1

    .line 93
    iget-object v2, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v2, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 97
    :goto_0
    return v1
.end method

.method private incrementDepth()I
    .locals 4

    .line 72
    iget-object v0, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 73
    .local v0, "oldDepth":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 74
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 76
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 77
    .local v1, "newDepth":I
    iget-object v2, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 78
    return v1
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 102
    invoke-direct {p0}, Lbolts/BoltsExecutors$ImmediateExecutor;->incrementDepth()I

    move-result v0

    .line 104
    .local v0, "depth":I
    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    .line 105
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {}, Lbolts/BoltsExecutors;->background()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :goto_0
    invoke-direct {p0}, Lbolts/BoltsExecutors$ImmediateExecutor;->decrementDepth()I

    .line 111
    nop

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lbolts/BoltsExecutors$ImmediateExecutor;->decrementDepth()I

    throw v1
.end method
