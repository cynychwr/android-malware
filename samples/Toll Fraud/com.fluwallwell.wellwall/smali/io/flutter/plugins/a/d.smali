.class public final synthetic Lio/flutter/plugins/a/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic a:Lio/flutter/plugins/a/h;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/a/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/a/d;->a:Lio/flutter/plugins/a/h;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugins/a/d;->a:Lio/flutter/plugins/a/h;

    invoke-virtual {v0}, Lio/flutter/plugins/a/h;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
