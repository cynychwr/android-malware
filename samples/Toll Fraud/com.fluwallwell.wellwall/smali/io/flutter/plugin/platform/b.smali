.class public final synthetic Lio/flutter/plugin/platform/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lio/flutter/plugin/platform/j;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/b;->a:Lio/flutter/plugin/platform/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/b;->a:Lio/flutter/plugin/platform/j;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/j;->h()V

    return-void
.end method
