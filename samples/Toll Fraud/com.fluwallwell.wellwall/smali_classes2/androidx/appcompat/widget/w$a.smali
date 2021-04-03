.class public Landroidx/appcompat/widget/w$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/w;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/appcompat/widget/w;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/w;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/w$a;->b:Landroidx/appcompat/widget/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/w$a;->b:Landroidx/appcompat/widget/w;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w;->getInternalPopup()Landroidx/appcompat/widget/w$f;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/w$f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/w$a;->b:Landroidx/appcompat/widget/w;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w;->b()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/w$a;->b:Landroidx/appcompat/widget/w;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method
