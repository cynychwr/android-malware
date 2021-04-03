.class public Lbolts/CancellationTokenSource;
.super Ljava/lang/Object;
.source "CancellationTokenSource.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private cancellationRequested:Z

.field private closed:Z

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final lock:Ljava/lang/Object;

.field private final registrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbolts/CancellationTokenRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    .line 33
    invoke-static {}, Lbolts/BoltsExecutors;->scheduled()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbolts/CancellationTokenSource;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lbolts/CancellationTokenSource;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lbolts/CancellationTokenSource;

    .line 29
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lbolts/CancellationTokenSource;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .param p0, "x0"    # Lbolts/CancellationTokenSource;
    .param p1, "x1"    # Ljava/util/concurrent/ScheduledFuture;

    .line 29
    iput-object p1, p0, Lbolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private cancelAfter(JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "delay"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 93
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 97
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    .line 98
    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->cancel()V

    .line 99
    return-void

    .line 102
    :cond_0
    iget-object v2, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 103
    :try_start_0
    iget-boolean v3, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    if-eqz v3, :cond_1

    .line 104
    monitor-exit v2

    return-void

    .line 107
    :cond_1
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->cancelScheduledCancellation()V

    .line 109
    cmp-long v3, p1, v0

    if-eqz v3, :cond_2

    .line 110
    iget-object v0, p0, Lbolts/CancellationTokenSource;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lbolts/CancellationTokenSource$1;

    invoke-direct {v1, p0}, Lbolts/CancellationTokenSource$1;-><init>(Lbolts/CancellationTokenSource;)V

    invoke-interface {v0, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lbolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    .line 120
    :cond_2
    monitor-exit v2

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 94
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Delay must be >= -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cancelScheduledCancellation()V
    .locals 2

    .line 205
    iget-object v0, p0, Lbolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 206
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lbolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    .line 209
    :cond_0
    return-void
.end method

.method private notifyListeners(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbolts/CancellationTokenRegistration;",
            ">;)V"
        }
    .end annotation

    .line 181
    .local p1, "registrations":Ljava/util/List;, "Ljava/util/List<Lbolts/CancellationTokenRegistration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/CancellationTokenRegistration;

    .line 182
    .local v1, "registration":Lbolts/CancellationTokenRegistration;
    invoke-virtual {v1}, Lbolts/CancellationTokenRegistration;->runAction()V

    .line 183
    .end local v1    # "registration":Lbolts/CancellationTokenRegistration;
    goto :goto_0

    .line 184
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private throwIfClosed()V
    .locals 2

    .line 198
    iget-boolean v0, p0, Lbolts/CancellationTokenSource;->closed:Z

    if-nez v0, :cond_0

    .line 201
    return-void

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 69
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 71
    iget-boolean v2, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    if-eqz v2, :cond_0

    .line 72
    monitor-exit v0

    return-void

    .line 75
    :cond_0
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->cancelScheduledCancellation()V

    .line 77
    const/4 v2, 0x1

    iput-boolean v2, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 79
    .local v1, "registrations":Ljava/util/List;, "Ljava/util/List<Lbolts/CancellationTokenRegistration;>;"
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    invoke-direct {p0, v1}, Lbolts/CancellationTokenSource;->notifyListeners(Ljava/util/List;)V

    .line 81
    return-void

    .line 79
    .end local v1    # "registrations":Ljava/util/List;, "Ljava/util/List<Lbolts/CancellationTokenRegistration;>;"
    :catchall_0
    move-exception v2

    .restart local v1    # "registrations":Ljava/util/List;, "Ljava/util/List<Lbolts/CancellationTokenRegistration;>;"
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_0
.end method

.method public cancelAfter(J)V
    .locals 1
    .param p1, "delay"    # J

    .line 89
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, p2, v0}, Lbolts/CancellationTokenSource;->cancelAfter(JLjava/util/concurrent/TimeUnit;)V

    .line 90
    return-void
.end method

.method public close()V
    .locals 3

    .line 125
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-boolean v1, p0, Lbolts/CancellationTokenSource;->closed:Z

    if-eqz v1, :cond_0

    .line 127
    monitor-exit v0

    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->cancelScheduledCancellation()V

    .line 132
    iget-object v1, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/CancellationTokenRegistration;

    .line 133
    .local v2, "registration":Lbolts/CancellationTokenRegistration;
    invoke-virtual {v2}, Lbolts/CancellationTokenRegistration;->close()V

    .line 134
    .end local v2    # "registration":Lbolts/CancellationTokenRegistration;
    goto :goto_0

    .line 135
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v1, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 136
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbolts/CancellationTokenSource;->closed:Z

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getToken()Lbolts/CancellationToken;
    .locals 2

    .line 58
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 60
    new-instance v1, Lbolts/CancellationToken;

    invoke-direct {v1, p0}, Lbolts/CancellationToken;-><init>(Lbolts/CancellationTokenSource;)V

    monitor-exit v0

    return-object v1

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCancellationRequested()Z
    .locals 2

    .line 48
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_0
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 50
    iget-boolean v1, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    monitor-exit v0

    return v1

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method register(Ljava/lang/Runnable;)Lbolts/CancellationTokenRegistration;
    .locals 3
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 142
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 145
    new-instance v2, Lbolts/CancellationTokenRegistration;

    invoke-direct {v2, p0, p1}, Lbolts/CancellationTokenRegistration;-><init>(Lbolts/CancellationTokenSource;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 146
    .local v1, "ctr":Lbolts/CancellationTokenRegistration;
    :try_start_1
    iget-boolean v2, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {v1}, Lbolts/CancellationTokenRegistration;->runAction()V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v2, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :goto_0
    monitor-exit v0

    .line 152
    return-object v1

    .line 151
    .end local v1    # "ctr":Lbolts/CancellationTokenRegistration;
    :catchall_0
    move-exception v2

    .restart local v1    # "ctr":Lbolts/CancellationTokenRegistration;
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method throwIfCancellationRequested()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 162
    iget-boolean v1, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    if-nez v1, :cond_0

    .line 165
    monitor-exit v0

    .line 166
    return-void

    .line 163
    :cond_0
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 188
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->isCancellationRequested()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "%s@%s[cancellationRequested=%s]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregister(Lbolts/CancellationTokenRegistration;)V
    .locals 2
    .param p1, "registration"    # Lbolts/CancellationTokenRegistration;

    .line 169
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 171
    iget-object v1, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 172
    monitor-exit v0

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
