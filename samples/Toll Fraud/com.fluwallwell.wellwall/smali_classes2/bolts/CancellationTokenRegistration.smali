.class public Lbolts/CancellationTokenRegistration;
.super Ljava/lang/Object;
.source "CancellationTokenRegistration.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private action:Ljava/lang/Runnable;

.field private closed:Z

.field private final lock:Ljava/lang/Object;

.field private tokenSource:Lbolts/CancellationTokenSource;


# direct methods
.method constructor <init>(Lbolts/CancellationTokenSource;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "tokenSource"    # Lbolts/CancellationTokenSource;
    .param p2, "action"    # Ljava/lang/Runnable;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbolts/CancellationTokenRegistration;->lock:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lbolts/CancellationTokenRegistration;->tokenSource:Lbolts/CancellationTokenSource;

    .line 28
    iput-object p2, p0, Lbolts/CancellationTokenRegistration;->action:Ljava/lang/Runnable;

    .line 29
    return-void
.end method

.method private throwIfClosed()V
    .locals 2

    .line 57
    iget-boolean v0, p0, Lbolts/CancellationTokenRegistration;->closed:Z

    if-nez v0, :cond_0

    .line 60
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 36
    iget-object v0, p0, Lbolts/CancellationTokenRegistration;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-boolean v1, p0, Lbolts/CancellationTokenRegistration;->closed:Z

    if-eqz v1, :cond_0

    .line 38
    monitor-exit v0

    return-void

    .line 41
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbolts/CancellationTokenRegistration;->closed:Z

    .line 42
    iget-object v1, p0, Lbolts/CancellationTokenRegistration;->tokenSource:Lbolts/CancellationTokenSource;

    invoke-virtual {v1, p0}, Lbolts/CancellationTokenSource;->unregister(Lbolts/CancellationTokenRegistration;)V

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Lbolts/CancellationTokenRegistration;->tokenSource:Lbolts/CancellationTokenSource;

    .line 44
    iput-object v1, p0, Lbolts/CancellationTokenRegistration;->action:Ljava/lang/Runnable;

    .line 45
    monitor-exit v0

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method runAction()V
    .locals 2

    .line 49
    iget-object v0, p0, Lbolts/CancellationTokenRegistration;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-direct {p0}, Lbolts/CancellationTokenRegistration;->throwIfClosed()V

    .line 51
    iget-object v1, p0, Lbolts/CancellationTokenRegistration;->action:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 52
    invoke-virtual {p0}, Lbolts/CancellationTokenRegistration;->close()V

    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
