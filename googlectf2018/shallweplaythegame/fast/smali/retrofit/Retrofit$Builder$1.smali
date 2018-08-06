.class Lretrofit/Retrofit$Builder$1;
.super Ljava/lang/Object;
.source "Retrofit.java"

# interfaces
.implements Lretrofit/BaseUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/Retrofit$Builder;->baseUrl(Lcom/squareup/okhttp/HttpUrl;)Lretrofit/Retrofit$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/Retrofit$Builder;

.field final synthetic val$baseUrl:Lcom/squareup/okhttp/HttpUrl;


# direct methods
.method constructor <init>(Lretrofit/Retrofit$Builder;Lcom/squareup/okhttp/HttpUrl;)V
    .locals 0
    .param p1, "this$0"    # Lretrofit/Retrofit$Builder;

    .prologue
    .line 312
    iput-object p1, p0, Lretrofit/Retrofit$Builder$1;->this$0:Lretrofit/Retrofit$Builder;

    iput-object p2, p0, Lretrofit/Retrofit$Builder$1;->val$baseUrl:Lcom/squareup/okhttp/HttpUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public url()Lcom/squareup/okhttp/HttpUrl;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lretrofit/Retrofit$Builder$1;->val$baseUrl:Lcom/squareup/okhttp/HttpUrl;

    return-object v0
.end method
