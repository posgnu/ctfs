.class final Lretrofit/DefaultCallAdapter$1;
.super Ljava/lang/Object;
.source "DefaultCallAdapter.java"

# interfaces
.implements Lretrofit/CallAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/DefaultCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit/Retrofit;)Lretrofit/CallAdapter;
    .locals 3
    .param p1, "returnType"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit/Retrofit;",
            ")",
            "Lretrofit/CallAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p1}, Lretrofit/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lretrofit/Call;

    if-eq v1, v2, :cond_0

    .line 31
    const/4 v1, 0x0

    .line 34
    :goto_0
    return-object v1

    .line 33
    :cond_0
    invoke-static {p1}, Lretrofit/Utils;->getCallResponseType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 34
    .local v0, "responseType":Ljava/lang/reflect/Type;
    new-instance v1, Lretrofit/DefaultCallAdapter;

    invoke-direct {v1, v0}, Lretrofit/DefaultCallAdapter;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method
