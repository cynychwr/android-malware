.class public final synthetic Lio/flutter/plugins/a/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic a:Lio/flutter/plugins/a/h;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/a/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/a/c;->a:Lio/flutter/plugins/a/h;

    iput-object p2, p0, Lio/flutter/plugins/a/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/flutter/plugins/a/c;->a:Lio/flutter/plugins/a/h;

    iget-object v1, p0, Lio/flutter/plugins/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/flutter/plugins/a/h;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
