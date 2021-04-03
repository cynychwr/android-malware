.class public Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final lifecycle:Landroidx/lifecycle/e;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;->lifecycle:Landroidx/lifecycle/e;

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/e;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;->lifecycle:Landroidx/lifecycle/e;

    return-object v0
.end method
