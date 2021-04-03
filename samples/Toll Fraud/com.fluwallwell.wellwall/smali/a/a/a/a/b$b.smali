.class La/a/a/a/b$b;
.super La/a/a/a/b$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "La/a/a/a/b$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(La/a/a/a/b$c;La/a/a/a/b$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/b$c<",
            "TK;TV;>;",
            "La/a/a/a/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, La/a/a/a/b$e;-><init>(La/a/a/a/b$c;La/a/a/a/b$c;)V

    return-void
.end method


# virtual methods
.method b(La/a/a/a/b$c;)La/a/a/a/b$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/b$c<",
            "TK;TV;>;)",
            "La/a/a/a/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p1, La/a/a/a/b$c;->c:La/a/a/a/b$c;

    return-object p1
.end method

.method c(La/a/a/a/b$c;)La/a/a/a/b$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/b$c<",
            "TK;TV;>;)",
            "La/a/a/a/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p1, La/a/a/a/b$c;->d:La/a/a/a/b$c;

    return-object p1
.end method
