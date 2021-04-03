.class Landroidx/fragment/app/Fragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/f;


# instance fields
.field final synthetic a:Landroidx/fragment/app/a;


# virtual methods
.method public a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V
    .locals 0

    sget-object p1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/Fragment$2;->a:Landroidx/fragment/app/a;

    iget-object p1, p1, Landroidx/fragment/app/a;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_0
    return-void
.end method
