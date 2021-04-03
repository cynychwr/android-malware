.class Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/f;


# instance fields
.field private final a:[Landroidx/lifecycle/c;


# virtual methods
.method public a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V
    .locals 6

    new-instance v0, Landroidx/lifecycle/j;

    invoke-direct {v0}, Landroidx/lifecycle/j;-><init>()V

    iget-object v1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroidx/lifecycle/c;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-interface {v5, p1, p2, v3, v0}, Landroidx/lifecycle/c;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;ZLandroidx/lifecycle/j;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroidx/lifecycle/c;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const/4 v5, 0x1

    invoke-interface {v4, p1, p2, v5, v0}, Landroidx/lifecycle/c;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;ZLandroidx/lifecycle/j;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
