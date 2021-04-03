.class Landroidx/activity/ComponentActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/f;


# instance fields
.field final synthetic a:Landroidx/activity/b;


# virtual methods
.method public a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V
    .locals 0

    sget-object p1, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Landroidx/activity/b;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/activity/ComponentActivity$3;->a:Landroidx/activity/b;

    invoke-virtual {p1}, Landroidx/activity/b;->a()Landroidx/lifecycle/l;

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
