.class Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/d;


# instance fields
.field final synthetic a:Landroidx/savedstate/a;


# virtual methods
.method public a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V
    .locals 0

    sget-object p1, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Landroidx/savedstate/a;

    const/4 p2, 0x1

    :goto_0
    iput-boolean p2, p1, Landroidx/savedstate/a;->a:Z

    goto :goto_1

    :cond_0
    sget-object p1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Landroidx/savedstate/a;

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
