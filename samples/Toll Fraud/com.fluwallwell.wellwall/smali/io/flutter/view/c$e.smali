.class final enum Lio/flutter/view/c$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/view/c$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lio/flutter/view/c$e;

.field public static final enum c:Lio/flutter/view/c$e;

.field public static final enum d:Lio/flutter/view/c$e;

.field private static final synthetic e:[Lio/flutter/view/c$e;


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lio/flutter/view/c$e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ACCESSIBLE_NAVIGATION"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/view/c$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/c$e;->b:Lio/flutter/view/c$e;

    new-instance v0, Lio/flutter/view/c$e;

    const/4 v3, 0x2

    const-string v4, "INVERT_COLORS"

    invoke-direct {v0, v4, v2, v3}, Lio/flutter/view/c$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/c$e;->c:Lio/flutter/view/c$e;

    new-instance v0, Lio/flutter/view/c$e;

    const-string v4, "DISABLE_ANIMATIONS"

    const/4 v5, 0x4

    invoke-direct {v0, v4, v3, v5}, Lio/flutter/view/c$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/c$e;->d:Lio/flutter/view/c$e;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/flutter/view/c$e;

    sget-object v4, Lio/flutter/view/c$e;->b:Lio/flutter/view/c$e;

    aput-object v4, v0, v1

    sget-object v1, Lio/flutter/view/c$e;->c:Lio/flutter/view/c$e;

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/c$e;->d:Lio/flutter/view/c$e;

    aput-object v1, v0, v3

    sput-object v0, Lio/flutter/view/c$e;->e:[Lio/flutter/view/c$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/flutter/view/c$e;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/c$e;
    .locals 1

    const-class v0, Lio/flutter/view/c$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/view/c$e;

    return-object p0
.end method

.method public static values()[Lio/flutter/view/c$e;
    .locals 1

    sget-object v0, Lio/flutter/view/c$e;->e:[Lio/flutter/view/c$e;

    invoke-virtual {v0}, [Lio/flutter/view/c$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/view/c$e;

    return-object v0
.end method
