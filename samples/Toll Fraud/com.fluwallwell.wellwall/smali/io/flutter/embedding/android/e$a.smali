.class Lio/flutter/embedding/android/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/embedding/engine/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/android/e;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/e;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/e$a;->a:Lio/flutter/embedding/android/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/android/e$a;->a:Lio/flutter/embedding/android/e;

    invoke-static {v0}, Lio/flutter/embedding/android/e;->a(Lio/flutter/embedding/android/e;)Lio/flutter/embedding/android/e$b;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/android/e$b;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/android/e$a;->a:Lio/flutter/embedding/android/e;

    invoke-static {v0}, Lio/flutter/embedding/android/e;->a(Lio/flutter/embedding/android/e;)Lio/flutter/embedding/android/e$b;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/android/e$b;->b()V

    return-void
.end method
