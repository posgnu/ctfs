.class final Lretrofit/DefaultCallAdapter;
.super Ljava/lang/Object;
.source "DefaultCallAdapter.java"

# interfaces
.implements Lretrofit/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/CallAdapter",
        "<",
        "Lretrofit/Call",
        "<*>;>;"
    }
.end annotation


# static fields
.field static final FACTORY:Lretrofit/CallAdapter$Factory;


# instance fields
.field private final responseType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lretrofit/DefaultCallAdapter$1;

    invoke-direct {v0}, Lretrofit/DefaultCallAdapter$1;-><init>()V

    sput-object v0, Lretrofit/DefaultCallAdapter;->FACTORY:Lretrofit/CallAdapter$Factory;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "responseType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lretrofit/DefaultCallAdapter;->responseType:Ljava/lang/reflect/Type;

    .line 42
    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit/Call;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lretrofit/DefaultCallAdapter;->adapt(Lretrofit/Call;)Lretrofit/Call;

    move-result-object v0

    return-object v0
.end method

.method public adapt(Lretrofit/Call;)Lretrofit/Call;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit/Call",
            "<TR;>;)",
            "Lretrofit/Call",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "call":Lretrofit/Call;, "Lretrofit/Call<TR;>;"
    return-object p1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lretrofit/DefaultCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
