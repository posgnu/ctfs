.class final Lretrofit/ExecutorCallAdapterFactory;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Lretrofit/CallAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;,
        Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;
    }
.end annotation


# instance fields
.field private final callbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lretrofit/ExecutorCallAdapterFactory;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lretrofit/ExecutorCallAdapterFactory;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lretrofit/ExecutorCallAdapterFactory;

    .prologue
    .line 23
    iget-object v0, p0, Lretrofit/ExecutorCallAdapterFactory;->callbackExecutor:Ljava/util/concurrent/Executor;

    return-object v0
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
            "<",
            "Lretrofit/Call",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p1}, Lretrofit/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lretrofit/Call;

    if-eq v1, v2, :cond_0

    .line 33
    const/4 v1, 0x0

    .line 36
    :goto_0
    return-object v1

    .line 35
    :cond_0
    invoke-static {p1}, Lretrofit/Utils;->getCallResponseType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 36
    .local v0, "responseType":Ljava/lang/reflect/Type;
    new-instance v1, Lretrofit/ExecutorCallAdapterFactory$1;

    invoke-direct {v1, p0, v0}, Lretrofit/ExecutorCallAdapterFactory$1;-><init>(Lretrofit/ExecutorCallAdapterFactory;Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method
