.class Lio/flutter/embedding/android/l$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/flutter/embedding/engine/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/android/l;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/h/a;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lio/flutter/embedding/android/l;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/l;Lio/flutter/embedding/engine/h/a;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/l$c;->c:Lio/flutter/embedding/android/l;

    iput-object p2, p0, Lio/flutter/embedding/android/l$c;->a:Lio/flutter/embedding/engine/h/a;

    iput-object p3, p0, Lio/flutter/embedding/android/l$c;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/android/l$c;->a:Lio/flutter/embedding/engine/h/a;

    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/h/a;->b(Lio/flutter/embedding/engine/h/b;)V

    iget-object v0, p0, Lio/flutter/embedding/android/l$c;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lio/flutter/embedding/android/l$c;->c:Lio/flutter/embedding/android/l;

    invoke-static {v0}, Lio/flutter/embedding/android/l;->b(Lio/flutter/embedding/android/l;)Lio/flutter/embedding/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/android/i;->b()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
