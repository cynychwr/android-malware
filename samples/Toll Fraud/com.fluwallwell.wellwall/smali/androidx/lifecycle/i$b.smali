.class Landroidx/lifecycle/i$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroidx/lifecycle/e$b;

.field b:Landroidx/lifecycle/f;


# virtual methods
.method a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V
    .locals 2

    invoke-static {p2}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/e$a;)Landroidx/lifecycle/e$b;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/i$b;->a:Landroidx/lifecycle/e$b;

    invoke-static {v1, v0}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$b;Landroidx/lifecycle/e$b;)Landroidx/lifecycle/e$b;

    move-result-object v1

    iput-object v1, p0, Landroidx/lifecycle/i$b;->a:Landroidx/lifecycle/e$b;

    iget-object v1, p0, Landroidx/lifecycle/i$b;->b:Landroidx/lifecycle/f;

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V

    iput-object v0, p0, Landroidx/lifecycle/i$b;->a:Landroidx/lifecycle/e$b;

    return-void
.end method
