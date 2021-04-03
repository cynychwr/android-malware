.class Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "Override"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation

.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private animating:Z

.field private deferredInsetTypes:I

.field private lastWindowInsets:Landroid/view/WindowInsets;

.field private needsSave:Z

.field private overlayInsetTypes:I

.field private view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->animating:Z

    iput-boolean v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->needsSave:Z

    iput p2, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->overlayInsetTypes:I

    iput p3, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->deferredInsetTypes:I

    iput-object p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method install()V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iput-object p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->view:Landroid/view/View;

    iget-boolean v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->needsSave:Z

    if-eqz v0, :cond_0

    iput-object p2, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->lastWindowInsets:Landroid/view/WindowInsets;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->needsSave:Z

    :cond_0
    iget-boolean v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->animating:Z

    if-eqz v0, :cond_1

    sget-object p1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p1

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 1

    iget-boolean v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->animating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result p1

    iget v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->deferredInsetTypes:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->animating:Z

    iget-object p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->lastWindowInsets:Landroid/view/WindowInsets;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method

.method public onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result p1

    iget v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->deferredInsetTypes:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->animating:Z

    iput-boolean p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->needsSave:Z

    :cond_0
    return-void
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    iget-boolean v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->animating:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->needsSave:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v2}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v2

    iget v3, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->deferredInsetTypes:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    return-object p1

    :cond_3
    new-instance p2, Landroid/view/WindowInsets$Builder;

    iget-object v1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->lastWindowInsets:Landroid/view/WindowInsets;

    invoke-direct {p2, v1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    iget v1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->deferredInsetTypes:I

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    iget v2, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->overlayInsetTypes:I

    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v0, v0, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    iget v1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->deferredInsetTypes:I

    invoke-virtual {p2, v1, v0}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_4
    :goto_1
    return-object p1
.end method

.method remove()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method
