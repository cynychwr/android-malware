.class final enum Lio/flutter/view/c$k;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/view/c$k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/flutter/view/c$k;

.field public static final enum b:Lio/flutter/view/c$k;

.field public static final enum c:Lio/flutter/view/c$k;

.field private static final synthetic d:[Lio/flutter/view/c$k;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/flutter/view/c$k;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lio/flutter/view/c$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/c$k;->a:Lio/flutter/view/c$k;

    new-instance v0, Lio/flutter/view/c$k;

    const/4 v2, 0x1

    const-string v3, "LTR"

    invoke-direct {v0, v3, v2}, Lio/flutter/view/c$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/c$k;->b:Lio/flutter/view/c$k;

    new-instance v0, Lio/flutter/view/c$k;

    const/4 v3, 0x2

    const-string v4, "RTL"

    invoke-direct {v0, v4, v3}, Lio/flutter/view/c$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/c$k;->c:Lio/flutter/view/c$k;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/flutter/view/c$k;

    sget-object v4, Lio/flutter/view/c$k;->a:Lio/flutter/view/c$k;

    aput-object v4, v0, v1

    sget-object v1, Lio/flutter/view/c$k;->b:Lio/flutter/view/c$k;

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/c$k;->c:Lio/flutter/view/c$k;

    aput-object v1, v0, v3

    sput-object v0, Lio/flutter/view/c$k;->d:[Lio/flutter/view/c$k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lio/flutter/view/c$k;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lio/flutter/view/c$k;->a:Lio/flutter/view/c$k;

    return-object p0

    :cond_0
    sget-object p0, Lio/flutter/view/c$k;->b:Lio/flutter/view/c$k;

    return-object p0

    :cond_1
    sget-object p0, Lio/flutter/view/c$k;->c:Lio/flutter/view/c$k;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/c$k;
    .locals 1

    const-class v0, Lio/flutter/view/c$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/view/c$k;

    return-object p0
.end method

.method public static values()[Lio/flutter/view/c$k;
    .locals 1

    sget-object v0, Lio/flutter/view/c$k;->d:[Lio/flutter/view/c$k;

    invoke-virtual {v0}, [Lio/flutter/view/c$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/view/c$k;

    return-object v0
.end method
