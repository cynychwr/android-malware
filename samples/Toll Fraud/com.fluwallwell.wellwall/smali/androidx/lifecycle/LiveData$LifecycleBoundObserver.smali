.class Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$a;
.source ""

# interfaces
.implements Landroidx/lifecycle/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.a;",
        "Landroidx/lifecycle/d;"
    }
.end annotation


# instance fields
.field final d:Landroidx/lifecycle/h;

.field final synthetic e:Landroidx/lifecycle/LiveData;


# virtual methods
.method public a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V
    .locals 0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->d:Landroidx/lifecycle/h;

    invoke-interface {p1}, Landroidx/lifecycle/h;->c()Landroidx/lifecycle/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/e;->a()Landroidx/lifecycle/e$b;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/e$b;->a:Landroidx/lifecycle/e$b;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$a;->a:Landroidx/lifecycle/k;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/k;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData$a;->a(Z)V

    return-void
.end method

.method a()Z
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->d:Landroidx/lifecycle/h;

    invoke-interface {v0}, Landroidx/lifecycle/h;->c()Landroidx/lifecycle/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/e;->a()Landroidx/lifecycle/e$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/e$b;->d:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/e$b;->a(Landroidx/lifecycle/e$b;)Z

    move-result v0

    return v0
.end method
