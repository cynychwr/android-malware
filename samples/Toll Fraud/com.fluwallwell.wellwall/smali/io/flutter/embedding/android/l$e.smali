.class final enum Lio/flutter/embedding/android/l$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/android/l$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/flutter/embedding/android/l$e;

.field public static final enum b:Lio/flutter/embedding/android/l$e;

.field public static final enum c:Lio/flutter/embedding/android/l$e;

.field public static final enum d:Lio/flutter/embedding/android/l$e;

.field private static final synthetic e:[Lio/flutter/embedding/android/l$e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lio/flutter/embedding/android/l$e;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lio/flutter/embedding/android/l$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/l$e;->a:Lio/flutter/embedding/android/l$e;

    new-instance v0, Lio/flutter/embedding/android/l$e;

    const/4 v2, 0x1

    const-string v3, "LEFT"

    invoke-direct {v0, v3, v2}, Lio/flutter/embedding/android/l$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/l$e;->b:Lio/flutter/embedding/android/l$e;

    new-instance v0, Lio/flutter/embedding/android/l$e;

    const/4 v3, 0x2

    const-string v4, "RIGHT"

    invoke-direct {v0, v4, v3}, Lio/flutter/embedding/android/l$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/l$e;->c:Lio/flutter/embedding/android/l$e;

    new-instance v0, Lio/flutter/embedding/android/l$e;

    const/4 v4, 0x3

    const-string v5, "BOTH"

    invoke-direct {v0, v5, v4}, Lio/flutter/embedding/android/l$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/l$e;->d:Lio/flutter/embedding/android/l$e;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/flutter/embedding/android/l$e;

    sget-object v5, Lio/flutter/embedding/android/l$e;->a:Lio/flutter/embedding/android/l$e;

    aput-object v5, v0, v1

    sget-object v1, Lio/flutter/embedding/android/l$e;->b:Lio/flutter/embedding/android/l$e;

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/embedding/android/l$e;->c:Lio/flutter/embedding/android/l$e;

    aput-object v1, v0, v3

    sget-object v1, Lio/flutter/embedding/android/l$e;->d:Lio/flutter/embedding/android/l$e;

    aput-object v1, v0, v4

    sput-object v0, Lio/flutter/embedding/android/l$e;->e:[Lio/flutter/embedding/android/l$e;

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

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/l$e;
    .locals 1

    const-class v0, Lio/flutter/embedding/android/l$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/android/l$e;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/android/l$e;
    .locals 1

    sget-object v0, Lio/flutter/embedding/android/l$e;->e:[Lio/flutter/embedding/android/l$e;

    invoke-virtual {v0}, [Lio/flutter/embedding/android/l$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/android/l$e;

    return-object v0
.end method
