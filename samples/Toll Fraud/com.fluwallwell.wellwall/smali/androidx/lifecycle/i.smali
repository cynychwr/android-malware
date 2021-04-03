.class public Landroidx/lifecycle/i;
.super Landroidx/lifecycle/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/i$b;
    }
.end annotation


# instance fields
.field private a:La/a/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/a<",
            "Landroidx/lifecycle/g;",
            "Landroidx/lifecycle/i$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroidx/lifecycle/e$b;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/h;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/lifecycle/e$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/h;)V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/e;-><init>()V

    new-instance v0, La/a/a/a/a;

    invoke-direct {v0}, La/a/a/a/a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/i;->a:La/a/a/a/a;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/i;->d:I

    iput-boolean v0, p0, Landroidx/lifecycle/i;->e:Z

    iput-boolean v0, p0, Landroidx/lifecycle/i;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/i;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/i;->c:Ljava/lang/ref/WeakReference;

    sget-object p1, Landroidx/lifecycle/e$b;->b:Landroidx/lifecycle/e$b;

    iput-object p1, p0, Landroidx/lifecycle/i;->b:Landroidx/lifecycle/e$b;

    return-void
.end method

.method private static a(Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$a;
    .locals 3

    sget-object v0, Landroidx/lifecycle/i$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    return-object p0

    :cond_2
    sget-object p0, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    return-object p0

    :cond_3
    sget-object p0, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static a(Landroidx/lifecycle/e$b;Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$b;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private a(Landroidx/lifecycle/h;)V
    .locals 5

    iget-object v0, p0, Landroidx/lifecycle/i;->a:La/a/a/a/a;

    invoke-virtual {v0}, La/a/a/a/b;->a()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/lifecycle/i;->f:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/i$b;

    :goto_0
    iget-object v3, v2, Landroidx/lifecycle/i$b;->a:Landroidx/lifecycle/e$b;

    iget-object v4, p0, Landroidx/lifecycle/i;->b:Landroidx/lifecycle/e$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Landroidx/lifecycle/i;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/i;->a:La/a/a/a/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, La/a/a/a/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroidx/lifecycle/i$b;->a:Landroidx/lifecycle/e$b;

    invoke-static {v3}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$a;

    move-result-object v3

    invoke-static {v3}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/e$a;)Landroidx/lifecycle/e$b;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/e$b;)V

    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/i$b;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V

    invoke-direct {p0}, Landroidx/lifecycle/i;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static b(Landroidx/lifecycle/e$a;)Landroidx/lifecycle/e$b;
    .locals 3

    sget-object v0, Landroidx/lifecycle/i$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Landroidx/lifecycle/e$b;->a:Landroidx/lifecycle/e$b;

    return-object p0

    :pswitch_1
    sget-object p0, Landroidx/lifecycle/e$b;->e:Landroidx/lifecycle/e$b;

    return-object p0

    :pswitch_2
    sget-object p0, Landroidx/lifecycle/e$b;->d:Landroidx/lifecycle/e$b;

    return-object p0

    :pswitch_3
    sget-object p0, Landroidx/lifecycle/e$b;->c:Landroidx/lifecycle/e$b;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroidx/lifecycle/e$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/lifecycle/e$b;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/lifecycle/i;->b:Landroidx/lifecycle/e$b;

    iget-boolean p1, p0, Landroidx/lifecycle/i;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Landroidx/lifecycle/i;->d:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Landroidx/lifecycle/i;->e:Z

    invoke-direct {p0}, Landroidx/lifecycle/i;->d()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/i;->e:Z

    return-void

    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroidx/lifecycle/i;->f:Z

    return-void
.end method

.method private b(Landroidx/lifecycle/h;)V
    .locals 5

    iget-object v0, p0, Landroidx/lifecycle/i;->a:La/a/a/a/a;

    invoke-virtual {v0}, La/a/a/a/b;->c()La/a/a/a/b$d;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/lifecycle/i;->f:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/i$b;

    :goto_0
    iget-object v3, v2, Landroidx/lifecycle/i$b;->a:Landroidx/lifecycle/e$b;

    iget-object v4, p0, Landroidx/lifecycle/i;->b:Landroidx/lifecycle/e$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroidx/lifecycle/i;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/i;->a:La/a/a/a/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, La/a/a/a/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroidx/lifecycle/i$b;->a:Landroidx/lifecycle/e$b;

    invoke-direct {p0, v3}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/e$b;)V

    iget-object v3, v2, Landroidx/lifecycle/i$b;->a:Landroidx/lifecycle/e$b;

    invoke-static {v3}, Landroidx/lifecycle/i;->d(Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$a;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/i$b;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V

    invoke-direct {p0}, Landroidx/lifecycle/i;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b()Z
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/i;->a:La/a/a/a/a;

    invoke-virtual {v0}, La/a/a/a/b;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/i;->a:La/a/a/a/a;

    invoke-virtual {v0}, La/a/a/a/b;->b()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/i$b;

    iget-object v0, v0, Landroidx/lifecycle/i$b;->a:Landroidx/lifecycle/e$b;

    iget-object v2, p0, Landroidx/lifecycle/i;->a:La/a/a/a/a;

    invoke-virtual {v2}, La/a/a/a/b;->d()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/i$b;

    iget-object v2, v2, Landroidx/lifecycle/i$b;->a:Landroidx/lifecycle/e$b;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/lifecycle/e$b;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private c(Landroidx/lifecycle/e$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static d(Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$a;
    .locals 3

    sget-object v0, Landroidx/lifecycle/i$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    sget-object p0, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    return-object p0

    :cond_3
    sget-object p0, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    return-object p0

    :cond_4
    :goto_0
    sget-object p0, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    return-object p0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/i;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/h;

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroidx/lifecycle/i;->b()Z

    move-result v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/lifecycle/i;->f:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/lifecycle/i;->b:Landroidx/lifecycle/e$b;

    iget-object v2, p0, Landroidx/lifecycle/i;->a:La/a/a/a/a;

    invoke-virtual {v2}, La/a/a/a/b;->b()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/i$b;

    iget-object v2, v2, Landroidx/lifecycle/i$b;->a:Landroidx/lifecycle/e$b;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-direct {p0, v0}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/h;)V

    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/i;->a:La/a/a/a/a;

    invoke-virtual {v1}, La/a/a/a/b;->d()Ljava/util/Map$Entry;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/lifecycle/i;->f:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/i;->b:Landroidx/lifecycle/e$b;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/i$b;

    iget-object v1, v1, Landroidx/lifecycle/i$b;->a:Landroidx/lifecycle/e$b;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/h;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public a()Landroidx/lifecycle/e$b;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/i;->b:Landroidx/lifecycle/e$b;

    return-object v0
.end method

.method public a(Landroidx/lifecycle/e$a;)V
    .locals 0

    invoke-static {p1}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/e$a;)Landroidx/lifecycle/e$b;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/e$b;)V

    return-void
.end method

.method public a(Landroidx/lifecycle/g;)V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/i;->a:La/a/a/a/a;

    invoke-virtual {v0, p1}, La/a/a/a/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
